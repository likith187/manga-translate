package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import androidx.appcompat.R$style;

/* JADX INFO: loaded from: classes.dex */
public class d extends ContextWrapper {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Configuration f480f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Resources.Theme f482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Configuration f484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Resources f485e;

    public d(Context context, int i10) {
        super(context);
        this.f481a = i10;
    }

    private Resources b() {
        if (this.f485e == null) {
            Configuration configuration = this.f484d;
            if (configuration == null || e(configuration)) {
                this.f485e = super.getResources();
            } else {
                this.f485e = createConfigurationContext(this.f484d).getResources();
            }
        }
        return this.f485e;
    }

    private void d() {
        boolean z10 = this.f482b == null;
        if (z10) {
            this.f482b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f482b.setTo(theme);
            }
        }
        f(this.f482b, this.f481a, z10);
    }

    private static boolean e(Configuration configuration) {
        if (configuration == null) {
            return true;
        }
        if (f480f == null) {
            Configuration configuration2 = new Configuration();
            configuration2.fontScale = 0.0f;
            f480f = configuration2;
        }
        return configuration.equals(f480f);
    }

    public void a(Configuration configuration) {
        if (this.f485e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f484d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f484d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public int c() {
        return this.f481a;
    }

    protected void f(Resources.Theme theme, int i10, boolean z10) {
        theme.applyStyle(i10, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f483c == null) {
            this.f483c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f483c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f482b;
        if (theme != null) {
            return theme;
        }
        if (this.f481a == 0) {
            this.f481a = R$style.Theme_AppCompat_Light;
        }
        d();
        return this.f482b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        if (this.f481a != i10) {
            this.f481a = i10;
            d();
        }
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f482b = theme;
    }
}
