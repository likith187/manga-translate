package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f494b;

    public static class a implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionMode.Callback f495a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Context f496b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList f497c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final androidx.collection.i f498d = new androidx.collection.i();

        public a(Context context, ActionMode.Callback callback) {
            this.f496b = context;
            this.f495a = callback;
        }

        private Menu f(Menu menu) {
            Menu menu2 = (Menu) this.f498d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            MenuWrapperICS menuWrapperICS = new MenuWrapperICS(this.f496b, (w.a) menu);
            this.f498d.put(menu, menuWrapperICS);
            return menuWrapperICS;
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(b bVar, Menu menu) {
            return this.f495a.onPrepareActionMode(e(bVar), f(menu));
        }

        @Override // androidx.appcompat.view.b.a
        public void b(b bVar) {
            this.f495a.onDestroyActionMode(e(bVar));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean c(b bVar, MenuItem menuItem) {
            return this.f495a.onActionItemClicked(e(bVar), new MenuItemWrapperICS(this.f496b, (w.b) menuItem));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean d(b bVar, Menu menu) {
            return this.f495a.onCreateActionMode(e(bVar), f(menu));
        }

        public ActionMode e(b bVar) {
            int size = this.f497c.size();
            for (int i10 = 0; i10 < size; i10++) {
                f fVar = (f) this.f497c.get(i10);
                if (fVar != null && fVar.f494b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f496b, bVar);
            this.f497c.add(fVar2);
            return fVar2;
        }
    }

    public f(Context context, b bVar) {
        this.f493a = context;
        this.f494b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f494b.a();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f494b.b();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuWrapperICS(this.f493a, (w.a) this.f494b.c());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f494b.d();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f494b.e();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f494b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f494b.g();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f494b.h();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f494b.i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f494b.j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f494b.k(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f494b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f494b.n(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f494b.p(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z10) {
        this.f494b.q(z10);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i10) {
        this.f494b.l(i10);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i10) {
        this.f494b.o(i10);
    }
}
