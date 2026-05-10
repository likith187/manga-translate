package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.preference.MultiSelectListPreference;
import androidx.preference.l;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.preference.R$dimen;
import com.support.preference.R$style;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIMultiSelectListPreference extends MultiSelectListPreference implements COUICardSupportInterface, COUIRecyclerView.b {
    private CharSequence mAssignment;
    private boolean mBlurBackground;
    private AnimLevel mBlurMinAnimLevel;
    Context mContext;
    private int mDividerDefaultHorizontalPadding;
    private boolean mIfFollowHand;
    private boolean mIsSupportCardUse;
    private View mItemView;
    Drawable mJumpRes;
    private Point mLastTouchPoint;
    private View mPreferenceView;
    CharSequence mStatusText1;
    private CharSequence[] mSummaries;
    private TextView mTitleView;

    public COUIMultiSelectListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastTouchPoint = new Point();
        this.mIfFollowHand = true;
        this.mBlurBackground = false;
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreference, 0, R$style.Preference_COUI_COUIWithPopupIcon);
        this.mIsSupportCardUse = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_isSupportCardUse, true);
        this.mAssignment = typedArrayObtainStyledAttributes.getText(R$styleable.COUIPreference_couiAssignment);
        this.mJumpRes = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIPreference_coui_jump_mark);
        this.mStatusText1 = typedArrayObtainStyledAttributes.getText(R$styleable.COUIPreference_coui_jump_status1);
        this.mIfFollowHand = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiIfFollowHand, true);
        this.mBlurBackground = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiDialogBlurBackground, false);
        this.mBlurMinAnimLevel = AnimLevel.valueOf(typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiBlurAnimLevel, UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN.getIntValue()));
        typedArrayObtainStyledAttributes.recycle();
        this.mDividerDefaultHorizontalPadding = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
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

    public AnimLevel getBlurMinAnimLevel() {
        return this.mBlurMinAnimLevel;
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

    public Drawable getJump() {
        return this.mJumpRes;
    }

    public Point getLastTouchPoint() {
        return this.mLastTouchPoint;
    }

    public View getPreferenceView() {
        return this.mPreferenceView;
    }

    public CharSequence getStatusText1() {
        return this.mStatusText1;
    }

    CharSequence[] getSummaries() {
        return this.mSummaries;
    }

    public boolean isBlurBackground() {
        return this.mBlurBackground;
    }

    public boolean isIfFollowHand() {
        return this.mIfFollowHand;
    }

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public boolean isSupportCardUse() {
        return this.mIsSupportCardUse;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        this.mItemView = lVar.itemView;
        COUIPreferenceUtils.bindView(lVar, this.mJumpRes, this.mStatusText1, getAssignment());
        COUICardListHelper.setItemCardBackground(lVar.itemView, COUICardListHelper.getPositionInGroup(this));
        this.mTitleView = (TextView) lVar.b(R.id.title);
        View view = lVar.itemView;
        this.mPreferenceView = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.preference.COUIMultiSelectListPreference.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() != 0) {
                    return false;
                }
                COUIMultiSelectListPreference.this.mLastTouchPoint.set((int) motionEvent.getX(), (int) motionEvent.getY());
                return false;
            }
        });
    }

    public void setAssignment(CharSequence charSequence) {
        if (TextUtils.equals(this.mAssignment, charSequence)) {
            return;
        }
        this.mAssignment = charSequence;
        notifyChanged();
    }

    public void setBlurBackground(boolean z10) {
        this.mBlurBackground = z10;
    }

    public void setBlurMinAnimLevel(AnimLevel animLevel) {
        this.mBlurMinAnimLevel = animLevel;
    }

    public void setIfFollowHand(boolean z10) {
        this.mIfFollowHand = z10;
    }

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public void setIsSupportCardUse(boolean z10) {
        this.mIsSupportCardUse = z10;
    }

    public void setJump(Drawable drawable) {
        if (this.mJumpRes != drawable) {
            this.mJumpRes = drawable;
            notifyChanged();
        }
    }

    public void setStatusText1(CharSequence charSequence) {
        if ((charSequence != null || this.mStatusText1 == null) && (charSequence == null || charSequence.equals(this.mStatusText1))) {
            return;
        }
        this.mStatusText1 = charSequence;
        notifyChanged();
    }

    public void setSummaries(CharSequence[] charSequenceArr) {
        this.mSummaries = charSequenceArr;
    }

    public void setJump(int i10) {
        setJump(this.mContext.getResources().getDrawable(i10));
    }

    public COUIMultiSelectListPreference(Context context) {
        super(context, null);
        this.mLastTouchPoint = new Point();
        this.mIfFollowHand = true;
        this.mBlurBackground = false;
    }
}
