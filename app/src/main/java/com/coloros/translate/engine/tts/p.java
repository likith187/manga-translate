package com.coloros.translate.engine.tts;

import android.content.Context;
import com.coloros.translate.engine.ITtsEngine;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class p {
    public static final p INSTANCE = new p();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static k f5278a;

    private p() {
    }

    public final ITtsEngine a(Context context, String type) {
        r.e(type, "type");
        c0.f7098a.d("TtsEngineImpl", "tts getEngine:" + type);
        if (!r.a(type, "aiunit_stream_tts")) {
            return null;
        }
        if (f5278a == null) {
            f5278a = new k(context);
        }
        return f5278a;
    }
}
