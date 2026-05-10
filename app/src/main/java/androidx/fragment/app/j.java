package androidx.fragment.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f2678a;

    private j(l lVar) {
        this.f2678a = lVar;
    }

    public static j b(l lVar) {
        return new j((l) c0.h.f(lVar, "callbacks == null"));
    }

    public void a(Fragment fragment) {
        l lVar = this.f2678a;
        lVar.f2684h.l(lVar, lVar, fragment);
    }

    public void c() {
        this.f2678a.f2684h.w();
    }

    public boolean d(MenuItem menuItem) {
        return this.f2678a.f2684h.z(menuItem);
    }

    public void e() {
        this.f2678a.f2684h.A();
    }

    public void f() {
        this.f2678a.f2684h.C();
    }

    public void g() {
        this.f2678a.f2684h.L();
    }

    public void h() {
        this.f2678a.f2684h.P();
    }

    public void i() {
        this.f2678a.f2684h.Q();
    }

    public void j() {
        this.f2678a.f2684h.S();
    }

    public boolean k() {
        return this.f2678a.f2684h.Z(true);
    }

    public FragmentManager l() {
        return this.f2678a.f2684h;
    }

    public void m() {
        this.f2678a.f2684h.Y0();
    }

    public View n(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2678a.f2684h.v0().onCreateView(view, str, context, attributeSet);
    }
}
