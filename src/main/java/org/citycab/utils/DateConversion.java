package org.citycab.utils;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateConversion {
    public static Date stringToSqlDate(String dateString) {
        // Define the date format matching the input string (e.g., "yyyy-MM-dd")
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // Parse the string to java.util.Date
            java.util.Date utilDate = sdf.parse(dateString);

            // Convert java.util.Date to java.sql.Date
            return new Date(utilDate.getTime());

        } catch (ParseException e) {
            e.printStackTrace();
            throw new RuntimeException("Error parsing date string: " + dateString, e);
        }
    }

}
