package q7;

import android.content.Context;
import com.oplus.aiunit.core.utils.AuthUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a */
    private static final b f15355a = new b();

    public static long a(Context context, String str, long j10) {
        return f15355a.b(str, j10);
    }

    public static String b(Context context) {
        return f15355a.c("ssoid", AuthUtil.AUTH_STYLE_INNER);
    }

    public static String c(Context context, String str, String str2) {
        return f15355a.c(str, str2);
    }

    public static void d(Context context, String str, long j10) {
        f15355a.e(str, j10);
    }

    public static void e(Context context, String str, String str2) {
        f15355a.f(str, str2);
    }
}
