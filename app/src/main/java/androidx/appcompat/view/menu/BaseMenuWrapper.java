package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.i;
import w.b;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseMenuWrapper {
    final Context mContext;
    private i mMenuItems;
    private i mSubMenus;

    BaseMenuWrapper(Context context) {
        this.mContext = context;
    }

    final MenuItem getMenuItemWrapper(MenuItem menuItem) {
        if (!(menuItem instanceof b)) {
            return menuItem;
        }
        b bVar = (b) menuItem;
        if (this.mMenuItems == null) {
            this.mMenuItems = new i();
        }
        MenuItem menuItem2 = (MenuItem) this.mMenuItems.get(bVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS(this.mContext, bVar);
        this.mMenuItems.put(bVar, menuItemWrapperICS);
        return menuItemWrapperICS;
    }

    final SubMenu getSubMenuWrapper(SubMenu subMenu) {
        return subMenu;
    }

    final void internalClear() {
        i iVar = this.mMenuItems;
        if (iVar != null) {
            iVar.clear();
        }
        i iVar2 = this.mSubMenus;
        if (iVar2 != null) {
            iVar2.clear();
        }
    }

    final void internalRemoveGroup(int i10) {
        if (this.mMenuItems == null) {
            return;
        }
        int i11 = 0;
        while (i11 < this.mMenuItems.size()) {
            if (((b) this.mMenuItems.g(i11)).getGroupId() == i10) {
                this.mMenuItems.i(i11);
                i11--;
            }
            i11++;
        }
    }

    final void internalRemoveItem(int i10) {
        if (this.mMenuItems == null) {
            return;
        }
        for (int i11 = 0; i11 < this.mMenuItems.size(); i11++) {
            if (((b) this.mMenuItems.g(i11)).getItemId() == i10) {
                this.mMenuItems.i(i11);
                return;
            }
        }
    }
}
