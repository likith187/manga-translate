package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.TextView;
import androidx.preference.CheckBoxPreference;
import androidx.preference.l;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.support.appcompat.R$string;
import com.support.preference.R$attr;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$style;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIMarkPreference extends CheckBoxPreference implements COUICardSupportInterface, COUIRecyclerView.b {
    public static final int CIRCLE = 0;
    static final int DEFAULT_RADIUS = 14;
    public static final int HEAD_MARK = 1;
    public static final int ROUND = 1;
    public static final int TAIL_MARK = 0;
    private CharSequence mAssignment;
    private int mAssignmentColor;
    private int mDividerDefaultHorizontalPadding;
    private boolean mHasBorder;
    private int mIconStyle;
    private boolean mIsCustom;
    private boolean mIsEnableClickSpan;
    private boolean mIsSupportCardUse;
    private View mItemView;
    int mMarkStyle;
    private int mRadius;
    private boolean mShowDivider;
    private TextView mTitleView;

    public COUIMarkPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mMarkStyle = 0;
        this.mShowDivider = true;
        this.mAssignmentColor = 0;
        this.mIsCustom = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIMarkPreference, i10, i11);
        this.mMarkStyle = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIMarkPreference_couiMarkStyle, 0);
        this.mAssignment = typedArrayObtainStyledAttributes.getText(R$styleable.COUIMarkPreference_couiMarkAssignment);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreference, i10, i11);
        this.mShowDivider = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.COUIPreference_couiShowDivider, this.mShowDivider);
        this.mIsEnableClickSpan = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.COUIPreference_couiEnalbeClickSpan, false);
        this.mIsSupportCardUse = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.COUIPreference_isSupportCardUse, true);
        this.mIconStyle = typedArrayObtainStyledAttributes2.getInt(R$styleable.COUIPreference_couiIconStyle, 1);
        this.mHasBorder = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.COUIPreference_hasBorder, false);
        this.mRadius = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R$styleable.COUIPreference_preference_icon_radius, 14);
        this.mAssignmentColor = typedArrayObtainStyledAttributes2.getInt(R$styleable.COUIPreference_couiAssignmentColor, 0);
        typedArrayObtainStyledAttributes2.recycle();
        this.mDividerDefaultHorizontalPadding = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
        setChecked(true);
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public boolean drawDivider() {
        if (!(this.mItemView instanceof COUICardListSelectedItemLayout)) {
            return false;
        }
        int positionInGroup = COUICardListHelper.getPositionInGroup(this);
        return positionInGroup == 1 || positionInGroup == 2;
    }

    public CharSequence getAssignment() {
        return this.mAssignment;
    }

    public int getBorderRectRadius(int i10) {
        return (i10 == 1 || i10 == 2 || i10 != 3) ? 14 : 16;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public View getDividerEndAlignView() {
        return null;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public int getDividerEndInset() {
        return this.mDividerDefaultHorizontalPadding;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public View getDividerStartAlignView() {
        return this.mTitleView;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public int getDividerStartInset() {
        return this.mDividerDefaultHorizontalPadding;
    }

    public int getMarkStyle() {
        return this.mMarkStyle;
    }

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public boolean isSupportCardUse() {
        return this.mIsSupportCardUse;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.preference.CheckBoxPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        this.mItemView = lVar.itemView;
        final View viewB = lVar.b(R$id.coui_tail_mark);
        this.mItemView.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.coui.appcompat.preference.COUIMarkPreference.1
            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, COUIMarkPreference.this.getContext().getResources().getString(R$string.coui_accessibility_select)));
                KeyEvent.Callback callback = viewB;
                if ((callback instanceof Checkable) && ((Checkable) callback).isChecked()) {
                    accessibilityNodeInfo.setClickable(false);
                    accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                }
            }
        });
        if (viewB != 0 && (viewB instanceof Checkable)) {
            if (this.mMarkStyle == 0) {
                viewB.setVisibility(0);
                ((Checkable) viewB).setChecked(isChecked());
            } else {
                viewB.setVisibility(8);
            }
        }
        View viewB2 = lVar.b(R$id.coui_head_mark);
        if (viewB2 != 0 && (viewB2 instanceof Checkable)) {
            if (this.mMarkStyle == 1) {
                viewB2.setVisibility(0);
                ((Checkable) viewB2).setChecked(isChecked());
            } else {
                viewB2.setVisibility(8);
            }
        }
        COUIPreferenceUtils.setIconStyle(lVar, getContext(), this.mRadius, this.mHasBorder, this.mIconStyle, this.mIsCustom);
        this.mTitleView = (TextView) lVar.b(R.id.title);
        View viewB3 = lVar.b(R$id.img_layout);
        View viewB4 = lVar.b(R.id.icon);
        if (viewB3 != null) {
            if (viewB4 != null) {
                viewB3.setVisibility(viewB4.getVisibility());
            } else {
                viewB3.setVisibility(8);
            }
        }
        if (this.mIsEnableClickSpan) {
            COUIPreferenceUtils.setSummaryView(getContext(), lVar);
        }
        COUIPreferenceUtils.bindAssignmentView(lVar, this.mAssignment, this.mAssignmentColor);
        COUICardListHelper.setItemCardBackground(lVar.itemView, COUICardListHelper.getPositionInGroup(this));
    }

    public void setAssignment(CharSequence charSequence) {
        if (TextUtils.equals(this.mAssignment, charSequence)) {
            return;
        }
        this.mAssignment = charSequence;
        notifyChanged();
    }

    public void setAssignmentColor(int i10) {
        if (this.mAssignmentColor != i10) {
            this.mAssignmentColor = i10;
            notifyChanged();
        }
    }

    public void setBorderRectRadius(int i10) {
        if (this.mRadius != i10) {
            this.mRadius = i10;
            notifyChanged();
        }
    }

    public void setIsCustomIconRadius(boolean z10) {
        this.mIsCustom = z10;
    }

    public void setIsEnableClickSpan(boolean z10) {
        this.mIsEnableClickSpan = z10;
    }

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public void setIsSupportCardUse(boolean z10) {
        this.mIsSupportCardUse = z10;
    }

    public void setMarkStyle(int i10) {
        this.mMarkStyle = i10;
    }

    public COUIMarkPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_COUIMarkPreference);
    }

    public COUIMarkPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiMarkPreferenceStyle);
    }

    public COUIMarkPreference(Context context) {
        this(context, null);
    }
}
