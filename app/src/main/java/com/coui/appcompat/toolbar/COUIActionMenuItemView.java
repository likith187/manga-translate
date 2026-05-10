package com.coui.appcompat.toolbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.m0;
import com.coui.appcompat.accessibilityutil.COUIAccessibilityUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.state.COUIMaskRippleDrawable;
import com.coui.appcompat.textviewcompatutil.COUITextViewCompatUtil;
import com.support.toolbar.R$dimen;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public class COUIActionMenuItemView extends ActionMenuItemView {
    private static final String TAG = "COUIActionMenuItemView";
    private int mIconMenuMinWidth;
    private boolean mIsText;
    private int mMarginEnd;
    private COUIMaskRippleDrawable mMaskRippleDrawable;
    private int mPaddingHorizontal;
    private int mPaddingVertical;
    private int mTextMenuItemMaxWidth;
    private int mTextPaddingHorizontal;
    private int mTextPaddingVertical;

    public COUIActionMenuItemView(Context context) {
        this(context, null);
    }

    private void configMenuIconBackground() {
        COUIMaskRippleDrawable cOUIMaskRippleDrawable = new COUIMaskRippleDrawable(getContext());
        this.mMaskRippleDrawable = cOUIMaskRippleDrawable;
        cOUIMaskRippleDrawable.setCircleRippleMask(COUIMaskRippleDrawable.getMaskRippleRadiusByType(getContext(), 0));
        setBackground(this.mMaskRippleDrawable);
        COUIDarkModeUtil.setForceDarkAllow(this, false);
    }

    private void setReflectField(Class cls, Object obj, String str, Object obj2) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
        } catch (Exception e10) {
            Log.e(TAG, "setReflectField error: " + e10.getMessage());
        }
    }

    @Override // androidx.appcompat.view.menu.ActionMenuItemView, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return COUIAccessibilityUtil.BUTTON_CLASS_NAME;
    }

    @Override // androidx.appcompat.view.menu.ActionMenuItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i10) {
        super.initialize(menuItemImpl, i10);
        this.mIsText = menuItemImpl.getIcon() == null;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.mIsText) {
            COUITextViewCompatUtil.setPressRippleDrawable(this);
            setMaxWidth(this.mTextMenuItemMaxWidth);
        } else {
            setReflectField(ActionMenuItemView.class, this, "mMinWidth", Integer.valueOf(this.mIconMenuMinWidth));
            configMenuIconBackground();
            int i11 = this.mPaddingHorizontal;
            int i12 = this.mPaddingVertical;
            setPadding(i11, i12, i11, i12);
        }
        boolean z10 = this.mIsText;
        layoutParams.height = z10 ? -2 : -1;
        if (!z10 && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginEnd(this.mMarginEnd);
        }
        setLayoutParams(layoutParams);
    }

    public boolean isTextMenuItem() {
        return this.mIsText;
    }

    @Override // android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
    }

    @Override // androidx.appcompat.view.menu.ActionMenuItemView, android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        MenuItemImpl itemData = getItemData();
        if (itemData == null || itemData.getIcon() == null) {
            return;
        }
        this.mMarginEnd = getContext().createConfigurationContext(configuration).getResources().getDimensionPixelSize(R$dimen.coui_action_menu_item_view_margin_end);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginEnd(this.mMarginEnd);
        }
        m0.a(this, null);
    }

    public void refresh() {
        COUIMaskRippleDrawable cOUIMaskRippleDrawable = this.mMaskRippleDrawable;
        if (cOUIMaskRippleDrawable != null) {
            cOUIMaskRippleDrawable.refresh(getContext());
        }
    }

    @Override // androidx.appcompat.view.menu.ActionMenuItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        super.setIcon(drawable);
        m0.a(this, null);
    }

    void setItemWithGap(boolean z10) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!this.mIsText && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            if (z10) {
                ((ViewGroup.MarginLayoutParams) layoutParams).setMarginEnd(this.mMarginEnd);
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).setMarginEnd(0);
            }
        }
        setLayoutParams(layoutParams);
    }

    @Override // androidx.appcompat.view.menu.ActionMenuItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m0.a(this, null);
    }

    public COUIActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIActionMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mPaddingHorizontal = context.getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_bg_padding_horizontal);
        this.mPaddingVertical = context.getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_bg_padding_vertical);
        this.mTextPaddingHorizontal = context.getResources().getDimensionPixelSize(R$dimen.coui_toolbar_text_menu_bg_padding_horizontal);
        this.mTextPaddingVertical = context.getResources().getDimensionPixelSize(R$dimen.coui_toolbar_text_menu_bg_padding_vertical);
        this.mMarginEnd = context.getResources().getDimensionPixelSize(R$dimen.coui_action_menu_item_view_margin_end);
        this.mIconMenuMinWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_action_menu_item_min_width);
        this.mTextMenuItemMaxWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_action_bar_text_menu_item_max_width);
    }
}
