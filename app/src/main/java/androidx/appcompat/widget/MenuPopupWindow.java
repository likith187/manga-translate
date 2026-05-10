package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.transition.Transition;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import androidx.appcompat.view.menu.MenuAdapter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

/* JADX INFO: loaded from: classes.dex */
public class MenuPopupWindow extends ListPopupWindow implements y {
    private y J;

    public static class MenuDropDownListView extends v {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final int f749q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final int f750r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private y f751s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private MenuItem f752t;

        public MenuDropDownListView(Context context, boolean z10) {
            super(context, z10);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.f749q = 21;
                this.f750r = 22;
            } else {
                this.f749q = 22;
                this.f750r = 21;
            }
        }

        @Override // androidx.appcompat.widget.v
        public /* bridge */ /* synthetic */ int d(int i10, int i11, int i12, int i13, int i14) {
            return super.d(i10, i11, i12, i13, i14);
        }

        @Override // androidx.appcompat.widget.v
        public /* bridge */ /* synthetic */ boolean e(MotionEvent motionEvent, int i10) {
            return super.e(motionEvent, i10);
        }

        @Override // androidx.appcompat.widget.v, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.v, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.v, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.v, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.v, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            MenuAdapter menuAdapter;
            int headersCount;
            int iPointToPosition;
            int i10;
            if (this.f751s != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
                } else {
                    menuAdapter = (MenuAdapter) adapter;
                    headersCount = 0;
                }
                MenuItemImpl item = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i10 = iPointToPosition - headersCount) < 0 || i10 >= menuAdapter.getCount()) ? null : menuAdapter.getItem(i10);
                MenuItem menuItem = this.f752t;
                if (menuItem != item) {
                    MenuBuilder adapterMenu = menuAdapter.getAdapterMenu();
                    if (menuItem != null) {
                        this.f751s.onItemHoverExit(adapterMenu, menuItem);
                    }
                    this.f752t = item;
                    if (item != null) {
                        this.f751s.onItemHoverEnter(adapterMenu, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i10, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i10 == this.f749q) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i10 != this.f750r) {
                return super.onKeyDown(i10, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (MenuAdapter) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (MenuAdapter) adapter).getAdapterMenu().close(false);
            return true;
        }

        @Override // androidx.appcompat.widget.v, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(y yVar) {
            this.f751s = yVar;
        }

        @Override // androidx.appcompat.widget.v, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static class a {
        static void a(PopupWindow popupWindow, Transition transition) {
            popupWindow.setEnterTransition(transition);
        }

        static void b(PopupWindow popupWindow, Transition transition) {
            popupWindow.setExitTransition(transition);
        }
    }

    static class b {
        static void a(PopupWindow popupWindow, boolean z10) {
            popupWindow.setTouchModal(z10);
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    public void O(Object obj) {
        a.a(this.I, (Transition) obj);
    }

    public void P(Object obj) {
        a.b(this.I, (Transition) obj);
    }

    public void Q(y yVar) {
        this.J = yVar;
    }

    public void R(boolean z10) {
        b.a(this.I, z10);
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    v n(Context context, boolean z10) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z10);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }

    @Override // androidx.appcompat.widget.y
    public void onItemHoverEnter(MenuBuilder menuBuilder, MenuItem menuItem) {
        y yVar = this.J;
        if (yVar != null) {
            yVar.onItemHoverEnter(menuBuilder, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.y
    public void onItemHoverExit(MenuBuilder menuBuilder, MenuItem menuItem) {
        y yVar = this.J;
        if (yVar != null) {
            yVar.onItemHoverExit(menuBuilder, menuItem);
        }
    }
}
