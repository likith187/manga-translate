package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.preference.SwitchPreferenceCompat;
import androidx.preference.l;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.couiswitch.COUISwitch;
import com.support.preference.R$attr;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$style;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUISwitchLoadingPreference extends SwitchPreferenceCompat implements COUICardSupportInterface, COUIRecyclerView.b {
    private CharSequence mAssignment;
    private int mAssignmentColor;
    View mCheckableView;
    private int mDividerDefaultHorizontalPadding;
    private boolean mIsEnableClickSpan;
    private boolean mIsSupportCardUse;
    private View mItemView;
    private final Listener mListener;
    private COUISwitch.OnLoadingStateChangedListener mOnLoadingStateChangedListener;
    private COUISwitch mSwitchView;
    private TextView mTitleView;

    private class Listener implements CompoundButton.OnCheckedChangeListener {
        private Listener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (COUISwitchLoadingPreference.this.callCustomChangeListener(Boolean.valueOf(z10))) {
                COUISwitchLoadingPreference.this.setChecked(z10);
            } else {
                compoundButton.setChecked(!z10);
            }
        }
    }

    public COUISwitchLoadingPreference(Context context) {
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

    public View getSwitch() {
        return this.mCheckableView;
    }

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public boolean isSupportCardUse() {
        return this.mIsSupportCardUse;
    }

    @Override // androidx.preference.SwitchPreferenceCompat, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        this.mItemView = lVar.itemView;
        View viewB = lVar.b(R$id.coui_preference);
        if (viewB != null) {
            viewB.setSoundEffectsEnabled(false);
            viewB.setHapticFeedbackEnabled(false);
        }
        View viewB2 = lVar.b(R$id.switchWidget);
        this.mCheckableView = viewB2;
        if (viewB2 instanceof COUISwitch) {
            COUISwitch cOUISwitch = (COUISwitch) viewB2;
            cOUISwitch.setOnCheckedChangeListener(null);
            cOUISwitch.setVerticalScrollBarEnabled(false);
            this.mSwitchView = cOUISwitch;
        }
        super.onBindViewHolder(lVar);
        View view = this.mCheckableView;
        if (view instanceof COUISwitch) {
            COUISwitch cOUISwitch2 = (COUISwitch) view;
            cOUISwitch2.setLoadingStyle(true);
            cOUISwitch2.setOnLoadingStateChangedListener(this.mOnLoadingStateChangedListener);
            cOUISwitch2.setOnCheckedChangeListener(this.mListener);
        }
        if (this.mIsEnableClickSpan) {
            COUIPreferenceUtils.setSummaryView(getContext(), lVar);
        }
        this.mTitleView = (TextView) lVar.b(R.id.title);
        View viewFindViewById = lVar.itemView.findViewById(R.id.icon);
        View viewB3 = lVar.b(R$id.img_layout);
        if (viewB3 != null) {
            if (viewFindViewById != null) {
                viewB3.setVisibility(viewFindViewById.getVisibility());
            } else {
                viewB3.setVisibility(8);
            }
        }
        COUIPreferenceUtils.bindAssignmentView(lVar, this.mAssignment, this.mAssignmentColor);
        COUICardListHelper.setItemCardBackground(lVar.itemView, COUICardListHelper.getPositionInGroup(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.TwoStatePreference, androidx.preference.Preference
    public void onClick() {
        COUISwitch cOUISwitch = this.mSwitchView;
        if (cOUISwitch != null) {
            cOUISwitch.setShouldPlaySound(true);
            this.mSwitchView.setTactileFeedbackEnabled(true);
            this.mSwitchView.startLoading();
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

    public void setIsEnableClickSpan(boolean z10) {
        this.mIsEnableClickSpan = z10;
    }

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public void setIsSupportCardUse(boolean z10) {
        this.mIsSupportCardUse = z10;
    }

    public void setOnLoadingStateChangedListener(COUISwitch.OnLoadingStateChangedListener onLoadingStateChangedListener) {
        this.mOnLoadingStateChangedListener = onLoadingStateChangedListener;
        View view = this.mCheckableView;
        if (view instanceof COUISwitch) {
            ((COUISwitch) view).setOnLoadingStateChangedListener(onLoadingStateChangedListener);
        }
    }

    public void startLoading() {
        View view = this.mCheckableView;
        if (view == null || !(view instanceof COUISwitch)) {
            return;
        }
        ((COUISwitch) view).startLoading();
    }

    public void stopLoading() {
        View view = this.mCheckableView;
        if (view == null || !(view instanceof COUISwitch)) {
            return;
        }
        ((COUISwitch) view).stopLoading();
    }

    public COUISwitchLoadingPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiSwitchLoadPreferenceStyle);
    }

    public COUISwitchLoadingPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_SwitchPreference_Loading);
    }

    public COUISwitchLoadingPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new Listener();
        this.mAssignmentColor = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreference, i10, 0);
        this.mIsEnableClickSpan = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiEnalbeClickSpan, false);
        this.mIsSupportCardUse = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_isSupportCardUse, true);
        this.mAssignment = typedArrayObtainStyledAttributes.getText(R$styleable.COUIPreference_couiAssignment);
        this.mAssignmentColor = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiAssignmentColor, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mDividerDefaultHorizontalPadding = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
    }
}
