package androidx.window.core;

import android.util.Log;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidLogger implements Logger {
    public static final AndroidLogger INSTANCE = new AndroidLogger();

    private AndroidLogger() {
    }

    @Override // androidx.window.core.Logger
    public void a(String tag, String message) {
        r.e(tag, "tag");
        r.e(message, "message");
        Log.d(tag, message);
    }
}
