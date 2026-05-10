package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import u0.b;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile a f3611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f3612e = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f3615c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Set f3614b = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map f3613a = new HashMap();

    a(Context context) {
        this.f3615c = context.getApplicationContext();
    }

    private Object d(Class cls, Set set) {
        Object objB;
        if (v0.a.c()) {
            try {
                v0.a.a(cls.getSimpleName());
            } catch (Throwable th) {
                v0.a.b();
                throw th;
            }
        }
        if (set.contains(cls)) {
            throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
        }
        if (this.f3613a.containsKey(cls)) {
            objB = this.f3613a.get(cls);
        } else {
            set.add(cls);
            try {
                u0.a aVar = (u0.a) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> listA = aVar.a();
                if (!listA.isEmpty()) {
                    for (Class cls2 : listA) {
                        if (!this.f3613a.containsKey(cls2)) {
                            d(cls2, set);
                        }
                    }
                }
                objB = aVar.b(this.f3615c);
                set.remove(cls);
                this.f3613a.put(cls, objB);
            } catch (Throwable th2) {
                throw new b(th2);
            }
        }
        v0.a.b();
        return objB;
    }

    public static a e(Context context) {
        if (f3611d == null) {
            synchronized (f3612e) {
                try {
                    if (f3611d == null) {
                        f3611d = new a(context);
                    }
                } finally {
                }
            }
        }
        return f3611d;
    }

    void a() {
        try {
            try {
                v0.a.a("Startup");
                b(this.f3615c.getPackageManager().getProviderInfo(new ComponentName(this.f3615c.getPackageName(), InitializationProvider.class.getName()), 128).metaData);
            } catch (PackageManager.NameNotFoundException e10) {
                throw new b(e10);
            }
        } finally {
            v0.a.b();
        }
    }

    void b(Bundle bundle) {
        String string = this.f3615c.getString(R$string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (u0.a.class.isAssignableFrom(cls)) {
                            this.f3614b.add(cls);
                        }
                    }
                }
                Iterator it = this.f3614b.iterator();
                while (it.hasNext()) {
                    d((Class) it.next(), hashSet);
                }
            } catch (ClassNotFoundException e10) {
                throw new b(e10);
            }
        }
    }

    Object c(Class cls) {
        Object objD;
        synchronized (f3612e) {
            try {
                objD = this.f3613a.get(cls);
                if (objD == null) {
                    objD = d(cls, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objD;
    }

    public Object f(Class cls) {
        return c(cls);
    }

    public boolean g(Class cls) {
        return this.f3614b.contains(cls);
    }
}
