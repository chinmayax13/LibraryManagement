package com.library.dao;

import com.library.model.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {

    public static boolean addBook(Book book) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO books (title, author, quantity) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, book.getTitle());
            ps.setString(2, book.getAuthor());
            ps.setInt(3, book.getQuantity());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static List<Book> getAllBooks() {
        List<Book> list = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection()) {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM books");
            while (rs.next()) {
                Book b = new Book();
                b.setId(rs.getInt("id"));
                b.setTitle(rs.getString("title"));
                b.setAuthor(rs.getString("author"));
                b.setQuantity(rs.getInt("quantity"));
                list.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static boolean issueBook(int id) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE books SET quantity = quantity - 1 WHERE id = ? AND quantity > 0";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean returnBook(int id) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE books SET quantity = quantity + 1 WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}