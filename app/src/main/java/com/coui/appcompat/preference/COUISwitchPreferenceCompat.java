package com.coui.appcompat.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import androidx.preference.R$attr;
import androidx.preference.SwitchPreferenceCompat;
import androidx.preference.l;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.couiswitch.COUISwitch;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUISwitchPreferenceCompat extends SwitchPreferenceCompat implements COUIRecyclerView.b {
    private CharSequence mAssignment;
    private int mAssignmentColor;
    private int mDividerDefaultHorizontalPadding;
    private boolean mIsEnableClickSpan;
    private View mItemView;
    private final Listener mListener;
    private COUISwitch mSwitchView;

    private class Listener implements CompoundButton.OnCheckedChangeListener {
        private Listener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (COUISwitchPreferenceCompat.this.isChecked() == z10) {
                return;
            }
            if (COUISwitchPreferenceCompat.this.callCustomChangeListener(Boolean.valueOf(z10))) {
                COUISwitchPreferenceCompat.this.setChecked(z10);
            } else {
                compoundButton.setChecked(!z10);
            }
        }
    }

    public COUISwitchPreferenceCompat(Context context) {
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
        return this.mItemView;
    }

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public int getDividerStartInset() {
        return this.mDividerDefaultHorizontalPadding;
    }

    @Override // androidx.preference.SwitchPreferenceCompat, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        this.mItemView = lVar.itemView;
        View viewB = lVar.b(R$id.coui_preference);
        if (viewB != null) {
            viewB.setSoundEffectsEnabled(false);
        }
        View viewB2 = lVar.b(R$id.switchWidget);
        boolean z10 = viewB2 instanceof COUISwitch;
        if (z10) {
            COUISwitch cOUISwitch = (COUISwitch) viewB2;
            cOUISwitch.setOnCheckedChangeListener(null);
            cOUISwitch.setVerticalScrollBarEnabled(false);
            this.mSwitchView = cOUISwitch;
        }
        super.onBindViewHolder(lVar);
        if (z10) {
            ((COUISwitch) viewB2).setOnCheckedChangeListener(this.mListener);
        }
        if (this.mIsEnableClickSpan) {
            COUIPreferenceUtils.setSummaryView(getContext(), lVar);
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
        }
        super.onClick();
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

    public COUISwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchPreferenceCompatStyle);
    }

    public COUISwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public COUISwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.mListener = new Listener();
        this.mAssignmentColor = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreference, i10, 0);
        this.mIsEnableClickSpan = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiEnalbeClickSpan, false);
        this.mAssignment = typedArrayObtainStyledAttributes.getText(R$styleable.COUIPreference_couiAssignment);
        this.mAssignmentColor = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiAssignmentColor, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mDividerDefaultHorizontalPadding = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
    }
}
