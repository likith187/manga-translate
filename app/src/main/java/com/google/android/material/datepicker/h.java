package com.google.android.material.datepicker;

import android.content.Context;
import com.google.android.material.R$string;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
abstract class h {
    static c0.d a(Long l10, Long l11) {
        return b(l10, l11, null);
    }

    static c0.d b(Long l10, Long l11, SimpleDateFormat simpleDateFormat) {
        if (l10 == null && l11 == null) {
            return c0.d.a(null, null);
        }
        if (l10 == null) {
            return c0.d.a(null, d(l11.longValue(), simpleDateFormat));
        }
        if (l11 == null) {
            return c0.d.a(d(l10.longValue(), simpleDateFormat), null);
        }
        Calendar calendarK = t.k();
        Calendar calendarM = t.m();
        calendarM.setTimeInMillis(l10.longValue());
        Calendar calendarM2 = t.m();
        calendarM2.setTimeInMillis(l11.longValue());
        if (simpleDateFormat != null) {
            return c0.d.a(simpleDateFormat.format(new Date(l10.longValue())), simpleDateFormat.format(new Date(l11.longValue())));
        }
        return calendarM.get(1) == calendarM2.get(1) ? calendarM.get(1) == calendarK.get(1) ? c0.d.a(g(l10.longValue(), Locale.getDefault()), g(l11.longValue(), Locale.getDefault())) : c0.d.a(g(l10.longValue(), Locale.getDefault()), n(l11.longValue(), Locale.getDefault())) : c0.d.a(n(l10.longValue(), Locale.getDefault()), n(l11.longValue(), Locale.getDefault()));
    }

    static String c(long j10) {
        return d(j10, null);
    }

    static String d(long j10, SimpleDateFormat simpleDateFormat) {
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j10)) : q(j10) ? f(j10) : m(j10);
    }

    static String e(Context context, long j10, boolean z10, boolean z11, boolean z12) {
        String strJ = j(j10);
        if (z10) {
            strJ = String.format(context.getString(R$string.mtrl_picker_today_description), strJ);
        }
        return z11 ? String.format(context.getString(R$string.mtrl_picker_start_date_description), strJ) : z12 ? String.format(context.getString(R$string.mtrl_picker_end_date_description), strJ) : strJ;
    }

    static String f(long j10) {
        return g(j10, Locale.getDefault());
    }

    static String g(long j10, Locale locale) {
        return t.b(locale).format(new Date(j10));
    }

    static String h(long j10) {
        return i(j10, Locale.getDefault());
    }

    static String i(long j10, Locale locale) {
        return t.h(locale).format(new Date(j10));
    }

    static String j(long j10) {
        return q(j10) ? h(j10) : o(j10);
    }

    static String k(Context context, int i10) {
        return t.k().get(1) == i10 ? String.format(context.getString(R$string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i10)) : String.format(context.getString(R$string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i10));
    }

    static String l(long j10) {
        return t.p(Locale.getDefault()).format(new Date(j10));
    }

    static String m(long j10) {
        return n(j10, Locale.getDefault());
    }

    static String n(long j10, Locale locale) {
        return t.o(locale).format(new Date(j10));
    }

    static String o(long j10) {
        return p(j10, Locale.getDefault());
    }

    static String p(long j10, Locale locale) {
        return t.q(locale).format(new Date(j10));
    }

    private static boolean q(long j10) {
        Calendar calendarK = t.k();
        Calendar calendarM = t.m();
        calendarM.setTimeInMillis(j10);
        return calendarK.get(1) == calendarM.get(1);
    }
}
