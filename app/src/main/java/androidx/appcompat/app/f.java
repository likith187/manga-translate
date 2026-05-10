package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.LocaleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.view.b;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a */
    static c f396a = new c(new d());

    /* JADX INFO: renamed from: b */
    private static int f397b = -100;

    /* JADX INFO: renamed from: c */
    private static z.f f398c = null;

    /* JADX INFO: renamed from: f */
    private static z.f f399f = null;

    /* JADX INFO: renamed from: h */
    private static Boolean f400h = null;

    /* JADX INFO: renamed from: i */
    private static boolean f401i = false;

    /* JADX INFO: renamed from: j */
    private static final androidx.collection.b f402j = new androidx.collection.b();

    /* JADX INFO: renamed from: k */
    private static final Object f403k = new Object();

    /* JADX INFO: renamed from: l */
    private static final Object f404l = new Object();

    static class a {
        static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    static class b {
        static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        static void b(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    static class c implements Executor {

        /* JADX INFO: renamed from: a */
        private final Object f405a = new Object();

        /* JADX INFO: renamed from: b */
        final Queue f406b = new ArrayDeque();

        /* JADX INFO: renamed from: c */
        final Executor f407c;

        /* JADX INFO: renamed from: f */
        Runnable f408f;

        c(Executor executor) {
            this.f407c = executor;
        }

        public /* synthetic */ void b(Runnable runnable) {
            try {
                runnable.run();
            } finally {
                d();
            }
        }

        protected void d() {
            synchronized (this.f405a) {
                try {
                    Runnable runnable = (Runnable) this.f406b.poll();
                    this.f408f = runnable;
                    if (runnable != null) {
                        this.f407c.execute(runnable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(final Runnable runnable) {
            synchronized (this.f405a) {
                try {
                    this.f406b.add(new Runnable() { // from class: androidx.appcompat.app.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f409a.b(runnable);
                        }
                    });
                    if (this.f408f == null) {
                        d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    static class d implements Executor {
        d() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Thread(runnable).start();
        }
    }

    f() {
    }

    static void D(f fVar) {
        synchronized (f403k) {
            E(fVar);
        }
    }

    private static void E(f fVar) {
        synchronized (f403k) {
            try {
                Iterator it = f402j.iterator();
                while (it.hasNext()) {
                    f fVar2 = (f) ((WeakReference) it.next()).get();
                    if (fVar2 == fVar || fVar2 == null) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static void P(Context context) {
        if (Build.VERSION.SDK_INT >= 33) {
            ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
            if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                if (i().e()) {
                    String strB = androidx.core.app.c.b(context);
                    Object systemService = context.getSystemService("locale");
                    if (systemService != null) {
                        b.b(systemService, a.a(strB));
                    }
                }
                context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
            }
        }
    }

    static void Q(final Context context) {
        if (t(context)) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (f401i) {
                    return;
                }
                f396a.execute(new Runnable() { // from class: androidx.appcompat.app.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.u(context);
                    }
                });
                return;
            }
            synchronized (f404l) {
                try {
                    z.f fVar = f398c;
                    if (fVar == null) {
                        if (f399f == null) {
                            f399f = z.f.b(androidx.core.app.c.b(context));
                        }
                        if (f399f.e()) {
                        } else {
                            f398c = f399f;
                        }
                    } else if (!fVar.equals(f399f)) {
                        z.f fVar2 = f398c;
                        f399f = fVar2;
                        androidx.core.app.c.a(context, fVar2.g());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    static void b(f fVar) {
        synchronized (f403k) {
            E(fVar);
            f402j.add(new WeakReference(fVar));
        }
    }

    public static f f(Activity activity, androidx.appcompat.app.d dVar) {
        return new AppCompatDelegateImpl(activity, dVar);
    }

    public static f g(Dialog dialog, androidx.appcompat.app.d dVar) {
        return new AppCompatDelegateImpl(dialog, dVar);
    }

    public static z.f i() {
        if (Build.VERSION.SDK_INT >= 33) {
            Object objN = n();
            if (objN != null) {
                return z.f.h(b.a(objN));
            }
        } else {
            z.f fVar = f398c;
            if (fVar != null) {
                return fVar;
            }
        }
        return z.f.d();
    }

    public static int k() {
        return f397b;
    }

    static Object n() {
        Context contextJ;
        Iterator it = f402j.iterator();
        while (it.hasNext()) {
            f fVar = (f) ((WeakReference) it.next()).get();
            if (fVar != null && (contextJ = fVar.j()) != null) {
                return contextJ.getSystemService("locale");
            }
        }
        return null;
    }

    static z.f p() {
        return f398c;
    }

    static boolean t(Context context) {
        if (f400h == null) {
            try {
                Bundle bundle = AppLocalesMetadataHolderService.a(context).metaData;
                if (bundle != null) {
                    f400h = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f400h = Boolean.FALSE;
            }
        }
        return f400h.booleanValue();
    }

    public static /* synthetic */ void u(Context context) {
        P(context);
        f401i = true;
    }

    public abstract void A(Bundle bundle);

    public abstract void B();

    public abstract void C();

    public abstract boolean F(int i10);

    public abstract void G(int i10);

    public abstract void H(View view);

    public abstract void I(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void J(int i10);

    public void K(OnBackInvokedDispatcher onBackInvokedDispatcher) {
    }

    public abstract void L(Toolbar toolbar);

    public abstract void M(int i10);

    public abstract void N(CharSequence charSequence);

    public abstract androidx.appcompat.view.b O(b.a aVar);

    public abstract void c(View view, ViewGroup.LayoutParams layoutParams);

    public void d(Context context) {
    }

    public Context e(Context context) {
        d(context);
        return context;
    }

    public abstract View h(int i10);

    public abstract Context j();

    public abstract androidx.appcompat.app.b l();

    public abstract int m();

    public abstract MenuInflater o();

    public abstract androidx.appcompat.app.a q();

    public abstract void r();

    public abstract void s();

    public abstract void v(Configuration configuration);

    public abstract void w(Bundle bundle);

    public abstract void x();

    public abstract void y(Bundle bundle);

    public abstract void z();
}
