package e4;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f11737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f11738b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f11739c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public b(a aVar) {
        this.f11737a = (View) aVar;
    }

    private void a() {
        ViewParent parent = this.f11737a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).j(this.f11737a);
        }
    }

    public int b() {
        return this.f11739c;
    }

    public boolean c() {
        return this.f11738b;
    }

    public void d(Bundle bundle) {
        this.f11738b = bundle.getBoolean("expanded", false);
        this.f11739c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f11738b) {
            a();
        }
    }

    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f11738b);
        bundle.putInt("expandedComponentIdHint", this.f11739c);
        return bundle;
    }

    public void f(int i10) {
        this.f11739c = i10;
    }
}
