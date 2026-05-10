package r;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import androidx.core.app.k;
import java.io.File;
import t.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a */
    private static final Object f15383a = new Object();

    /* JADX INFO: renamed from: r.a$a */
    static class C0213a {
        static Drawable a(Context context, int i10) {
            return context.getDrawable(i10);
        }
    }

    static class b {
        static int a(Context context, int i10) {
            return context.getColor(i10);
        }

        static Object b(Context context, Class cls) {
            return context.getSystemService(cls);
        }
    }

    static class c {
        static Context a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }
    }

    public static int a(Context context, String str) {
        c0.c.d(str, "permission must be non-null");
        return (Build.VERSION.SDK_INT >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) ? context.checkPermission(str, Process.myPid(), Process.myUid()) : k.b(context).a() ? 0 : -1;
    }

    public static Context b(Context context) {
        return c.a(context);
    }

    public static int c(Context context, int i10) {
        return b.a(context, i10);
    }

    public static ColorStateList d(Context context, int i10) {
        return h.e(context.getResources(), i10, context.getTheme());
    }

    public static Drawable e(Context context, int i10) {
        return C0213a.a(context, i10);
    }

    public static File[] f(Context context) {
        return context.getExternalCacheDirs();
    }

    public static File[] g(Context context, String str) {
        return context.getExternalFilesDirs(str);
    }

    public static Object h(Context context, Class cls) {
        return b.b(context, cls);
    }

    public static boolean i(Context context, Intent[] intentArr, Bundle bundle) {
        context.startActivities(intentArr, bundle);
        return true;
    }

    public static void j(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, bundle);
    }
}
