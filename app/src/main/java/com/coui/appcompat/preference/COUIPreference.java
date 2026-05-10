package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.R$attr;
import androidx.preference.l;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.coui.appcompat.cardlist.COUICardListHelper;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.imageview.COUIRoundImageView;
import com.coui.appcompat.poplist.PreciseClickHelper;
import com.coui.appcompat.reddot.COUIHintRedDot;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$styleable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class COUIPreference extends Preference implements COUICardSupportInterface, COUIRecyclerView.b {
    public static final int CIRCLE = 0;
    static final int DEFAULT_RADIUS = 14;
    static final int DEFAULT_SCALE = 3;
    public static final int FORCE_CLICK = 1;
    public static final int FORCE_UNCLICK = 2;
    static final int MAX_RADIUS = 36;
    static final int MIN_RADIUS = 14;
    public static final int NORMAL = 0;
    static final int NO_ICON_HEIGHT = 0;
    public static final int ROUND = 1;
    public static final int SUMMARY_LINE_DEFAULT = 0;
    public static final int SUMMARY_LINE_ONE = 1;
    public static final int SUMMARY_LINE_TWO = 2;
    private static final String TAG = "COUIPreference-";
    static final int ratio = 6;
    private COUIHintRedDot assignRedDot;
    private COUIRoundImageView assignmentIcon;
    private COUIHintRedDot endRedDot;
    private View iconRedDot;
    private Drawable mAssignIconRes;
    private int mAssignRedDotMode;
    private CharSequence mAssignment;
    private int mAssignmentColor;
    private int mClickStyle;
    private Context mContext;
    private boolean mCouiSetDefaultColor;
    private int mCouiSummaryLineLimit;
    private int mDividerDefaultHorizontalPadding;
    private int mEndRedDotMode;
    private int mEndRedDotNum;
    private boolean mHasBorder;
    private int mIconRedDotMode;
    private int mIconStyle;
    private boolean mIsBackgroundAnimationEnabled;
    private boolean mIsCustom;
    private boolean mIsEnableClickSpan;
    private boolean mIsSelected;
    private boolean mIsSupportCardUse;
    private View mItemView;
    Drawable mJumpRes;
    private PreciseClickHelper mPreciseHelper;
    protected PreciseClickHelper.OnPreciseClickListener mPreciseListener;
    private int mRadius;
    private boolean mShowDivider;
    CharSequence mStatusText1;
    private ColorStateList mSummaryTextColor;
    private TextView mSummaryView;
    private ColorStateList mTitleTextColor;
    private TextView mTitleView;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SummaryLineType {
    }

    public COUIPreference(Context context) {
        this(context, null);
    }

    private void initPreciseHelper() {
        if (this.mItemView == null || this.mPreciseListener == null) {
            return;
        }
        removePreciseClickListener();
        PreciseClickHelper preciseClickHelper = new PreciseClickHelper(this.mItemView, new PreciseClickHelper.OnPreciseClickListener() { // from class: com.coui.appcompat.preference.COUIPreference.1
            @Override // com.coui.appcompat.poplist.PreciseClickHelper.OnPreciseClickListener
            public void onClick(View view, int i10, int i11) {
                COUIPreference.this.mPreciseListener.onClick(view, i10, i11);
            }
        });
        this.mPreciseHelper = preciseClickHelper;
        preciseClickHelper.setup();
    }

    public void changeEndRedDotNumberWithAnim(int i10) {
        if (this.endRedDot != null) {
            this.mEndRedDotNum = i10;
            this.endRedDot.changePointNumber(i10);
            if (i10 > 0) {
                this.endRedDot.setPointNumber(i10);
            }
        }
    }

    public void dismissAssignRedDot() {
        if (this.assignRedDot == null || this.assignRedDot.getVisibility() != 0) {
            return;
        }
        this.assignRedDot.executeScaleAnim(false);
        notifyChanged();
    }

    public void dismissEndRedDot() {
        if (this.endRedDot == null || this.endRedDot.getVisibility() != 0) {
            return;
        }
        this.endRedDot.executeScaleAnim(false);
        notifyChanged();
    }

    public void dismissIconRedDot() {
        View view = this.iconRedDot;
        if ((view instanceof COUIHintRedDot) && view.getVisibility() == 0) {
            ((COUIHintRedDot) this.iconRedDot).executeScaleAnim(false);
            notifyChanged();
        }
    }

    public boolean drawDivider() {
        if (!this.mShowDivider) {
            return false;
        }
        if (!(this.mItemView instanceof COUICardListSelectedItemLayout)) {
            return true;
        }
        int positionInGroup = COUICardListHelper.getPositionInGroup(this);
        return positionInGroup == 1 || positionInGroup == 2;
    }

    public int getAssignRedDotMode() {
        return this.mAssignRedDotMode;
    }

    public CharSequence getAssignment() {
        return this.mAssignment;
    }

    public int getBorderRectRadius(int i10) {
        return (i10 == 1 || i10 == 2 || i10 != 3) ? 14 : 16;
    }

    public int getClickStyle() {
        return this.mClickStyle;
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

    public int getEndRedDotMode() {
        return this.mEndRedDotMode;
    }

    public int getEndRedDotNum() {
        return this.mEndRedDotNum;
    }

    public int getIconRedDotMode() {
        return this.mIconRedDotMode;
    }

    public int getIconStyle() {
        return this.mIconStyle;
    }

    public boolean getIsSelected() {
        return this.mIsSelected;
    }

    public CharSequence getStatusText1() {
        return this.mStatusText1;
    }

    public boolean isShowDivider() {
        return this.mShowDivider;
    }

    @Override // com.coui.appcompat.preference.COUICardSupportInterface
    public boolean isSupportCardUse() {
        return this.mIsSupportCardUse;
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        COUICardListHelper.setItemCardBackground(lVar.itemView, COUICardListHelper.getPositionInGroup(this));
        View view = lVar.itemView;
        if (view instanceof COUICardListSelectedItemLayout) {
            ((COUICardListSelectedItemLayout) view).consumeDispatchingEventForState(false);
        }
        View viewB = lVar.b(R$id.coui_preference);
        if (viewB != null) {
            int i10 = this.mClickStyle;
            if (i10 == 1) {
                viewB.setClickable(false);
            } else if (i10 == 2) {
                viewB.setClickable(true);
            }
        }
        this.mItemView = lVar.itemView;
        initPreciseHelper();
        View view2 = this.mItemView;
        if (view2 != null) {
            if (view2 instanceof ListSelectedItemLayout) {
                ((ListSelectedItemLayout) view2).setBackgroundAnimationEnabled(this.mIsBackgroundAnimationEnabled);
            }
            View view3 = this.mItemView;
            if (view3 instanceof COUICardListSelectedItemLayout) {
                ((COUICardListSelectedItemLayout) view3).setIsSelected(this.mIsSelected);
            }
        }
        if (this.mAssignmentColor == 0) {
            COUIPreferenceUtils.bindView(lVar, this.mJumpRes, this.mStatusText1, getAssignment());
        } else {
            COUIPreferenceUtils.bindView(lVar, this.mJumpRes, this.mStatusText1, getAssignment(), this.mAssignmentColor);
        }
        COUIPreferenceUtils.setTitleViewColor(getContext(), lVar, this.mTitleTextColor);
        COUIPreferenceUtils.setIconStyle(lVar, getContext(), this.mRadius, this.mHasBorder, this.mIconStyle, this.mIsCustom);
        COUIPreferenceUtils.setSummaryViewColor(lVar, this.mSummaryTextColor);
        if (this.mIsEnableClickSpan) {
            COUIPreferenceUtils.setSummaryView(getContext(), lVar);
        }
        this.mTitleView = (TextView) lVar.b(R.id.title);
        TextView textView = (TextView) lVar.b(R.id.summary);
        this.mSummaryView = textView;
        if (textView != null) {
            int i11 = this.mCouiSummaryLineLimit;
            if (i11 == 0) {
                textView.setMaxLines(Integer.MAX_VALUE);
                this.mSummaryView.setEllipsize(null);
            } else {
                textView.setMaxLines(i11);
                this.mSummaryView.setEllipsize(TextUtils.TruncateAt.END);
            }
        }
        this.iconRedDot = lVar.b(R$id.img_red_dot);
        this.endRedDot = (COUIHintRedDot) lVar.b(R$id.jump_icon_red_dot);
        this.assignRedDot = (COUIHintRedDot) lVar.b(R$id.assignment_red_dot);
        COUIRoundImageView cOUIRoundImageView = (COUIRoundImageView) lVar.b(R$id.assignment_icon);
        this.assignmentIcon = cOUIRoundImageView;
        if (cOUIRoundImageView != null) {
            Drawable drawable = this.mAssignIconRes;
            if (drawable != null) {
                cOUIRoundImageView.setImageDrawable(drawable);
                this.assignmentIcon.setVisibility(0);
            } else {
                cOUIRoundImageView.setVisibility(8);
            }
        }
        View view4 = this.iconRedDot;
        if (view4 instanceof COUIHintRedDot) {
            if (this.mIconRedDotMode != 0) {
                ((COUIHintRedDot) view4).setLaidOut();
                this.iconRedDot.setVisibility(0);
                ((COUIHintRedDot) this.iconRedDot).setPointMode(this.mIconRedDotMode);
                this.iconRedDot.invalidate();
            } else {
                view4.setVisibility(8);
            }
        }
        if (this.endRedDot != null) {
            if (this.mEndRedDotMode != 0) {
                this.endRedDot.setLaidOut();
                this.endRedDot.setVisibility(0);
                this.endRedDot.setPointMode(this.mEndRedDotMode);
                this.endRedDot.setPointNumber(this.mEndRedDotNum);
                this.endRedDot.invalidate();
            } else {
                this.endRedDot.setVisibility(8);
            }
        }
        if (this.assignRedDot != null) {
            if (this.mAssignRedDotMode == 0) {
                this.assignRedDot.setVisibility(8);
                return;
            }
            this.assignRedDot.setLaidOut();
            this.assignRedDot.setVisibility(0);
            this.assignRedDot.setPointMode(this.mAssignRedDotMode);
            this.assignRedDot.invalidate();
        }
    }

    @Override // androidx.preference.Preference
    public void onDetached() {
        removePreciseClickListener();
        super.onDetached();
    }

    public void removePreciseClickListener() {
        PreciseClickHelper preciseClickHelper = this.mPreciseHelper;
        if (preciseClickHelper != null) {
            preciseClickHelper.unSet();
            this.mPreciseHelper = null;
        }
    }

    public void setAssignIconRes(Drawable drawable) {
        if (this.mAssignIconRes != drawable) {
            this.mAssignIconRes = drawable;
            notifyChanged();
        }
    }

    public void setAssignRedDotMode(int i10) {
        if (this.mAssignRedDotMode != i10) {
            this.mAssignRedDotMode = i10;
            notifyChanged();
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

    public void setBackgroundAnimationEnabled(boolean z10) {
        if (this.mIsBackgroundAnimationEnabled != z10) {
            this.mIsBackgroundAnimationEnabled = z10;
            notifyChanged();
        }
    }

    public void setBorderRectRadius(int i10) {
        if (this.mRadius != i10) {
            this.mRadius = i10;
            notifyChanged();
        }
    }

    public void setClickStyle(int i10) {
        this.mClickStyle = i10;
    }

    public void setCouiSummaryLine(int i10) {
        if (this.mCouiSummaryLineLimit != i10) {
            this.mCouiSummaryLineLimit = i10;
            notifyChanged();
        }
    }

    public void setEndRedDotMode(int i10) {
        if (this.mEndRedDotMode != i10) {
            this.mEndRedDotMode = i10;
            notifyChanged();
        }
    }

    public void setEndRedDotNum(int i10) {
        if (this.mEndRedDotNum != i10) {
            this.mEndRedDotNum = i10;
            notifyChanged();
        }
    }

    public void setIconRedDotMode(int i10) {
        if (this.mIconRedDotMode != i10) {
            this.mIconRedDotMode = i10;
            notifyChanged();
        }
    }

    public void setIconStyle(int i10) {
        if (i10 == 0 || i10 == 1) {
            this.mIconStyle = i10;
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

    public void setJump(Drawable drawable) {
        if (this.mJumpRes != drawable) {
            this.mJumpRes = drawable;
            notifyChanged();
        }
    }

    public void setOnPreciseClickListener(PreciseClickHelper.OnPreciseClickListener onPreciseClickListener) {
        this.mPreciseListener = onPreciseClickListener;
        initPreciseHelper();
    }

    public void setSelected(boolean z10) {
        if (this.mIsSelected != z10) {
            this.mIsSelected = z10;
            notifyChanged();
        }
    }

    public void setSelectedState(boolean z10) {
        this.mIsSelected = z10;
    }

    public void setShowDivider(boolean z10) {
        if (this.mShowDivider != z10) {
            this.mShowDivider = z10;
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

    public void setSummaryTextColor(ColorStateList colorStateList) {
        this.mSummaryTextColor = colorStateList;
        notifyChanged();
    }

    public void setTitleColor(ColorStateList colorStateList) {
        if (this.mTitleTextColor != colorStateList) {
            this.mTitleTextColor = colorStateList;
            notifyChanged();
        }
    }

    public void showAssignRedDot() {
        if (this.assignRedDot != null) {
            this.assignRedDot.executeScaleAnim(true);
            notifyChanged();
        }
    }

    public void showEndRedDot() {
        if (this.endRedDot != null) {
            this.endRedDot.executeScaleAnim(true);
            notifyChanged();
        }
    }

    public void showIconRedDot() {
        View view = this.iconRedDot;
        if (view instanceof COUIHintRedDot) {
            ((COUIHintRedDot) view).executeScaleAnim(true);
            notifyChanged();
        }
    }

    public COUIPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.preferenceStyle);
    }

    public COUIPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public COUIPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mShowDivider = true;
        this.mClickStyle = 0;
        this.mIsSelected = false;
        this.mIsBackgroundAnimationEnabled = true;
        this.mIsCustom = false;
        this.mTitleTextColor = null;
        this.mSummaryTextColor = null;
        this.mCouiSetDefaultColor = false;
        this.mCouiSummaryLineLimit = 0;
        this.mContext = context;
        this.mDividerDefaultHorizontalPadding = context.getResources().getDimensionPixelSize(R$dimen.coui_preference_divider_default_horizontal_padding);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPreference, i10, i11);
        this.mShowDivider = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiShowDivider, this.mShowDivider);
        this.mIsEnableClickSpan = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiEnalbeClickSpan, false);
        this.mJumpRes = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIPreference_coui_jump_mark);
        this.mAssignIconRes = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIPreference_coui_assign_icon);
        this.mStatusText1 = typedArrayObtainStyledAttributes.getText(R$styleable.COUIPreference_coui_jump_status1);
        this.mClickStyle = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiClickStyle, 0);
        this.mAssignment = typedArrayObtainStyledAttributes.getText(R$styleable.COUIPreference_couiAssignment);
        this.mAssignmentColor = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiAssignmentColor, 0);
        this.mIconStyle = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiIconStyle, 1);
        this.mHasBorder = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_hasBorder, false);
        this.mRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIPreference_preference_icon_radius, 14);
        this.mIconRedDotMode = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_iconRedDotMode, 0);
        this.mEndRedDotMode = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_endRedDotMode, 0);
        this.mAssignRedDotMode = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_assignRedDotMode, 0);
        this.mEndRedDotNum = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_endRedDotNum, 0);
        this.mIsBackgroundAnimationEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_isBackgroundAnimationEnabled, true);
        this.mIsSupportCardUse = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_isSupportCardUse, true);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiSetDefaultColor, false);
        this.mCouiSetDefaultColor = z10;
        if (z10) {
            this.mTitleTextColor = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIPreference_titleTextColor);
            this.mSummaryTextColor = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIPreference_couiSummaryColor);
        }
        this.mIsCustom = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIPreference_couiIsCustomIcon, false);
        this.mCouiSummaryLineLimit = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIPreference_couiSummaryLineLimit, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setJump(int i10) {
        setJump(this.mContext.getResources().getDrawable(i10));
    }
}
