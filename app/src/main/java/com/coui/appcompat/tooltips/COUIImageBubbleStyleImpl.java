package com.coui.appcompat.tooltips;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.coui.appcompat.textviewcompatutil.COUITextViewCompatUtil;
import com.oplus.anim.EffectiveAnimationView;
import com.support.tips.R$attr;
import com.support.tips.R$dimen;
import com.support.tips.R$id;
import com.support.tips.R$layout;
import com.support.tips.R$style;
import com.support.tips.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIImageBubbleStyleImpl implements COUIIBubbleStyle {
    private int mAnimResId;
    private CharSequence mContentText;
    private TextView mContentTv;
    private Context mContext;
    private int[] mDefStyleParams;
    private CharSequence mDismissText;
    private EffectiveAnimationView mEavAnim;
    private Bitmap mImageBitmap;
    private Drawable mImageDrawable;
    private int mImageResId;
    private ImageView mIvImage;
    private boolean mMediaResourceWithEdges;
    private ScrollView mScrollView;
    private CharSequence mTitle;
    private IToolTipsAction mToolTipsAction;
    private TextView mTvDismiss;
    private TextView mTvTitle;

    public static class Builder {
        private int mAnimResId;
        private CharSequence mContentText;
        private CharSequence mDismissText;
        private Bitmap mImageBitmap;
        private Drawable mImageDrawable;
        private int mImageResId;
        private boolean mMediaResourceWithEdges = true;
        private CharSequence mTitle;

        public COUIImageBubbleStyleImpl build() {
            return new COUIImageBubbleStyleImpl(this);
        }

        public Builder loadAnim(int i10) {
            this.mAnimResId = i10;
            return this;
        }

        public Builder loadImage(int i10) {
            this.mImageResId = i10;
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

        public Builder setMediaResourceWithEdges(boolean z10) {
            this.mMediaResourceWithEdges = z10;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.mTitle = charSequence;
            return this;
        }

        public Builder loadImage(Drawable drawable) {
            this.mImageDrawable = drawable;
            return this;
        }

        public Builder loadImage(Bitmap bitmap) {
            this.mImageBitmap = bitmap;
            return this;
        }
    }

    private void setMediaViewVisibility(boolean z10, boolean z11) {
        this.mIvImage.setVisibility(z10 ? 0 : 8);
        this.mEavAnim.setVisibility(z11 ? 0 : 8);
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void dismissWindow() {
        EffectiveAnimationView effectiveAnimationView = this.mEavAnim;
        if (effectiveAnimationView == null || !effectiveAnimationView.p()) {
            return;
        }
        this.mEavAnim.i();
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public TextView getContentView() {
        return this.mContentTv;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int[] getDefStyleParams() {
        int[] iArr = this.mDefStyleParams;
        iArr[0] = R$attr.couiToolTipsImageStyle;
        iArr[1] = R$style.COUIToolTips_Image;
        return iArr;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int getLayoutId() {
        return this.mMediaResourceWithEdges ? R$layout.coui_tool_tips_image_with_edges_style_layout : R$layout.coui_tool_tips_image_no_edges_style_layout;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int getMaxWidth() {
        return this.mContext.getResources().getDimensionPixelSize(R$dimen.tool_tips_image_style_max_width);
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public int getRealWidth(int i10, ViewGroup viewGroup) {
        return i10;
    }

    @Override // com.coui.appcompat.tooltips.COUIIBubbleStyle
    public void initBubbleStyle(ViewGroup viewGroup) {
        Context context = this.mContext;
        int[] iArr = R$styleable.COUIToolTips;
        int[] iArr2 = this.mDefStyleParams;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, iArr, iArr2[0], iArr2[1]);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIToolTips_couiToolTipsContentTextColor);
        typedArrayObtainStyledAttributes.recycle();
        this.mIvImage = (ImageView) viewGroup.findViewById(R$id.iv_image);
        this.mEavAnim = (EffectiveAnimationView) viewGroup.findViewById(R$id.eav_anim);
        this.mTvTitle = (TextView) viewGroup.findViewById(R$id.tv_title);
        this.mScrollView = (ScrollView) viewGroup.findViewById(R$id.scrollView);
        this.mContentTv = (TextView) viewGroup.findViewById(R$id.contentTv);
        this.mTvDismiss = (TextView) viewGroup.findViewById(R$id.tv_dismiss);
        if (this.mMediaResourceWithEdges) {
            this.mEavAnim.setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.tooltips.COUIImageBubbleStyleImpl.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(new Rect(0, 0, view.getWidth(), view.getHeight()), COUIImageBubbleStyleImpl.this.mContext.getResources().getDimension(R$dimen.coui_tooltips_imageview_radius));
                }
            });
            this.mEavAnim.setClipToOutline(true);
        }
        int i10 = this.mImageResId;
        if (i10 != 0) {
            this.mIvImage.setImageResource(i10);
            setMediaViewVisibility(true, false);
        } else {
            Drawable drawable = this.mImageDrawable;
            if (drawable != null) {
                this.mIvImage.setImageDrawable(drawable);
                setMediaViewVisibility(true, false);
            } else {
                Bitmap bitmap = this.mImageBitmap;
                if (bitmap != null) {
                    this.mIvImage.setImageBitmap(bitmap);
                    setMediaViewVisibility(true, false);
                } else {
                    int i11 = this.mAnimResId;
                    if (i11 != 0) {
                        this.mEavAnim.setAnimation(i11);
                        this.mEavAnim.t(true);
                        this.mEavAnim.v();
                        setMediaViewVisibility(false, true);
                    } else {
                        setMediaViewVisibility(false, false);
                    }
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
        this.mTvDismiss.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.tooltips.COUIImageBubbleStyleImpl.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                COUIImageBubbleStyleImpl.this.mToolTipsAction.onCloseClick();
            }
        });
        COUITextViewCompatUtil.setPressRippleDrawable(this.mTvDismiss);
    }

    public void loadAnim(int i10) {
        EffectiveAnimationView effectiveAnimationView = this.mEavAnim;
        if (effectiveAnimationView == null) {
            this.mAnimResId = i10;
            return;
        }
        effectiveAnimationView.setAnimation(i10);
        this.mEavAnim.t(true);
        this.mEavAnim.v();
        setMediaViewVisibility(false, true);
    }

    public void loadImage(int i10) {
        ImageView imageView = this.mIvImage;
        if (imageView == null) {
            this.mImageResId = i10;
        } else {
            imageView.setImageResource(i10);
            setMediaViewVisibility(true, false);
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
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mContentTv.getLayoutParams();
        this.mContentTv.setMaxWidth((((i10 - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight()) - layoutParams.getMarginStart()) - layoutParams.getMarginEnd());
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mTvTitle.getLayoutParams();
        this.mTvTitle.setMaxWidth((((i10 - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight()) - layoutParams2.getMarginStart()) - layoutParams2.getMarginEnd());
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.mTvDismiss.getLayoutParams();
        this.mTvDismiss.setMaxWidth((((i10 - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight()) - layoutParams3.getMarginStart()) - layoutParams3.getMarginEnd());
    }

    private COUIImageBubbleStyleImpl(Builder builder) {
        this.mDefStyleParams = new int[2];
        this.mMediaResourceWithEdges = true;
        this.mMediaResourceWithEdges = builder.mMediaResourceWithEdges;
        this.mAnimResId = builder.mAnimResId;
        this.mImageResId = builder.mImageResId;
        this.mImageDrawable = builder.mImageDrawable;
        this.mImageBitmap = builder.mImageBitmap;
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

    public void loadImage(Drawable drawable) {
        ImageView imageView = this.mIvImage;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
            setMediaViewVisibility(true, false);
        } else {
            this.mImageDrawable = drawable;
        }
    }

    public void loadImage(Bitmap bitmap) {
        ImageView imageView = this.mIvImage;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
            setMediaViewVisibility(true, false);
        } else {
            this.mImageBitmap = bitmap;
        }
    }
}
