package com.coloros.translate.engine.offline;

import android.content.res.Configuration;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final f INSTANCE = new f();

    private f() {
    }

    public final boolean a(Configuration configuration) {
        kotlin.jvm.internal.r.e(configuration, "configuration");
        float f10 = configuration.fontScale;
        com.coloros.translate.utils.c0.f7098a.d("FontSizeChecker", "[isFontSizeChanged] fontScale: " + f10);
        return f10 > 1.2f;
    }
}
