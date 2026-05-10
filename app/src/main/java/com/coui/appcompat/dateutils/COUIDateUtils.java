package com.coui.appcompat.dateutils;

import android.content.Context;
import android.text.format.DateUtils;
import com.support.appcompat.R$string;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class COUIDateUtils {
    public static String getYMDWDate(Context context, Date date) {
        return !isSimplifiedChinese(context) ? DateFormat.getDateInstance(0, Locale.getDefault()).format(date) : new SimpleDateFormat(context.getResources().getString(R$string.ymdw), Locale.getDefault()).format(date);
    }

    public static String getYMDWHMDate(Context context, Date date) {
        return !isSimplifiedChinese(context) ? DateFormat.getDateTimeInstance(0, 3, Locale.getDefault()).format(date) : new SimpleDateFormat(context.getResources().getString(R$string.ymdwhm), Locale.getDefault()).format(date);
    }

    public static String getYMDWsHMDate(Context context, Date date) {
        return !isSimplifiedChinese(context) ? DateUtils.formatDateTime(context, date.getTime(), 32791) : new SimpleDateFormat(context.getResources().getString(R$string.ymdwshm), Locale.getDefault()).format(date);
    }

    private static boolean isSimplifiedChinese(Context context) {
        String string = context.getResources().getConfiguration().locale.toString();
        return string != null && string.equalsIgnoreCase("zh_CN");
    }
}
