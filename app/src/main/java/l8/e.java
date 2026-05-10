package l8;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a */
    private static final String f13647a = "l8.e";

    public static String a(Object obj) {
        try {
            return new com.google.gson.e().d().e().b().v(obj);
        } catch (Exception e10) {
            Log.w(f13647a, "toString failed!", e10);
            return "toString failed!";
        }
    }
}
