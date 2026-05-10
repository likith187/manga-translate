package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f479b;

    public interface a {
        boolean a(b bVar, Menu menu);

        void b(b bVar);

        boolean c(b bVar, MenuItem menuItem);

        boolean d(b bVar, Menu menu);
    }

    public abstract void a();

    public abstract View b();

    public abstract Menu c();

    public abstract MenuInflater d();

    public abstract CharSequence e();

    public Object f() {
        return this.f478a;
    }

    public abstract CharSequence g();

    public boolean h() {
        return this.f479b;
    }

    public abstract void i();

    public abstract boolean j();

    public abstract void k(View view);

    public abstract void l(int i10);

    public abstract void m(CharSequence charSequence);

    public void n(Object obj) {
        this.f478a = obj;
    }

    public abstract void o(int i10);

    public abstract void p(CharSequence charSequence);

    public void q(boolean z10) {
        this.f479b = z10;
    }
}
