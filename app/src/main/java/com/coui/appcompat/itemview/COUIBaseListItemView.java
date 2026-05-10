package com.coui.appcompat.itemview;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.n;
import com.coui.appcompat.imageview.COUIRoundImageView;
import com.coui.appcompat.preference.COUICustomListSelectedLinearLayout;
import com.coui.appcompat.reddot.COUIHintRedDot;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$layout;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIBaseListItemView extends RelativeLayout implements n {
    public static final int CIRCLE = 0;
    private static final int DEFAULT_RADIUS = 14;
    private static final int DELAY_TIME = 70;
    public static final int FORCE_CLICKABLE = 1;
    public static final int FORCE_UNCLICKABLE = 2;
    private static final int PER_HEIGHT = 6;
    public static final int ROUND = 1;
    private COUIRoundImageView mAssignIconView;
    private COUIHintRedDot mAssignRedDotView;
    private TextView mAssignView;
    private Context mContext;
    private COUIHintRedDot mEndRedDotView;
    private boolean mHasBorder;
    private COUIHintRedDot mIconRedDotView;
    private int mIconStyle;
    private COUIRoundImageView mIconView;
    private boolean mIsCustom;
    private boolean mItemEnabled;
    private int mRadius;
    private View mRootItemView;
    private TextView mSummaryView;
    private TextView mTitleView;
    private ViewGroup mWidgetFrame;

    public COUIBaseListItemView(Context context) {
        this(context, null);
    }

    private void setEnableState(View view, boolean z10) {
        view.setEnabled(z10);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                setEnableState(viewGroup.getChildAt(childCount), z10);
            }
        }
    }

    private void setIconMarginDependOnImageView(boolean z10) {
        View view = this.mRootItemView;
        if (view instanceof COUICustomListSelectedLinearLayout) {
            ((COUICustomListSelectedLinearLayout) view).setIconMarginDependOnImageView(z10);
        }
    }

    public ImageView getAssignIconView() {
        return this.mAssignIconView;
    }

    public ImageView getIconView() {
        return this.mIconView;
    }

    @Override // androidx.recyclerview.widget.n
    public boolean getItemEnabled() {
        return this.mItemEnabled;
    }

    public final View getRootItemView() {
        return this.mRootItemView;
    }

    public final void setAssignIcon(Drawable drawable) {
        COUIRoundImageView cOUIRoundImageView = this.mAssignIconView;
        if (cOUIRoundImageView != null) {
            if (drawable == null) {
                cOUIRoundImageView.setVisibility(8);
            } else {
                cOUIRoundImageView.setImageDrawable(drawable);
                this.mAssignIconView.setVisibility(0);
            }
        }
    }

    public void setAssignRedDotMode(int i10) {
        COUIHintRedDot cOUIHintRedDot = this.mAssignRedDotView;
        if (cOUIHintRedDot != null) {
            if (i10 == 0) {
                cOUIHintRedDot.setVisibility(8);
                return;
            }
            cOUIHintRedDot.setLaidOut();
            this.mAssignRedDotView.setVisibility(0);
            this.mAssignRedDotView.setPointMode(i10);
            this.mAssignRedDotView.invalidate();
        }
    }

    public final void setAssignment(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.mAssignView.setVisibility(8);
        } else {
            this.mAssignView.setText(charSequence);
            this.mAssignView.setVisibility(0);
        }
    }

    public void setAssignmentColor(int i10) {
        if (i10 != 0) {
            this.mAssignView.setTextColor(i10);
        }
    }

    public void setClickableStyle(int i10) {
        if (i10 == 1) {
            this.mRootItemView.setClickable(false);
        } else {
            if (i10 != 2) {
                return;
            }
            this.mRootItemView.setClickable(true);
        }
    }

    public void setCustomIconRadius(boolean z10) {
        this.mIsCustom = z10;
        setIconStyle(this.mRadius, this.mHasBorder, this.mIconStyle, z10);
    }

    @Deprecated
    public final void setEnable(boolean z10) {
        setEnableState(this, z10);
    }

    public void setEndRedDotMode(int i10, int i11) {
        if (i10 == 0) {
            this.mEndRedDotView.setVisibility(8);
            return;
        }
        this.mEndRedDotView.setLaidOut();
        this.mEndRedDotView.setVisibility(0);
        this.mEndRedDotView.setPointMode(i10);
        this.mEndRedDotView.setPointNumber(i11);
        this.mEndRedDotView.invalidate();
    }

    public final void setIcon(Drawable drawable) {
        if (drawable == null) {
            this.mIconView.setVisibility(8);
        } else {
            this.mIconView.setImageDrawable(drawable);
            this.mIconView.setVisibility(0);
        }
    }

    public void setIconBorderRadius(int i10) {
        this.mRadius = i10;
        setIconStyle(i10, this.mHasBorder, this.mIconStyle, this.mIsCustom);
    }

    public void setIconHasBorder(boolean z10) {
        this.mHasBorder = z10;
        setIconStyle(this.mRadius, z10, this.mIconStyle, this.mIsCustom);
    }

    public void setIconRedDotMode(int i10) {
        if (i10 == 0) {
            this.mIconRedDotView.setVisibility(8);
            return;
        }
        this.mIconRedDotView.setLaidOut();
        this.mIconRedDotView.setVisibility(0);
        this.mIconRedDotView.setPointMode(i10);
        this.mIconRedDotView.invalidate();
    }

    public void setIconStyle(int i10) {
        if (i10 == 0 || i10 == 1) {
            this.mIconStyle = i10;
            setIconStyle(this.mRadius, this.mHasBorder, i10, this.mIsCustom);
        }
    }

    public final void setItemBackground(Drawable drawable) {
        this.mRootItemView.setBackground(drawable);
    }

    public void setItemEnabled(boolean z10) {
        if (this.mItemEnabled != z10) {
            this.mItemEnabled = z10;
            setEnableState(this, z10);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mRootItemView.setOnClickListener(onClickListener);
    }

    public void setPaddingEnd(int i10) {
        View view = this.mRootItemView;
        view.setPaddingRelative(view.getPaddingStart(), this.mRootItemView.getPaddingTop(), i10, this.mRootItemView.getPaddingBottom());
    }

    public void setPaddingStart(int i10) {
        View view = this.mRootItemView;
        view.setPaddingRelative(i10, view.getPaddingTop(), this.mRootItemView.getPaddingEnd(), this.mRootItemView.getPaddingBottom());
    }

    public void setPaddingStartAndEnd(int i10, int i11) {
        View view = this.mRootItemView;
        view.setPaddingRelative(i10, view.getPaddingTop(), i11, this.mRootItemView.getPaddingBottom());
    }

    public final void setSummary(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.mSummaryView.setVisibility(8);
        } else {
            this.mSummaryView.setText(charSequence);
            this.mSummaryView.setVisibility(0);
        }
    }

    public void setSummaryClickSpan() {
        this.mSummaryView.setHighlightColor(getContext().getResources().getColor(R.color.transparent));
        this.mSummaryView.setMovementMethod(LinkMovementMethod.getInstance());
        this.mSummaryView.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.itemview.COUIBaseListItemView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                int selectionStart = COUIBaseListItemView.this.mSummaryView.getSelectionStart();
                int selectionEnd = COUIBaseListItemView.this.mSummaryView.getSelectionEnd();
                int offsetForPosition = COUIBaseListItemView.this.mSummaryView.getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
                boolean z10 = selectionStart == selectionEnd || offsetForPosition <= selectionStart || offsetForPosition >= selectionEnd;
                if (actionMasked != 0) {
                    if (actionMasked == 1 || actionMasked == 3) {
                        COUIBaseListItemView.this.mSummaryView.setPressed(false);
                        COUIBaseListItemView.this.mSummaryView.postInvalidateDelayed(70L);
                    }
                } else {
                    if (z10) {
                        return false;
                    }
                    COUIBaseListItemView.this.mSummaryView.setPressed(true);
                    COUIBaseListItemView.this.mSummaryView.invalidate();
                }
                return false;
            }
        });
    }

    public void setSummaryColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mSummaryView.setTextColor(colorStateList);
        }
    }

    public final void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.mTitleView.setVisibility(8);
        } else {
            this.mTitleView.setText(charSequence);
            this.mTitleView.setVisibility(0);
        }
    }

    public void setTitleColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.mTitleView.setTextColor(colorStateList);
        }
    }

    public final void setWidgetView(int i10) {
        ViewGroup viewGroup = this.mWidgetFrame;
        if (viewGroup != null) {
            if (i10 == 0) {
                viewGroup.setVisibility(8);
                return;
            }
            viewGroup.setVisibility(0);
            this.mWidgetFrame.removeAllViews();
            View.inflate(this.mContext, i10, this.mWidgetFrame);
        }
    }

    public COUIBaseListItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIBaseListItemView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public final void setIconStyle(int i10, boolean z10, int i11, boolean z11) {
        if (z11) {
            this.mIconView.setHasBorder(z10);
            this.mIconView.setBorderRectRadius(0);
            this.mIconView.setType(i11);
            return;
        }
        Drawable drawable = this.mIconView.getDrawable();
        if (drawable != null && i10 == 14) {
            i10 = drawable.getIntrinsicHeight() / 6;
            if (i10 < getContext().getResources().getDimensionPixelOffset(R$dimen.coui_preference_icon_min_radius)) {
                i10 = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_preference_icon_min_radius);
            } else if (i10 > getContext().getResources().getDimensionPixelOffset(R$dimen.coui_preference_icon_max_radius)) {
                i10 = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_preference_icon_max_radius);
            }
        }
        this.mIconView.setHasBorder(z10);
        this.mIconView.setBorderRectRadius(i10);
        this.mIconView.setType(i11);
    }

    public COUIBaseListItemView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mItemEnabled = true;
        this.mRadius = 14;
        this.mIconStyle = 1;
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIBaseListItemView, i10, i11);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIBaseListItemView_assignInRightAsMainLayout, true);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIBaseListItemView_iconMarginDependOnImageView, false);
        this.mItemEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIBaseListItemView_itemEnabled, true);
        CharSequence text = typedArrayObtainStyledAttributes.getText(R$styleable.COUIBaseListItemView_title);
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(R$styleable.COUIBaseListItemView_summary);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIBaseListItemView_icon);
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(R$styleable.COUIBaseListItemView_assignment);
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIBaseListItemView_assignmentIcon);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIBaseListItemView_widgetLayout, 0);
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = View.inflate(context, z10 ? R$layout.coui_preference_assignment_in_right : R$layout.coui_preference, this);
        this.mRootItemView = viewInflate.findViewById(R$id.coui_preference);
        View viewFindViewById = viewInflate.findViewById(R$id.img_layout);
        this.mIconView = (COUIRoundImageView) viewInflate.findViewById(R.id.icon);
        this.mIconRedDotView = (COUIHintRedDot) viewInflate.findViewById(R$id.img_red_dot);
        this.mTitleView = (TextView) viewInflate.findViewById(R.id.title);
        this.mSummaryView = (TextView) viewInflate.findViewById(R.id.summary);
        this.mEndRedDotView = (COUIHintRedDot) viewInflate.findViewById(R$id.jump_icon_red_dot);
        this.mAssignRedDotView = (COUIHintRedDot) viewInflate.findViewById(R$id.assignment_red_dot);
        this.mAssignIconView = (COUIRoundImageView) viewInflate.findViewById(R$id.assignment_icon);
        this.mAssignView = (TextView) viewInflate.findViewById(R$id.assignment);
        this.mWidgetFrame = (ViewGroup) viewInflate.findViewById(R.id.widget_frame);
        this.mRootItemView.setClickable(true);
        setIconMarginDependOnImageView(z11);
        viewFindViewById.setVisibility(0);
        setTitle(text);
        setSummary(text2);
        setIcon(drawable);
        setAssignment(text3);
        setAssignIcon(drawable2);
        setWidgetView(resourceId);
        setIconStyle(this.mRadius, this.mHasBorder, this.mIconStyle, this.mIsCustom);
        setEnableState(this, this.mItemEnabled);
    }

    public void setWidgetView(View view) {
        ViewGroup viewGroup = this.mWidgetFrame;
        if (viewGroup != null) {
            if (view != null) {
                viewGroup.setVisibility(0);
                this.mWidgetFrame.removeAllViews();
                this.mWidgetFrame.addView(view);
                return;
            }
            viewGroup.setVisibility(8);
        }
    }
}
