package com.coloros.translate.screen.utils;

import android.content.Context;
import com.oplus.os.OplusBuild;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public static final v INSTANCE = new v();

    private v() {
    }

    public static final void a(Context context, String label, String text, int i10) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(label, "label");
        kotlin.jvm.internal.r.e(text, "text");
        if (!com.coloros.translate.widget.k.f7233c.a().e(context, label, text) || i10 == 0) {
            return;
        }
        u.d(i10, 0, 2, null);
    }

    public static final String b(String str) {
        return kotlin.jvm.internal.r.a(str, "zh") ? "。" : ". ";
    }

    public static final boolean c(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        return OplusBuild.getOplusOSVERSION() >= 34;
    }
}
