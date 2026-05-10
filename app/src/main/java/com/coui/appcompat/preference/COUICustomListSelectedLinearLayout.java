package com.coui.appcompat.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.coui.appcompat.cardlist.COUICardListSelectedItemLayout;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.preference.R$dimen;
import com.support.preference.R$id;
import com.support.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUICustomListSelectedLinearLayout extends COUICardListSelectedItemLayout {
    private boolean mIconMarginDependOnImageView;
    private boolean mWithDividerItem;

    public COUICustomListSelectedLinearLayout(Context context) {
        this(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setOrientation(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUICustomListSelectedLinearLayout);
        this.mWithDividerItem = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUICustomListSelectedLinearLayout_couiPreferenceWithDividerItem, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private boolean operateMultilineIconPosition() {
        AppCompatImageView appCompatImageView;
        int iPx2dip;
        View viewFindViewById = findViewById(R$id.img_layout);
        if (viewFindViewById == null || viewFindViewById.getVisibility() != 0 || (appCompatImageView = (AppCompatImageView) findViewById(R.id.icon)) == null) {
            return false;
        }
        boolean z10 = findViewById(R$id.messageLayout) != null;
        TextView textView = (TextView) findViewById(R.id.title);
        TextView textView2 = (TextView) findViewById(R.id.summary);
        int lineCount = (textView == null || textView.getVisibility() != 0) ? 0 : textView.getLineCount();
        int lineCount2 = (textView2 == null || textView2.getVisibility() != 0) ? 0 : textView2.getLineCount();
        TextView textView3 = (TextView) findViewById(R$id.assignment);
        int lineCount3 = (z10 || textView3 == null || textView3.getVisibility() != 0) ? 0 : textView3.getLineCount();
        if (this.mIconMarginDependOnImageView) {
            iPx2dip = UIUtil.px2dip(getContext(), appCompatImageView.getMeasuredHeight());
        } else {
            iPx2dip = UIUtil.px2dip(getContext(), appCompatImageView.getDrawable() != null ? appCompatImageView.getDrawable().getIntrinsicHeight() : 0);
        }
        int i10 = lineCount + lineCount2 + lineCount3;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        if (i10 > 2) {
            layoutParams.gravity = 48;
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_icon_margin_top);
            if (iPx2dip == 24) {
                dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_24icon_margin_top_multiline);
            } else if (iPx2dip == 32) {
                dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_32icon_margin_top_multiline);
            } else if (iPx2dip == 36) {
                dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_36icon_margin_top_multiline);
            } else if (iPx2dip == 50) {
                dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_50icon_margin_top_multiline);
            }
            if (layoutParams.topMargin != dimensionPixelSize) {
                layoutParams.topMargin = dimensionPixelSize;
            }
        } else {
            layoutParams.gravity = 16;
            int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_icon_margin_top);
            if (iPx2dip == 24) {
                dimensionPixelSize2 = i10 <= 1 ? getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_24icon_margin_vertical_default) : getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_24icon_margin_top_multiline);
            } else if (iPx2dip == 32) {
                dimensionPixelSize2 = i10 <= 1 ? getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_32icon_margin_vertical_default) : getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_32icon_margin_top_multiline);
            } else if (iPx2dip == 36) {
                dimensionPixelSize2 = i10 <= 1 ? getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_36icon_margin_vertical_default) : getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_36icon_margin_top_multiline);
            } else if (iPx2dip == 50) {
                dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R$dimen.coui_preference_50icon_margin_vertical_default);
            }
            if (layoutParams.topMargin != dimensionPixelSize2 || layoutParams.bottomMargin != dimensionPixelSize2) {
                layoutParams.topMargin = dimensionPixelSize2;
                layoutParams.bottomMargin = dimensionPixelSize2;
            }
        }
        viewFindViewById.setLayoutParams(layoutParams);
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (operateMultilineIconPosition()) {
            super.onMeasure(i10, i11);
        }
    }

    @Override // com.coui.appcompat.preference.ListSelectedItemLayout, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mWithDividerItem) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setIconMarginDependOnImageView(boolean z10) {
        this.mIconMarginDependOnImageView = z10;
    }

    public COUICustomListSelectedLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mWithDividerItem = false;
        init(context, attributeSet);
    }
}
