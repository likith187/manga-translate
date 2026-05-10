package com.coui.appcompat.material.bottomnavigation;

import android.content.Context;
import com.coui.appcompat.material.navigation.NavigationBarItemView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class BottomNavigationItemView extends NavigationBarItemView {
    public BottomNavigationItemView(Context context) {
        super(context);
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarItemView
    protected int getItemDefaultMarginResId() {
        return R$dimen.design_bottom_navigation_margin;
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarItemView
    protected int getItemLayoutResId() {
        return R$layout.design_bottom_navigation_item;
    }
}
