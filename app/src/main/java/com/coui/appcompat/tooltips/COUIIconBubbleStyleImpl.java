package com.coui.appcompat.tooltips;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.coui.appcompat.textviewcompatutil.COUITextViewCompatUtil;
import com.support.tips.R$attr;
import com.support.tips.R$dimen;
import com.support.tips.R$id;
import com.support.tips.R$layout;
import com.support.tips.R$style;
import com.support.tips.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIIconBubbleStyleImpl implements COUIIBubbleStyle {
    private CharSequence mContentText;
    private TextView mContentTv;
    private Context mContext;
    private int[] mDefStyleParams;
    private CharSequence mDismissText;
    private Bitmap mIconBitmap;
    private Drawable mIconDrawable;
    private int mIconResId;
    private ImageView mIvIcon;
    private ScrollView mScrollView;
    private CharSequence mTitle;
    private IToolTipsAction mToolTipsAction;
    private TextView mTvDismiss;
    private TextView mTvTitle;

    public static class Builder {
        private CharSequence mContentText;
        private CharSequence mDismissText;
        private Bitmap mIconBitmap;
        private Drawable mIconDrawable;
        private int mIconResId;
        private CharSequence mTitle;

        public COUIIconBubbleStyleImpl build() {
            return new COUIIconBubbleStyleImpl(this);
        }

        public Builder loadIcon(int i10) {
            this.mIconResId = i10;
            return this;
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = charSequence;
            return this;
        }

        public Builder setDismissText(CharSequence charSequence) {
            this.mDismissText = charSequence;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.mTitle = charSequence;
            return this;
        }

        public Builder loadIcon(Drawable drawable) {
            this.mIconDrawable = drawable;
            return this;
        }

        public Builder loadIcon(Bitmap bitmap) {
            this.mIconBitmap = bitmap;
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
        int[] iArr = this.mDefStyleParams;
        iArr[0] = R$attr.couiToolTipsIconStyle;
        iArr[1] = R$style.COUIToolTips_Icon;
        return iArr;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int getLayoutId() {
        return R$layout.coui_tool_tips_icon_style_layout;
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
    public void initBubbleStyle(ViewGroup viewGroup) {
        Context context = this.mContext;
        int[] iArr = R$styleable.COUIToolTips;
        int[] iArr2 = this.mDefStyleParams;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, iArr, iArr2[0], iArr2[1]);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIToolTips_couiToolTipsContentTextColor);
        typedArrayObtainStyledAttributes.recycle();
        this.mIvIcon = (ImageView) viewGroup.findViewById(R$id.iv_icon);
        this.mTvTitle = (TextView) viewGroup.findViewById(R$id.tv_title);
        this.mScrollView = (ScrollView) viewGroup.findViewById(R$id.scrollView);
        this.mContentTv = (TextView) viewGroup.findViewById(R$id.contentTv);
        this.mTvDismiss = (TextView) viewGroup.findViewById(R$id.tv_dismiss);
        int i10 = this.mIconResId;
        if (i10 != 0) {
            this.mIvIcon.setImageResource(i10);
        } else {
            Drawable drawable = this.mIconDrawable;
            if (drawable != null) {
                this.mIvIcon.setImageDrawable(drawable);
            } else {
                Bitmap bitmap = this.mIconBitmap;
                if (bitmap != null) {
                    this.mIvIcon.setImageBitmap(bitmap);
                }
            }
        }
        if (!TextUtils.isEmpty(this.mTitle)) {
            this.mTvTitle.setText(this.mTitle);
        }
        this.mContentTv.setMovementMethod(LinkMovementMethod.getInstance());
        if (colorStateList != null) {
            this.mContentTv.setTextColor(colorStateList);
        }
        if (!TextUtils.isEmpty(this.mContentText)) {
            this.mContentTv.setText(this.mContentText);
        }
        if (!TextUtils.isEmpty(this.mDismissText)) {
            this.mTvDismiss.setText(this.mDismissText);
        }
        this.mTvDismiss.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.tooltips.COUIIconBubbleStyleImpl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                COUIIconBubbleStyleImpl.this.mToolTipsAction.onCloseClick();
            }
        });
        COUITextViewCompatUtil.setPressRippleDrawable(this.mTvDismiss);
    }

    public void loadIcon(int i10) {
        ImageView imageView = this.mIvIcon;
        if (imageView != null) {
            imageView.setImageResource(i10);
        } else {
            this.mIconResId = i10;
        }
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

    public void setDismissText(CharSequence charSequence) {
        TextView textView = this.mTvDismiss;
        if (textView != null) {
            textView.setText(charSequence);
        } else {
            this.mDismissText = charSequence;
        }
    }

    public void setTitle(CharSequence charSequence) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setText(charSequence);
        } else {
            this.mTitle = charSequence;
        }
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void setToolTipsAction(IToolTipsAction iToolTipsAction, Context context, int i10) {
        this.mToolTipsAction = iToolTipsAction;
        this.mContext = context;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void sizeBubbleStyle(ViewGroup viewGroup, int i10) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mContentTv.getLayoutParams();
        this.mContentTv.setMaxWidth((((i10 - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight()) - layoutParams.getMarginStart()) - layoutParams.getMarginEnd());
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mTvTitle.getLayoutParams();
        this.mTvTitle.setMaxWidth((((i10 - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight()) - layoutParams2.getMarginStart()) - layoutParams2.getMarginEnd());
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.mTvDismiss.getLayoutParams();
        this.mTvDismiss.setMaxWidth((((i10 - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight()) - layoutParams3.getMarginStart()) - layoutParams3.getMarginEnd());
    }

    private COUIIconBubbleStyleImpl(Builder builder) {
        this.mDefStyleParams = new int[2];
        this.mIconResId = builder.mIconResId;
        this.mIconDrawable = builder.mIconDrawable;
        this.mIconBitmap = builder.mIconBitmap;
        this.mTitle = builder.mTitle;
        this.mContentText = builder.mContentText;
        this.mDismissText = builder.mDismissText;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void setContentTextColor(ColorStateList colorStateList) {
        TextView textView = this.mContentTv;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void loadIcon(Drawable drawable) {
        ImageView imageView = this.mIvIcon;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        } else {
            this.mIconDrawable = drawable;
        }
    }

    public void loadIcon(Bitmap bitmap) {
        ImageView imageView = this.mIvIcon;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            this.mIconBitmap = bitmap;
        }
    }
}
