package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

/* JADX INFO: loaded from: classes.dex */
public final class c extends MenuBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f9817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f9818b;

    public c(Context context, Class cls, int i10) {
        super(context);
        this.f9817a = cls;
        this.f9818b = i10;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    protected MenuItem addInternal(int i10, int i11, int i12, CharSequence charSequence) {
        if (size() + 1 <= this.f9818b) {
            stopDispatchingItemsChanged();
            MenuItem menuItemAddInternal = super.addInternal(i10, i11, i12, charSequence);
            if (menuItemAddInternal instanceof MenuItemImpl) {
                ((MenuItemImpl) menuItemAddInternal).setExclusiveCheckable(true);
            }
            startDispatchingItemsChanged();
            return menuItemAddInternal;
        }
        String simpleName = this.f9817a.getSimpleName();
        throw new IllegalArgumentException("Maximum number of items supported by " + simpleName + " is " + this.f9818b + ". Limit can be checked with " + simpleName + "#getMaxItemCount()");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.f9817a.getSimpleName() + " does not support submenus");
    }
}
