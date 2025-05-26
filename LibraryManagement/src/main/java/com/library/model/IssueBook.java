package com.library.model;

import java.sql.Date;

public class IssueBook {
  
    private int bookId;
    private String studentName;
    private Date issueDate;
    public IssueBook() {}

    public IssueBook(int bookId, String studentName, Date issueDate) {
        this.bookId = bookId;
        this.studentName = studentName;
        this.issueDate = issueDate;
    }
   
    // getters and setters here
 
    public int getBookId() { return bookId; }
    public void setBookId(int bookId) { this.bookId = bookId; }
    public String getStudentName() { return studentName; }
    public void setStudentName(String studentName) { this.studentName = studentName; }
    public Date getIssueDate() { return issueDate; }
    public void setIssueDate(Date issueDate) { this.issueDate = issueDate; }
  
}