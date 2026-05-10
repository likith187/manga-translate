package r3;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f15430a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    public static boolean a(Context context, Throwable th) {
        try {
            com.google.android.gms.common.internal.k.g(context);
            com.google.android.gms.common.internal.k.g(th);
            return false;
        } catch (Exception e10) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e10);
            return false;
        }
    }
}
