package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.h0;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements MenuBuilder.ItemInvoker, MenuView, AdapterView.OnItemClickListener {
    private static final int[] TINT_ATTRS = {R.attr.background, R.attr.divider};
    private int mAnimations;
    private MenuBuilder mMenu;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return this.mAnimations;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.ItemInvoker
    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        invokeItem((MenuItemImpl) getAdapter().getItem(i10));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        h0 h0VarW = h0.w(context, attributeSet, TINT_ATTRS, i10, 0);
        if (h0VarW.s(0)) {
            setBackgroundDrawable(h0VarW.g(0));
        }
        if (h0VarW.s(1)) {
            setDivider(h0VarW.g(1));
        }
        h0VarW.y();
    }
}
