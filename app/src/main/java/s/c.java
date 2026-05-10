package s;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutManager;
import android.os.Build;
import android.os.Bundle;
import androidx.appcompat.app.t;
import c0.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import s.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f15492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile List f15493b;

    public static int a(Context context) {
        h.e(context);
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getMaxShortcutCountPerActivity();
    }

    private static String b(List list) {
        Iterator it = list.iterator();
        int iB = -1;
        String strA = null;
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.b() > iB) {
                strA = aVar.a();
                iB = aVar.b();
            }
        }
        return strA;
    }

    private static List c(Context context) {
        Bundle bundle;
        String string;
        if (f15493b == null) {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("androidx.core.content.pm.SHORTCUT_LISTENER");
            intent.setPackage(context.getPackageName());
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 128).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && (bundle = activityInfo.metaData) != null && (string = bundle.getString("androidx.core.content.pm.shortcut_listener_impl")) != null) {
                    try {
                        t.a(Class.forName(string, false, c.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context));
                        arrayList.add(null);
                    } catch (Exception unused) {
                    }
                }
            }
            if (f15493b == null) {
                f15493b = arrayList;
            }
        }
        return f15493b;
    }

    private static b d(Context context) {
        if (f15492a == null) {
            try {
                f15492a = (b) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, c.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
            } catch (Exception unused) {
            }
            if (f15492a == null) {
                f15492a = new b.a();
            }
        }
        return f15492a;
    }

    public static boolean e(Context context, a aVar) {
        h.e(context);
        h.e(aVar);
        if (Build.VERSION.SDK_INT <= 32 && aVar.c(1)) {
            Iterator it = c(context).iterator();
            if (!it.hasNext()) {
                return true;
            }
            t.a(it.next());
            Collections.singletonList(aVar);
            throw null;
        }
        int iA = a(context);
        if (iA == 0) {
            return false;
        }
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).pushDynamicShortcut(aVar.d());
        b bVarD = d(context);
        try {
            List listB = bVarD.b();
            if (listB.size() >= iA) {
                bVarD.c(Arrays.asList(b(listB)));
            }
            bVarD.a(Arrays.asList(aVar));
            Iterator it2 = c(context).iterator();
            if (!it2.hasNext()) {
                g(context, aVar.a());
                return true;
            }
            t.a(it2.next());
            Collections.singletonList(aVar);
            throw null;
        } catch (Exception unused) {
            Iterator it3 = c(context).iterator();
            if (!it3.hasNext()) {
                g(context, aVar.a());
                return false;
            }
            t.a(it3.next());
            Collections.singletonList(aVar);
            throw null;
        } catch (Throwable th) {
            Iterator it4 = c(context).iterator();
            if (!it4.hasNext()) {
                g(context, aVar.a());
                throw th;
            }
            t.a(it4.next());
            Collections.singletonList(aVar);
            throw null;
        }
    }

    public static void f(Context context, List list) {
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeDynamicShortcuts(list);
        d(context).c(list);
        Iterator it = c(context).iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
    }

    public static void g(Context context, String str) {
        h.e(context);
        h.e(str);
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).reportShortcutUsed(str);
        Iterator it = c(context).iterator();
        if (it.hasNext()) {
            t.a(it.next());
            Collections.singletonList(str);
            throw null;
        }
    }
}
