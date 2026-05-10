package com.coui.appcompat.tooltips;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.b;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.support.tips.R$attr;
import com.support.tips.R$dimen;
import com.support.tips.R$id;
import com.support.tips.R$layout;
import com.support.tips.R$style;
import com.support.tips.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIDefaultBubbleStyleImpl implements COUIIBubbleStyle {
    private CharSequence mContentText;
    private TextView mContentTv;
    private Context mContext;
    private int[] mDefStyleParams;
    private ImageView mDismissIv;
    private int mMode;
    private ScrollView mScrollView;
    private IToolTipsAction mToolTipsAction;

    public static class Builder {
        private CharSequence mContentText;

        public COUIDefaultBubbleStyleImpl build() {
            return new COUIDefaultBubbleStyleImpl(this);
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = charSequence;
            return this;
        }
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void dismissWindow() {
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public TextView getContentView() {
        return this.mContentTv;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int[] getDefStyleParams() {
        if (this.mMode == 0) {
            int[] iArr = this.mDefStyleParams;
            iArr[0] = R$attr.couiToolTipsStyle;
            iArr[1] = COUIContextUtil.isCOUIDarkTheme(this.mContext) ? R$style.COUIToolTips_Dark : R$style.COUIToolTips;
        } else {
            int[] iArr2 = this.mDefStyleParams;
            iArr2[0] = R$attr.couiToolTipsDetailFloatingStyle;
            iArr2[1] = COUIContextUtil.isCOUIDarkTheme(this.mContext) ? R$style.COUIToolTips_DetailFloating_Dark : R$style.COUIToolTips_DetailFloating;
        }
        return this.mDefStyleParams;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public ImageView getDismissIv() {
        return this.mDismissIv;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int getLayoutId() {
        return R$layout.coui_tool_tips_layout;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int getMaxWidth() {
        return this.mContext.getResources().getDimensionPixelSize(R$dimen.tool_tips_max_width);
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int getRealWidth(int i10, ViewGroup viewGroup) {
        return Math.min(viewGroup.getMeasuredWidth(), i10);
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void hideDismissView() {
        ImageView imageView = this.mDismissIv;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void initBubbleStyle(final ViewGroup viewGroup) {
        Context context = this.mContext;
        int[] iArr = R$styleable.COUIToolTips;
        int[] iArr2 = this.mDefStyleParams;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, iArr, iArr2[0], iArr2[1]);
        int i10 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIToolTips_couiToolTipsContainerLayoutGravity, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsContainerLayoutMarginStart, 0);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsContainerLayoutMarginTop, 0);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsContainerLayoutMarginEnd, 0);
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsContainerLayoutMarginBottom, 0);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIToolTips_couiToolTipsContentTextColor);
        typedArrayObtainStyledAttributes.recycle();
        TextView textView = (TextView) viewGroup.findViewById(R$id.contentTv);
        this.mContentTv = textView;
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        ScrollView scrollView = (ScrollView) viewGroup.findViewById(R$id.scrollView);
        this.mScrollView = scrollView;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) scrollView.getLayoutParams();
        layoutParams.gravity = i10;
        layoutParams.setMargins(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
        layoutParams.setMarginStart(dimensionPixelSize);
        layoutParams.setMarginEnd(dimensionPixelSize3);
        this.mScrollView.setLayoutParams(layoutParams);
        this.mContentTv.setTextSize(0, (int) COUIChangeTextUtil.getSuitableFontSize(this.mContext.getResources().getDimensionPixelSize(this.mMode == 0 ? R$dimen.tool_tips_content_text_size : R$dimen.detail_floating_content_text_size), this.mContext.getResources().getConfiguration().fontScale, 4));
        if (colorStateList != null) {
            this.mContentTv.setTextColor(colorStateList);
        }
        if (!TextUtils.isEmpty(this.mContentText)) {
            this.mContentTv.setText(this.mContentText);
        }
        ImageView imageView = (ImageView) viewGroup.findViewById(R$id.dismissIv);
        this.mDismissIv = imageView;
        if (this.mMode == 0) {
            imageView.setVisibility(0);
            this.mDismissIv.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.tooltips.COUIDefaultBubbleStyleImpl.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    COUIDefaultBubbleStyleImpl.this.mToolTipsAction.onCloseClick();
                }
            });
        } else {
            imageView.setVisibility(8);
        }
        final int dimensionPixelOffset = this.mContext.getResources().getDimensionPixelOffset(R$dimen.couiToolTipsCancelButtonInsects);
        this.mDismissIv.post(new Runnable() { // from class: com.coui.appcompat.tooltips.COUIDefaultBubbleStyleImpl.2
            @Override // java.lang.Runnable
            public void run() {
                Rect rect = new Rect();
                b.a(viewGroup, COUIDefaultBubbleStyleImpl.this.mDismissIv, rect);
                int i11 = dimensionPixelOffset;
                rect.inset(-i11, -i11);
                viewGroup.setTouchDelegate(new TouchDelegate(rect, COUIDefaultBubbleStyleImpl.this.mDismissIv));
            }
        });
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void refreshBubbleStyle(ColorStateList colorStateList) {
        TextView textView = this.mContentTv;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void setContentText(CharSequence charSequence) {
        TextView textView = this.mContentTv;
        if (textView != null) {
            textView.setText(charSequence);
        } else {
            this.mContentText = charSequence;
        }
    }

    public void setContentTextColor(int i10) {
        setContentTextColor(ColorStateList.valueOf(i10));
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void setContentView(View view) {
        ScrollView scrollView = this.mScrollView;
        if (scrollView != null) {
            scrollView.removeAllViews();
            this.mScrollView.addView(view);
        }
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void setToolTipsAction(IToolTipsAction iToolTipsAction, Context context, int i10) {
        this.mToolTipsAction = iToolTipsAction;
        this.mContext = context;
        this.mMode = i10;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void sizeBubbleStyle(ViewGroup viewGroup, int i10) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mScrollView.getLayoutParams();
        this.mContentTv.setMaxWidth((((i10 - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight()) - layoutParams.leftMargin) - layoutParams.rightMargin);
    }

    private COUIDefaultBubbleStyleImpl(Builder builder) {
        this.mDefStyleParams = new int[2];
        this.mContentText = builder.mContentText;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void setContentTextColor(ColorStateList colorStateList) {
        TextView textView = this.mContentTv;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }
}
