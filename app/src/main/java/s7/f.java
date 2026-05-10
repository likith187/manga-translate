package s7;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f15575a = false;

    public static void a(String str, g gVar) {
        if (f15575a) {
            Log.d("OplusTrack-" + str, (String) gVar.get());
        }
    }

    public static void b(String str, g gVar) {
        Log.e("OplusTrack-" + str, (String) gVar.get());
    }

    public static void c(String str, g gVar) {
        if (f15575a) {
            Log.i("OplusTrack-" + str, (String) gVar.get());
        }
    }

    public static void d(boolean z10) {
        f15575a = z10;
    }

    public static void e(String str, g gVar) {
        if (f15575a) {
            Log.v("OplusTrack-" + str, (String) gVar.get());
        }
    }

    public static void f(String str, g gVar) {
        Log.w("OplusTrack-" + str, (String) gVar.get());
    }
}
