package com.coui.appcompat.panel;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.support.appcompat.R$attr;
import com.support.panel.R$dimen;
import com.support.panel.R$drawable;
import com.support.panel.R$style;
import com.support.panel.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIDraggableVerticalLinearLayout extends LinearLayout {
    private ImageView mAnimDragView;
    private Drawable mDragViewDrawable;
    private int mDragViewDrawableTintColor;
    private float mElevation;
    private boolean mHasShadowNinePatchDrawable;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private int mStyle;

    public COUIDraggableVerticalLinearLayout(Context context) {
        this(context, null);
    }

    private void initDragView(AttributeSet attributeSet, int i10, int i11) {
        setOrientation(1);
        this.mAnimDragView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) getResources().getDimension(R$dimen.coui_panel_drag_view_width), (int) getResources().getDimension(R$dimen.coui_panel_drag_view_height));
        layoutParams.gravity = 1;
        this.mAnimDragView.setLayoutParams(layoutParams);
        COUIDarkModeUtil.setForceDarkAllow(this.mAnimDragView, false);
        setDragViewByTypeArray(getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIDraggableVerticalLinearLayout, i10, i11));
        if (attributeSet != null) {
            int styleAttribute = attributeSet.getStyleAttribute();
            this.mStyle = styleAttribute;
            if (styleAttribute == 0) {
                this.mStyle = i10;
            }
        } else {
            this.mStyle = i10;
        }
        recordPaddingAndElevation();
        addView(this.mAnimDragView);
    }

    private void recordPaddingAndElevation() {
        this.mElevation = getElevation();
        this.mPaddingLeft = getPaddingLeft();
        this.mPaddingTop = getPaddingTop();
        this.mPaddingRight = getPaddingRight();
        this.mPaddingBottom = getPaddingBottom();
    }

    private void setDragViewByTypeArray(TypedArray typedArray) {
        if (typedArray != null) {
            this.mHasShadowNinePatchDrawable = typedArray.getBoolean(R$styleable.COUIDraggableVerticalLinearLayout_hasShadowNinePatchDrawable, false);
            int resourceId = typedArray.getResourceId(R$styleable.COUIDraggableVerticalLinearLayout_dragViewIcon, R$drawable.coui_panel_drag_view);
            int color = typedArray.getColor(R$styleable.COUIDraggableVerticalLinearLayout_dragViewTintColor, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorControls));
            typedArray.recycle();
            Drawable drawableB = e.a.b(getContext(), resourceId);
            if (drawableB != null) {
                drawableB.setTint(color);
                this.mAnimDragView.setImageDrawable(drawableB);
            }
            if (this.mHasShadowNinePatchDrawable) {
                setBackground(getContext().getDrawable(R$drawable.coui_panel_bg_with_shadow));
            } else {
                setBackground(getContext().getDrawable(R$drawable.coui_panel_bg_without_shadow));
            }
        }
    }

    public ImageView getDragView() {
        return this.mAnimDragView;
    }

    @Deprecated
    public boolean isHasShadowNinePatchDrawable() {
        return this.mHasShadowNinePatchDrawable;
    }

    public void refresh() {
        TypedArray typedArrayObtainStyledAttributes = null;
        if (this.mStyle != 0) {
            String resourceTypeName = getResources().getResourceTypeName(this.mStyle);
            if (TextUtils.equals(resourceTypeName, "attr")) {
                typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUIDraggableVerticalLinearLayout, this.mStyle, 0);
            } else if (TextUtils.equals(resourceTypeName, "style")) {
                typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUIDraggableVerticalLinearLayout, 0, this.mStyle);
            }
        }
        setDragViewByTypeArray(typedArrayObtainStyledAttributes);
        setBackground(getContext().getResources().getDrawable(R$drawable.coui_panel_bg_with_shadow));
    }

    public void setDragViewDrawable(Drawable drawable) {
        if (drawable != null) {
            this.mDragViewDrawable = drawable;
            this.mAnimDragView.setImageDrawable(drawable);
        }
    }

    public void setDragViewDrawableTintColor(int i10) {
        Drawable drawable = this.mDragViewDrawable;
        if (drawable == null || this.mDragViewDrawableTintColor == i10) {
            return;
        }
        this.mDragViewDrawableTintColor = i10;
        drawable.setTint(i10);
        this.mAnimDragView.setImageDrawable(this.mDragViewDrawable);
    }

    @Deprecated
    public void setHasShadowNinePatchDrawable(boolean z10) {
        this.mHasShadowNinePatchDrawable = z10;
        if (z10) {
            setBackground(getContext().getDrawable(R$drawable.coui_panel_bg_with_shadow));
            setElevation(0.0f);
        } else {
            setBackground(getContext().getDrawable(R$drawable.coui_panel_bg_without_shadow));
            setPadding(this.mPaddingLeft, this.mPaddingTop, this.mPaddingRight, this.mPaddingBottom);
            setElevation(this.mElevation);
        }
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        super.setOrientation(1);
    }

    public COUIDraggableVerticalLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.support.panel.R$attr.couiDraggableVerticalLinearLayoutStyle);
    }

    public COUIDraggableVerticalLinearLayout(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, COUIContextUtil.isCOUIDarkTheme(context) ? R$style.COUIDraggableVerticalLinearLayout_Dark : R$style.COUIDraggableVerticalLinearLayout);
    }

    public COUIDraggableVerticalLinearLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mHasShadowNinePatchDrawable = false;
        this.mElevation = 0.0f;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        initDragView(attributeSet, i10, i11);
    }
}
