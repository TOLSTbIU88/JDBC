package org.example;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.*;
import java.util.stream.Collectors;

public class JDBC {
    public static void main(String[] args) throws SQLException {

        String url = "jdbc:postregresql://localhost:5432/postgres";
        String user = "postgres";
        String password = "";
        try (Connection connection = DriverManager .getConnection(url,user,password);
            Statement statement = connection.createStatement();
        ){
            statement.execute(readSQL("prog.sql"));
        }

    }

    public static String readSQL(String file){
        InputStream stream = JDBC.class.getClassLoader().getResourceAsStream(file);
        return new BufferedReader(new InputStreamReader(stream).lines().collect(Collectors.joining("")));

    }
}