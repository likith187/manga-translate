package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.preference.R$attr;
import androidx.preference.SwitchPreference;
import androidx.preference.l;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.couiswitch.COUISwitch;
import com.coui.appcompat.reddot.COUIHintRedDot;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUISwitchPreference extends SwitchPreference implements COUICardSupportInterface, COUIRecyclerView.b {
    public static final int CIRCLE = 0;
    static final int DEFAULT_RADIUS = 14;
    public static final int ROUND = 1;
    private CharSequence mAssignment;
    private int mAssignmentColor;
    private int mDividerDefaultHorizontalPadding;
    private boolean mHasBorder;
    private boolean mHasRedDot;
    private int mIconStyle;
    private boolean mIsCustom;
    private boolean mIsEnableClickSpan;
    private boolean mIsSupportCardUse;
    private View mItemView;
    private final Listener mListener;
    private int mRadius;
    private int mRedDotDiameter;
    private int mRedDotMarginStart;
    private int mSwitchBarCheckedColor;
    private COUISwitch mSwitchView;
    private CharSequence mTitle;
    private TextView mTitleView;

    private class Listener implements CompoundButton.OnCheckedChangeListener {
        private Listener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (COUISwitchPreference.this.isChecked() == z10) {
                return;
            }
            if (COUISwitchPreference.this.callCustomChangeListener(Boolean.valueOf(z10))) {
                COUISwitchPreference.this.setChecked(z10);
            } else {
                compoundButton.setChecked(!z10);
            }
        }
    }

    public COUISwitchPreference(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean callCustomChangeListener(Object obj) {
        if (getOnPreferenceChangeListener() == null) {
            return true;
        }
        return getOnPreferenceChangeListener().a(this, obj);
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

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public boolean isSupportCardUse() {
        return this.mIsSupportCardUse;
    }

    @Override // androidx.preference.SwitchPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        this.mItemView = lVar.itemView;
        View viewB = lVar.b(R$id.coui_preference);
        if (viewB != null) {
            viewB.setSoundEffectsEnabled(false);
            viewB.setHapticFeedbackEnabled(false);
        }
        View viewB2 = lVar.b(R.id.switch_widget);
        View viewB3 = lVar.b(R$id.jump_icon_red_dot);
        if (viewB2 instanceof COUISwitch) {
            COUISwitch cOUISwitch = (COUISwitch) viewB2;
            cOUISwitch.setOnCheckedChangeListener(this.mListener);
            cOUISwitch.setVerticalScrollBarEnabled(false);
            this.mSwitchView = cOUISwitch;
            int i10 = this.mSwitchBarCheckedColor;
            if (i10 != -1) {
                cOUISwitch.setBarCheckedColor(i10);
            }
        }
        super.onBindViewHolder(lVar);
        if (this.mIsEnableClickSpan) {
            COUIPreferenceUtils.setSummaryView(getContext(), lVar);
        }
        COUIPreferenceUtils.setIconStyle(lVar, getContext(), this.mRadius, this.mHasBorder, this.mIconStyle, this.mIsCustom);
        View viewB4 = lVar.b(R$id.img_layout);
        View viewFindViewById = lVar.itemView.findViewById(R.id.icon);
        if (viewB4 != null) {
            if (viewFindViewById != null) {
                viewB4.setVisibility(viewFindViewById.getVisibility());
            } else {
                viewB4.setVisibility(8);
            }
        }
        TextView textView = (TextView) lVar.b(R.id.title);
        this.mTitleView = textView;
        textView.setText(this.mTitle);
        if (viewB3 != null) {
            if (this.mHasRedDot) {
                COUIHintRedDot cOUIHintRedDot = (COUIHintRedDot) viewB3;
                cOUIHintRedDot.setLaidOut();
                viewB3.setVisibility(0);
                cOUIHintRedDot.setPointMode(1);
            } else {
                viewB3.setVisibility(8);
            }
            viewB3.invalidate();
        }
        COUIPreferenceUtils.bindAssignmentView(lVar, this.mAssignment, this.mAssignmentColor);
        COUICardListHelper.setItemCardBackground(lVar.itemView, COUICardListHelper.getPositionInGroup(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.TwoStatePreference, androidx.preference.Preference
    public void onClick() {
        setPlaySound(true);
        setPerformFeedBack(true);
        super.onClick();
    }

    public void refresh() {
        COUISwitch cOUISwitch = this.mSwitchView;
        if (cOUISwitch != null) {
            cOUISwitch.refresh();
        }
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

    public void setHasRedDot(boolean z10) {
        if (this.mHasRedDot != z10) {
            this.mHasRedDot = z10;
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

    public void setPerformFeedBack(boolean z10) {
        COUISwitch cOUISwitch = this.mSwitchView;
        if (cOUISwitch != null) {
            cOUISwitch.setTactileFeedbackEnabled(z10);
        }
    }

    public void setPlaySound(boolean z10) {
        COUISwitch cOUISwitch = this.mSwitchView;
        if (cOUISwitch != null) {
            cOUISwitch.setShouldPlaySound(z10);
        }
    }

    public final void setSwitchBarCheckedColor(int i10) {
        this.mSwitchBarCheckedColor = i10;
    }

    @Override // androidx.preference.Preference
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mTitle = getTitle();
    }

    public COUISwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchPreferenceStyle);
    }

    public COUISwitchPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public COUISwitchPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new Listener();
        this.mAssignmentColor = 0;
        this.mIsCustom = false;
        this.mSwitchBarCheckedColor = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreference, i10, i11);
        this.mIsEnableClickSpan = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiEnalbeClickSpan, false);
        this.mAssignment = typedArrayObtainStyledAttributes.getText(R$styleable.COUIPreference_couiAssignment);
        this.mAssignmentColor = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiAssignmentColor, 0);
        this.mIsSupportCardUse = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_isSupportCardUse, true);
        this.mIconStyle = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiIconStyle, 1);
        this.mHasBorder = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_hasBorder, false);
        this.mRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIPreference_preference_icon_radius, 14);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.COUISwitchPreference, i10, i11);
        this.mHasRedDot = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.COUISwitchPreference_hasTitleRedDot, false);
        typedArrayObtainStyledAttributes2.recycle();
        this.mDividerDefaultHorizontalPadding = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
        this.mTitle = getTitle();
        this.mRedDotDiameter = context.getResources().getDimensionPixelOffset(com.support.reddot.R$dimen.coui_dot_diameter_small);
        this.mRedDotMarginStart = context.getResources().getDimensionPixelOffset(com.support.reddot.R$dimen.coui_switch_preference_dot_margin_start);
    }
}
