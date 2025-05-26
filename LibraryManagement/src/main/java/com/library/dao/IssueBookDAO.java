package com.library.dao;

import com.library.model.IssueBook;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class IssueBookDAO {
	
    public static boolean issueBook( IssueBook ib) {
        String sql = "INSERT INTO issuedbooks (book_id, student_name, issue_date) VALUES (?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, ib.getBookId());
            ps.setString(2, ib.getStudentName());
            ps.setDate(3, ib.getIssueDate());

            ps.executeUpdate();
            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static List<IssueBook> getAllIssuedBooks() {
        List<IssueBook> list = new ArrayList<>();
        String sql = "SELECT * FROM issuedbooks";

        try (Connection con = DBConnection.getConnection();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                IssueBook ib = new IssueBook();
                ib.setBookId(rs.getInt("book_id"));
                ib.setStudentName(rs.getString("student_name"));
                ib.setIssueDate(rs.getDate("issue_date"));
                list.add(ib);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
}