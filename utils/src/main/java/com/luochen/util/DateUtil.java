package com.luochen.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author luochen
 */
public final class DateUtil {
    public static String format(Date date, String pattern){
        if (date == null || "".equals(pattern.trim())) {
            return "";
        }
        pattern = pattern.trim();
        SimpleDateFormat sdf;
        try {
            sdf = new SimpleDateFormat(pattern);
        } catch (Exception e) {
            return "";
        }

        return sdf.format(date);
    }
}
