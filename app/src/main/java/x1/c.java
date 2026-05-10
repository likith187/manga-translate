package x1;

import android.content.Context;
import com.coloros.translate.engine.IRtasrEngine;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c INSTANCE = new c();

    private c() {
    }

    public final IRtasrEngine a(Context context, String str) {
        if (kotlin.jvm.internal.r.a(str, "long_rtasr_recorder_with_unit")) {
            return new g0(context, str);
        }
        if (kotlin.jvm.internal.r.a(str, "short_rtasr_recorder_with_unit")) {
            return new z0(context, str);
        }
        return null;
    }
}
