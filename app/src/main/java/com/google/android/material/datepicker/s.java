package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
class s {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final s f9545c = new s(null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Long f9546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimeZone f9547b;

    private s(Long l10, TimeZone timeZone) {
        this.f9546a = l10;
        this.f9547b = timeZone;
    }

    static s c() {
        return f9545c;
    }

    Calendar a() {
        return b(this.f9547b);
    }

    Calendar b(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l10 = this.f9546a;
        if (l10 != null) {
            calendar.setTimeInMillis(l10.longValue());
        }
        return calendar;
    }
}
