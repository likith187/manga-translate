package com.coui.appcompat.preference;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.preference.l;
import com.coui.appcompat.textview.COUITextView;
import com.oplus.anim.EffectiveAnimationView;
import com.support.preference.R$attr;
import com.support.preference.R$id;

/* JADX INFO: loaded from: classes.dex */
public class COUIStatusSwitchingPreference extends COUIPreference {
    private static final int STATUS_TYPE_ANIM = 1;
    private static final int STATUS_TYPE_DEFAULT = 0;
    private static final int STATUS_TYPE_IMAGE = 3;
    private static final int STATUS_TYPE_TEXT = 2;
    private EffectiveAnimationView mAnimView;
    private int mAnimViewHeight;
    private int mAnimViewWidth;
    private int mCurrentType;
    private Drawable mImage;
    private ImageView mImageView;
    private int mRawResId;
    private CharSequence mText;
    private COUITextView mTextView;

    public COUIStatusSwitchingPreference(Context context) {
        this(context, null);
    }

    private void executePlayAnim() {
        EffectiveAnimationView effectiveAnimationView = this.mAnimView;
        if (effectiveAnimationView != null) {
            effectiveAnimationView.setVisibility(0);
            this.mTextView.setVisibility(8);
            this.mImageView.setVisibility(8);
            setAnimViewSize();
            playAnimView();
        }
    }

    private void executeShowImage() {
        if (this.mImageView == null || this.mImage == null) {
            return;
        }
        stopAnim();
        this.mAnimView.setVisibility(8);
        this.mTextView.setVisibility(8);
        this.mImageView.setVisibility(0);
        this.mImageView.setImageDrawable(this.mImage);
    }

    private void executeShowText() {
        if (this.mTextView != null) {
            stopAnim();
            this.mAnimView.setVisibility(8);
            this.mTextView.setVisibility(0);
            this.mImageView.setVisibility(8);
            this.mTextView.setText(this.mText);
        }
    }

    private void playAnimView() {
        stopAnim();
        this.mAnimView.setAnimation(this.mRawResId);
        this.mAnimView.t(true);
        this.mAnimView.v();
    }

    private void setAnimViewSize() {
        ViewGroup.LayoutParams layoutParams = this.mAnimView.getLayoutParams();
        layoutParams.width = this.mAnimViewWidth;
        layoutParams.height = this.mAnimViewHeight;
        this.mAnimView.setLayoutParams(layoutParams);
    }

    private void stopAnim() {
        EffectiveAnimationView effectiveAnimationView = this.mAnimView;
        if (effectiveAnimationView == null || !effectiveAnimationView.p()) {
            return;
        }
        this.mAnimView.i();
    }

    @Override // com.coui.appcompat.preference.COUIPreference, androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        this.mAnimView = (EffectiveAnimationView) lVar.b(R$id.coui_anim);
        this.mTextView = (COUITextView) lVar.b(R$id.coui_text);
        this.mImageView = (ImageView) lVar.b(R$id.coui_image);
        int i10 = this.mCurrentType;
        if (i10 == 1) {
            executePlayAnim();
        } else if (i10 == 2) {
            executeShowText();
        } else {
            if (i10 != 3) {
                return;
            }
            executeShowImage();
        }
    }

    public void showAnim(int i10) {
        this.mCurrentType = 1;
        this.mRawResId = i10;
        notifyChanged();
    }

    public void showIcon(Drawable drawable) {
        if (drawable != this.mImage) {
            this.mCurrentType = 3;
            this.mImage = drawable;
            notifyChanged();
        }
    }

    public void showText(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mText)) {
            return;
        }
        this.mCurrentType = 2;
        this.mText = charSequence;
        notifyChanged();
    }

    public COUIStatusSwitchingPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiStatusSwitchingPreferenceStyle);
    }

    public COUIStatusSwitchingPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, i10);
    }

    public COUIStatusSwitchingPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.mCurrentType = 0;
        this.mAnimViewWidth = -2;
        this.mAnimViewHeight = -2;
    }

    public void showAnim(int i10, int i11, int i12) {
        this.mCurrentType = 1;
        this.mRawResId = i10;
        this.mAnimViewWidth = i11;
        this.mAnimViewHeight = i12;
        notifyChanged();
    }
}
