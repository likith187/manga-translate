package com.coui.appcompat.poplist;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.PopupWindow;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.poplist.WindowSpacingControlHelper;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.support.appcompat.R$dimen;
import com.support.poplist.R$attr;
import com.support.poplist.R$color;
import com.support.poplist.R$drawable;
import com.support.poplist.R$style;

/* JADX INFO: loaded from: classes.dex */
public class COUIPopupWindow extends PopupWindow {
    private Context mContext;
    protected boolean mIsOutLineBackgroundInPopupWindow;
    private boolean mSetElevationInPopupwindow;
    protected WindowSpacingControlHelper mWindowSpacingControlHelper;

    public COUIPopupWindow(Context context) {
        this(context, null);
    }

    private void initPopupWindow(Context context) {
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R$attr.couiPopupWindowBackground});
        initPopupWindowBackground(context, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        setClippingEnabled(false);
        setElevation(0.0f);
        setExitTransition(null);
        setEnterTransition(null);
        setAnimationStyle(R$style.Animation_COUI_PopupListWindow);
    }

    protected void addSpacingControlUtil(Context context, int i10, WindowSpacingControlHelper.AnchorViewTypeEnum anchorViewTypeEnum) {
        if (context != null) {
            addSpacingControlUtil(context.getResources().getDimensionPixelSize(i10), anchorViewTypeEnum);
        }
    }

    protected int getAnchorViewSpacing(WindowSpacingControlHelper.AnchorViewTypeEnum anchorViewTypeEnum) {
        if (this.mWindowSpacingControlHelper.isUtilMapInit()) {
            return this.mWindowSpacingControlHelper.getAnchorViewSpacing(anchorViewTypeEnum);
        }
        return 0;
    }

    protected void initElevationInPopupwindow() {
        if (!this.mSetElevationInPopupwindow || getContentView() == null) {
            return;
        }
        setBackgroundDrawable(null);
        if (ShadowUtils.checkOPlusViewElevationSDK()) {
            ShadowUtils.setElevationToView(getContentView(), 3);
        } else {
            setElevation(this.mContext.getResources().getDimensionPixelSize(R$dimen.support_shadow_size_level_five));
            getContentView().setOutlineSpotShadowColor(r.a.c(this.mContext, R$color.coui_popup_outline_spot_shadow_color));
        }
    }

    protected void initOutlineRoundRectBackground() {
        if (!this.mIsOutLineBackgroundInPopupWindow || getContentView() == null) {
            return;
        }
        getContentView().setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.poplist.COUIPopupWindow.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), COUIContextUtil.getAttrDimens(COUIPopupWindow.this.getContentView().getContext(), com.support.appcompat.R$attr.couiRoundCornerM));
            }
        });
        getContentView().setClipToOutline(true);
    }

    protected void initPopupWindowBackground(Context context, TypedArray typedArray) {
        typedArray.getDrawable(0);
        setBackgroundDrawable(context.getResources().getDrawable(R$drawable.coui_free_bottom_alert_poplist_background));
    }

    @Override // android.widget.PopupWindow
    public void setContentView(View view) {
        super.setContentView(view);
        initOutlineRoundRectBackground();
        initElevationInPopupwindow();
    }

    public void setDismissTouchOutside(boolean z10) {
        if (z10) {
            setTouchable(true);
            setFocusable(true);
            setOutsideTouchable(true);
        } else {
            setFocusable(false);
            setOutsideTouchable(false);
        }
        update();
    }

    public void setElevationInPopupwindow(boolean z10) {
        this.mSetElevationInPopupwindow = z10;
    }

    public COUIPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R$attr.popupWindowStyle);
    }

    protected void addSpacingControlUtil(int i10, WindowSpacingControlHelper.AnchorViewTypeEnum anchorViewTypeEnum) {
        this.mWindowSpacingControlHelper.addAnchorViewSpacingMap(i10, anchorViewTypeEnum);
    }

    public COUIPopupWindow(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_COUI_PopupWindow);
    }

    protected int getAnchorViewSpacing(View view, WindowSpacingControlHelper.AnchorViewTypeEnum anchorViewTypeEnum) {
        if (this.mWindowSpacingControlHelper.isUtilMapInit()) {
            return this.mWindowSpacingControlHelper.getAnchorViewSpacing(view, anchorViewTypeEnum);
        }
        return 0;
    }

    public COUIPopupWindow(View view, int i10, int i11) {
        this(view, i10, i11, false);
    }

    public COUIPopupWindow(View view, int i10, int i11, boolean z10) {
        super(view, i10, i11, z10);
        this.mSetElevationInPopupwindow = false;
        this.mIsOutLineBackgroundInPopupWindow = true;
        this.mWindowSpacingControlHelper = new WindowSpacingControlHelper();
        initPopupWindow(view.getContext());
    }

    public COUIPopupWindow(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mSetElevationInPopupwindow = false;
        this.mIsOutLineBackgroundInPopupWindow = true;
        this.mWindowSpacingControlHelper = new WindowSpacingControlHelper();
        initPopupWindow(context);
    }
}
