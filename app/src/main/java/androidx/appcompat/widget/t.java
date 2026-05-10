package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.u0;

/* JADX INFO: loaded from: classes.dex */
public interface t {
    void a(Menu menu, MenuPresenter.Callback callback);

    boolean b();

    void c();

    void collapseActionView();

    boolean d();

    boolean e();

    boolean f();

    boolean g();

    Context getContext();

    CharSequence getTitle();

    void h();

    void i(MenuPresenter.Callback callback, MenuBuilder.Callback callback2);

    void j(int i10);

    void k(ScrollingTabContainerView scrollingTabContainerView);

    ViewGroup l();

    void m(boolean z10);

    boolean n();

    void o(int i10);

    int p();

    Menu q();

    void r(int i10);

    int s();

    void setIcon(int i10);

    void setIcon(Drawable drawable);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    u0 t(int i10, long j10);

    void u();

    void v();

    void w(boolean z10);
}
