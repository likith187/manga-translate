package com.coloros.translate.ui.simultaneous.main;

import java.text.DecimalFormat;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6663a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(int i10) {
            DecimalFormat decimalFormat = new DecimalFormat("00");
            int i11 = i10 / 3600;
            if (i11 <= 0) {
                return decimalFormat.format(Integer.valueOf(i10 / 60)) + ":" + decimalFormat.format(Integer.valueOf(i10 % 60));
            }
            int i12 = i10 % 3600;
            return decimalFormat.format(Integer.valueOf(i11)) + ":" + decimalFormat.format(Integer.valueOf(i12 / 60)) + ":" + decimalFormat.format(Integer.valueOf(i12 % 60));
        }

        private a() {
        }
    }
}
