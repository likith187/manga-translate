package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.preference.CheckBoxPreference;
import androidx.preference.l;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.coui.appcompat.poplist.PreciseClickHelper;
import com.support.preference.R$attr;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$style;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUICheckBoxWithDividerPreference extends CheckBoxPreference implements COUICardSupportInterface, COUIRecyclerView.b {
    private CharSequence mAssignment;
    private int mAssignmentColor;
    private LinearLayout mCheckBoxLayout;
    private OnMainLayoutClickListener mClickListener;
    private int mDividerDefaultHorizontalPadding;
    private boolean mIsSupportCardUse;
    private View mItemView;
    private LinearLayout mMainLayout;
    private PreciseClickHelper mPreciseHelper;
    private PreciseClickHelper.OnPreciseClickListener mPreciseListener;
    private TextView mTitleView;

    public interface OnMainLayoutClickListener {
        void onMainLayoutClick();
    }

    public COUICheckBoxWithDividerPreference(Context context) {
        this(context, null);
    }

    private void initPreciseHelper() {
        if (this.mMainLayout == null || this.mPreciseListener == null) {
            return;
        }
        removePreciseClickListener();
        PreciseClickHelper preciseClickHelper = new PreciseClickHelper(this.mMainLayout, new PreciseClickHelper.OnPreciseClickListener() { // from class: com.coui.appcompat.preference.COUICheckBoxWithDividerPreference.3
            @Override // com.coui.appcompat.poplist.PreciseClickHelper.OnPreciseClickListener
            public void onClick(View view, int i10, int i11) {
                COUICheckBoxWithDividerPreference.this.mPreciseListener.onClick(view, i10, i11);
                if (COUICheckBoxWithDividerPreference.this.mMainLayout == null || COUICheckBoxWithDividerPreference.this.mClickListener == null) {
                    return;
                }
                COUICheckBoxWithDividerPreference.this.mClickListener.onMainLayoutClick();
            }
        });
        this.mPreciseHelper = preciseClickHelper;
        preciseClickHelper.setup();
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

    @Override // androidx.recyclerview.widget.COUIRecyclerView.b
    public /* bridge */ /* synthetic */ View getDividerEndAlignView() {
        return super.getDividerEndAlignView();
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

    public OnMainLayoutClickListener getOnMainLayoutClickListener() {
        return this.mClickListener;
    }

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public boolean isSupportCardUse() {
        return this.mIsSupportCardUse;
    }

    @Override // androidx.preference.CheckBoxPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        LinearLayout linearLayout = (LinearLayout) lVar.itemView.findViewById(R$id.main_layout);
        this.mMainLayout = linearLayout;
        View view = lVar.itemView;
        if ((view instanceof COUICardListSelectedItemLayout) && linearLayout != null) {
            ((COUICardListSelectedItemLayout) view).setMainLayoutToSetExtraPadding(linearLayout);
        }
        this.mItemView = lVar.itemView;
        View viewB = lVar.b(R.id.checkbox);
        View viewB2 = lVar.b(R.id.icon);
        View viewB3 = lVar.b(R$id.img_layout);
        if (viewB3 != null) {
            if (viewB2 != null) {
                viewB3.setVisibility(viewB2.getVisibility());
            } else {
                viewB3.setVisibility(8);
            }
        }
        if (viewB != null && (viewB instanceof COUICheckBox)) {
            ((COUICheckBox) viewB).setState(isChecked() ? 2 : 0);
        }
        this.mTitleView = (TextView) lVar.b(R.id.title);
        initPreciseHelper();
        LinearLayout linearLayout2 = this.mMainLayout;
        if (linearLayout2 != null) {
            if (this.mPreciseListener == null) {
                linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUICheckBoxWithDividerPreference.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (COUICheckBoxWithDividerPreference.this.mClickListener != null) {
                            COUICheckBoxWithDividerPreference.this.mClickListener.onMainLayoutClick();
                        }
                    }
                });
            }
            this.mMainLayout.setClickable(isSelectable());
        }
        LinearLayout linearLayout3 = (LinearLayout) lVar.itemView.findViewById(R$id.check_box_layout);
        this.mCheckBoxLayout = linearLayout3;
        if (linearLayout3 != null) {
            linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUICheckBoxWithDividerPreference.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    COUICheckBoxWithDividerPreference.super.onClick();
                }
            });
            this.mCheckBoxLayout.setClickable(isSelectable());
        }
        COUIPreferenceUtils.bindAssignmentView(lVar, this.mAssignment, this.mAssignmentColor);
        COUICardListHelper.setItemCardBackground(lVar.itemView, COUICardListHelper.getPositionInGroup(this));
    }

    public void removePreciseClickListener() {
        PreciseClickHelper preciseClickHelper = this.mPreciseHelper;
        if (preciseClickHelper != null) {
            preciseClickHelper.unSet();
            this.mPreciseHelper = null;
        }
        LinearLayout linearLayout = this.mMainLayout;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.preference.COUICheckBoxWithDividerPreference.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (COUICheckBoxWithDividerPreference.this.mClickListener != null) {
                        COUICheckBoxWithDividerPreference.this.mClickListener.onMainLayoutClick();
                    }
                }
            });
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

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public void setIsSupportCardUse(boolean z10) {
        this.mIsSupportCardUse = z10;
    }

    public void setOnMainLayoutListener(OnMainLayoutClickListener onMainLayoutClickListener) {
        this.mClickListener = onMainLayoutClickListener;
    }

    public void setOnPreciseClickListener(PreciseClickHelper.OnPreciseClickListener onPreciseClickListener) {
        this.mPreciseListener = onPreciseClickListener;
        initPreciseHelper();
    }

    public COUICheckBoxWithDividerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiCheckBoxWithDividerPreferenceStyle);
    }

    public COUICheckBoxWithDividerPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Preference_COUI_COUICheckBoxWithDividerPreference);
    }

    public COUICheckBoxWithDividerPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mAssignmentColor = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICheckBoxPreference, i10, i11);
        this.mAssignment = typedArrayObtainStyledAttributes.getText(R$styleable.COUICheckBoxPreference_couiCheckBoxAssignment);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreference, i10, i11);
        this.mIsSupportCardUse = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.COUIPreference_isSupportCardUse, true);
        this.mAssignmentColor = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiAssignmentColor, 0);
        typedArrayObtainStyledAttributes2.recycle();
        this.mDividerDefaultHorizontalPadding = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
    }
}
