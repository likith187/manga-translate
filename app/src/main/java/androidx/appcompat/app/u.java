package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.l0;
import androidx.core.view.m0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class u extends androidx.appcompat.app.a {

    /* JADX INFO: renamed from: a */
    final androidx.appcompat.widget.t f418a;

    /* JADX INFO: renamed from: b */
    final Window.Callback f419b;

    /* JADX INFO: renamed from: c */
    final AppCompatDelegateImpl.g f420c;

    /* JADX INFO: renamed from: d */
    boolean f421d;

    /* JADX INFO: renamed from: e */
    private boolean f422e;

    /* JADX INFO: renamed from: f */
    private boolean f423f;

    /* JADX INFO: renamed from: g */
    private ArrayList f424g = new ArrayList();

    /* JADX INFO: renamed from: h */
    private final Runnable f425h = new a();

    /* JADX INFO: renamed from: i */
    private final Toolbar.h f426i;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.x();
        }
    }

    class b implements Toolbar.h {
        b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.h
        public boolean onMenuItemClick(MenuItem menuItem) {
            return u.this.f419b.onMenuItemSelected(0, menuItem);
        }
    }

    private final class c implements MenuPresenter.Callback {

        /* JADX INFO: renamed from: a */
        private boolean f429a;

        c() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
            if (this.f429a) {
                return;
            }
            this.f429a = true;
            u.this.f418a.h();
            u.this.f419b.onPanelClosed(108, menuBuilder);
            this.f429a = false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            u.this.f419b.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    private final class d implements MenuBuilder.Callback {
        d() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
            if (u.this.f418a.b()) {
                u.this.f419b.onPanelClosed(108, menuBuilder);
            } else if (u.this.f419b.onPreparePanel(0, null, menuBuilder)) {
                u.this.f419b.onMenuOpened(108, menuBuilder);
            }
        }
    }

    private class e implements AppCompatDelegateImpl.g {
        e() {
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.g
        public boolean a(int i10) {
            if (i10 != 0) {
                return false;
            }
            u uVar = u.this;
            if (uVar.f421d) {
                return false;
            }
            uVar.f418a.c();
            u.this.f421d = true;
            return false;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.g
        public View onCreatePanelView(int i10) {
            if (i10 == 0) {
                return new View(u.this.f418a.getContext());
            }
            return null;
        }
    }

    u(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        b bVar = new b();
        this.f426i = bVar;
        c0.h.e(toolbar);
        l0 l0Var = new l0(toolbar, false);
        this.f418a = l0Var;
        this.f419b = (Window.Callback) c0.h.e(callback);
        l0Var.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(bVar);
        l0Var.setWindowTitle(charSequence);
        this.f420c = new e();
    }

    private Menu w() {
        if (!this.f422e) {
            this.f418a.i(new c(), new d());
            this.f422e = true;
        }
        return this.f418a.q();
    }

    @Override // androidx.appcompat.app.a
    public boolean g() {
        return this.f418a.e();
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        if (!this.f418a.n()) {
            return false;
        }
        this.f418a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z10) {
        if (z10 == this.f423f) {
            return;
        }
        this.f423f = z10;
        if (this.f424g.size() <= 0) {
            return;
        }
        t.a(this.f424g.get(0));
        throw null;
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f418a.p();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        return this.f418a.getContext();
    }

    @Override // androidx.appcompat.app.a
    public boolean l() {
        this.f418a.l().removeCallbacks(this.f425h);
        m0.a0(this.f418a.l(), this.f425h);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void m(Configuration configuration) {
        super.m(configuration);
    }

    @Override // androidx.appcompat.app.a
    void n() {
        this.f418a.l().removeCallbacks(this.f425h);
    }

    @Override // androidx.appcompat.app.a
    public boolean o(int i10, KeyEvent keyEvent) {
        Menu menuW = w();
        if (menuW == null) {
            return false;
        }
        menuW.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuW.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public boolean p(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            q();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean q() {
        return this.f418a.f();
    }

    @Override // androidx.appcompat.app.a
    public void r(boolean z10) {
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z10) {
        y(z10 ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void t(boolean z10) {
    }

    @Override // androidx.appcompat.app.a
    public void u(CharSequence charSequence) {
        this.f418a.setWindowTitle(charSequence);
    }

    void x() {
        Menu menuW = w();
        MenuBuilder menuBuilder = menuW instanceof MenuBuilder ? (MenuBuilder) menuW : null;
        if (menuBuilder != null) {
            menuBuilder.stopDispatchingItemsChanged();
        }
        try {
            menuW.clear();
            if (!this.f419b.onCreatePanelMenu(0, menuW) || !this.f419b.onPreparePanel(0, null, menuW)) {
                menuW.clear();
            }
            if (menuBuilder != null) {
                menuBuilder.startDispatchingItemsChanged();
            }
        } catch (Throwable th) {
            if (menuBuilder != null) {
                menuBuilder.startDispatchingItemsChanged();
            }
            throw th;
        }
    }

    public void y(int i10, int i11) {
        this.f418a.o((i10 & i11) | ((~i11) & this.f418a.p()));
    }
}
