package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class e extends b implements MenuBuilder.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f486c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ActionBarContextView f487f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b.a f488h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private WeakReference f489i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f490j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f491k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private MenuBuilder f492l;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z10) {
        this.f486c = context;
        this.f487f = actionBarContextView;
        this.f488h = aVar;
        MenuBuilder defaultShowAsAction = new MenuBuilder(actionBarContextView.getContext()).setDefaultShowAsAction(1);
        this.f492l = defaultShowAsAction;
        defaultShowAsAction.setCallback(this);
        this.f491k = z10;
    }

    @Override // androidx.appcompat.view.b
    public void a() {
        if (this.f490j) {
            return;
        }
        this.f490j = true;
        this.f488h.b(this);
    }

    @Override // androidx.appcompat.view.b
    public View b() {
        WeakReference weakReference = this.f489i;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.b
    public Menu c() {
        return this.f492l;
    }

    @Override // androidx.appcompat.view.b
    public MenuInflater d() {
        return new g(this.f487f.getContext());
    }

    @Override // androidx.appcompat.view.b
    public CharSequence e() {
        return this.f487f.getSubtitle();
    }

    @Override // androidx.appcompat.view.b
    public CharSequence g() {
        return this.f487f.getTitle();
    }

    @Override // androidx.appcompat.view.b
    public void i() {
        this.f488h.a(this, this.f492l);
    }

    @Override // androidx.appcompat.view.b
    public boolean j() {
        return this.f487f.j();
    }

    @Override // androidx.appcompat.view.b
    public void k(View view) {
        this.f487f.setCustomView(view);
        this.f489i = view != null ? new WeakReference(view) : null;
    }

    @Override // androidx.appcompat.view.b
    public void l(int i10) {
        m(this.f486c.getString(i10));
    }

    @Override // androidx.appcompat.view.b
    public void m(CharSequence charSequence) {
        this.f487f.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void o(int i10) {
        p(this.f486c.getString(i10));
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.f488h.c(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        i();
        this.f487f.l();
    }

    @Override // androidx.appcompat.view.b
    public void p(CharSequence charSequence) {
        this.f487f.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void q(boolean z10) {
        super.q(z10);
        this.f487f.setTitleOptional(z10);
    }
}
