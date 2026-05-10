package com.coui.appcompat.poplist;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.R$attr;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import com.coui.appcompat.poplist.PopupListItem;
import com.support.poplist.R$style;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class COUIPopupMenu {
    private final Context mContext;
    private final MenuBuilder mMenu;
    private OnMenuItemClickListener mMenuItemClickListener;
    private OnDismissListener mOnDismissListener;
    private COUIPopupListWindow mPopup;
    private HashMap<Integer, Integer> mRedDotMap;

    public interface OnDismissListener {
        void onDismiss();
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public COUIPopupMenu(Context context) {
        this(context, null);
    }

    public void dismiss() {
        this.mPopup.dismiss();
    }

    @Deprecated
    public void dismissImmediatly() {
        this.mPopup.superDismiss();
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public MenuInflater getMenuInflater() {
        return new MenuInflater(this.mContext);
    }

    public COUIPopupListWindow getPopup() {
        return this.mPopup;
    }

    public void inflate(int i10) {
        ArrayList<PopupListItem> arrayList;
        Integer num;
        getMenuInflater().inflate(i10, this.mMenu);
        if (this.mMenu.getNonActionItems().size() <= 0) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        PopupListItem.Builder builder = new PopupListItem.Builder();
        for (int i11 = 0; i11 < this.mMenu.getNonActionItems().size(); i11++) {
            MenuItemImpl menuItemImpl = this.mMenu.getNonActionItems().get(i11);
            if (menuItemImpl.hasSubMenu()) {
                arrayList = new ArrayList<>();
                SubMenu subMenu = menuItemImpl.getSubMenu();
                for (int i12 = 0; i12 < subMenu.size(); i12++) {
                    MenuItem item = subMenu.getItem(i12);
                    builder.reset().setIcon(item.getIcon()).setTitle(item.getTitle() != null ? item.getTitle().toString() : "").setIsChecked(item.isChecked()).setGroupId(item.getGroupId());
                    arrayList.add(builder.build());
                }
            } else {
                arrayList = null;
            }
            int i13 = -1;
            int iIntValue = (!this.mRedDotMap.containsKey(Integer.valueOf(menuItemImpl.getItemId())) || (num = this.mRedDotMap.get(Integer.valueOf(menuItemImpl.getItemId()))) == null) ? -1 : num.intValue();
            PopupListItem.Builder redDotAmount = builder.reset().setIcon(menuItemImpl.getIcon()).setTitle(menuItemImpl.getTitle().toString()).setIsChecked(menuItemImpl.isChecked()).setRedDotAmount(iIntValue);
            if (iIntValue != -1) {
                i13 = 0;
            }
            redDotAmount.setHintType(i13).setSubMenuItemList(arrayList).setGroupId(menuItemImpl.getGroupId());
            arrayList2.add(builder.build());
        }
        this.mPopup.setItemList(arrayList2);
    }

    public boolean isShowing() {
        COUIPopupListWindow cOUIPopupListWindow = this.mPopup;
        if (cOUIPopupListWindow != null) {
            return cOUIPopupListWindow.isShowing();
        }
        return false;
    }

    public void setAnchorView(View view) {
        this.mPopup.setAnchorView(view);
    }

    public void setMenuRedDot(int i10, int i11) {
        if (this.mPopup.getItemList().size() <= 0 || this.mMenu.findItem(i10) == null) {
            if (i11 == -1) {
                this.mRedDotMap.remove(Integer.valueOf(i10));
                return;
            } else {
                this.mRedDotMap.put(Integer.valueOf(i10), Integer.valueOf(i11));
                return;
            }
        }
        int iIndexOf = this.mMenu.getNonActionItems().indexOf(this.mMenu.findItem(i10));
        if (iIndexOf >= 0) {
            this.mPopup.getItemList().get(iIndexOf).setRedDotAmount(i11);
        }
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
        this.mPopup.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.coui.appcompat.poplist.COUIPopupMenu.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                if (COUIPopupMenu.this.mOnDismissListener != null) {
                    COUIPopupMenu.this.mOnDismissListener.onDismiss();
                }
            }
        });
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mMenuItemClickListener = onMenuItemClickListener;
        this.mMenu.setCallback(new MenuBuilder.Callback() { // from class: com.coui.appcompat.poplist.COUIPopupMenu.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                if (COUIPopupMenu.this.mMenuItemClickListener != null) {
                    return COUIPopupMenu.this.mMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }
        });
    }

    public void show() {
        this.mPopup.show();
    }

    public COUIPopupMenu(Context context, View view) {
        this(context, view, 0);
    }

    public void show(View view) {
        setAnchorView(view);
        show();
    }

    public COUIPopupMenu(Context context, View view, int i10) {
        this(context, view, i10, R$attr.popupMenuStyle, R$style.Widget_COUI_PopupMenu);
    }

    public COUIPopupMenu(Context context, View view, int i10, int i11, int i12) {
        this.mRedDotMap = new HashMap<>();
        this.mContext = context;
        this.mMenu = new MenuBuilder(context);
        COUIPopupListWindow cOUIPopupListWindow = new COUIPopupListWindow(context);
        this.mPopup = cOUIPopupListWindow;
        if (view != null) {
            cOUIPopupListWindow.setAnchorView(view);
        }
    }
}
