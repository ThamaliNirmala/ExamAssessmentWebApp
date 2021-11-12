package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
  
// This class can be used to initialize the database connection
public class DBConnectionUtilInstructor {
    public static Connection initializeDatabase()
        throws SQLException, ClassNotFoundException
    {
        // Initialize all the information regarding
        // Database Connection
        String dbDriver = ConstantsForInstructor.DB_DRIVER;
        String dbURL = ConstantsForInstructor.URL;
        // Database name to access
        String dbName = ConstantsForInstructor.DB_NAME;
        String dbUsername = ConstantsForInstructor.USER;
        String dbPassword = ConstantsForInstructor.PASSWORD;
  
        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL + dbName,
                                                     dbUsername, 
                                                     dbPassword);
        return con;
    }
}