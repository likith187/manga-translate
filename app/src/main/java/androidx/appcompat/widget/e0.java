package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class e0 extends ContextWrapper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f868c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ArrayList f869d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources.Theme f871b;

    private e0(Context context) {
        super(context);
        if (!n0.c()) {
            this.f870a = new g0(this, context.getResources());
            this.f871b = null;
            return;
        }
        n0 n0Var = new n0(this, context.getResources());
        this.f870a = n0Var;
        Resources.Theme themeNewTheme = n0Var.newTheme();
        this.f871b = themeNewTheme;
        themeNewTheme.setTo(context.getTheme());
    }

    private static boolean a(Context context) {
        if ((context instanceof e0) || (context.getResources() instanceof g0) || (context.getResources() instanceof n0)) {
            return false;
        }
        return n0.c();
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f868c) {
            try {
                ArrayList arrayList = f869d;
                if (arrayList == null) {
                    f869d = new ArrayList();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference weakReference = (WeakReference) f869d.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f869d.remove(size);
                        }
                    }
                    for (int size2 = f869d.size() - 1; size2 >= 0; size2--) {
                        WeakReference weakReference2 = (WeakReference) f869d.get(size2);
                        e0 e0Var = weakReference2 != null ? (e0) weakReference2.get() : null;
                        if (e0Var != null && e0Var.getBaseContext() == context) {
                            return e0Var;
                        }
                    }
                }
                e0 e0Var2 = new e0(context);
                f869d.add(new WeakReference(e0Var2));
                return e0Var2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f870a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f870a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f871b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        Resources.Theme theme = this.f871b;
        if (theme == null) {
            super.setTheme(i10);
        } else {
            theme.applyStyle(i10, true);
        }
    }
}
