package com.coloros.translate.ui.simultaneous.utils;

import java.text.DecimalFormat;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final String a(long j10) {
        StringBuilder sb = new StringBuilder();
        long j11 = 3600;
        int i10 = (int) (j10 / j11);
        long j12 = 60;
        int i11 = (int) ((j10 % j11) / j12);
        int i12 = (int) (j10 % j12);
        DecimalFormat decimalFormat = new DecimalFormat("00");
        if (i10 > 0) {
            sb.append(decimalFormat.format(Integer.valueOf(i10)) + " : ");
        }
        if (i11 > 0) {
            sb.append(decimalFormat.format(Integer.valueOf(i11)) + " : ");
        } else {
            sb.append(decimalFormat.format(0L) + " : ");
        }
        if (i12 > 0) {
            sb.append(decimalFormat.format(Integer.valueOf(i12)));
        } else {
            sb.append(decimalFormat.format(0L));
        }
        String string = sb.toString();
        r.d(string, "toString(...)");
        return string;
    }
}
