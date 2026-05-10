package com.coui.appcompat.tips.def;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import androidx.core.view.m0;
import com.coui.appcompat.textviewcompatutil.COUITextViewCompatUtil;
import com.coui.appcompat.tips.COUIMarqueeTextView;
import com.support.tips.R$dimen;
import com.support.tips.R$id;
import com.support.tips.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class COUIDefaultTopTipsView extends ConstraintLayout implements IDefaultTopTips {
    public static final int ACTION_ID = 3;
    public static final int CLOSE_ID = 4;
    public static final int ICON_ID = 0;
    public static final int IGNORE_ID = 2;
    public static final int IMAGE_BTN_TYPE = 1;
    private static final int TEXT_BTN_ACTION_WRAP = 1;
    private static final int TEXT_BTN_BOTH_WRAP = 3;
    private static final int TEXT_BTN_DIVIDED = 0;
    private static final int TEXT_BTN_IGNORE_WRAP = 2;
    public static final int TEXT_BTN_TYPE = 0;
    public static final int TITLE_ID = 1;
    private final c end;
    private TextView mAction;
    private ImageView mClose;
    private View.OnClickListener mCloseBtnClickListener;
    private int mContentLines;
    private TextView mIgnore;
    private ImageView mImage;
    private boolean mIsChangeText;
    private int mMultiTitleTopMargin;
    private View.OnClickListener mNegativeClickListener;
    private OnLinesChangedListener mOnLinesChangedListener;
    private View.OnClickListener mPositiveClickListener;
    private int mTextBtnRuleFlag;
    private COUIMarqueeTextView mTitle;
    private int mType;

    /* JADX INFO: renamed from: com.coui.appcompat.tips.def.COUIDefaultTopTipsView$1 */
    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (COUIDefaultTopTipsView.this.mNegativeClickListener != null) {
                COUIDefaultTopTipsView.this.mNegativeClickListener.onClick(view);
            }
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.tips.def.COUIDefaultTopTipsView$2 */
    class AnonymousClass2 implements View.OnClickListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (COUIDefaultTopTipsView.this.mPositiveClickListener != null) {
                COUIDefaultTopTipsView.this.mPositiveClickListener.onClick(view);
            }
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.tips.def.COUIDefaultTopTipsView$3 */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (COUIDefaultTopTipsView.this.mCloseBtnClickListener != null) {
                COUIDefaultTopTipsView.this.mCloseBtnClickListener.onClick(view);
            }
        }
    }

    public COUIDefaultTopTipsView(Context context) {
        this(context, null);
    }

    private void changeBtnTypeImpl() {
        this.end.o(this);
        this.end.r(R$id.title, 7, R$id.close, 6);
        this.end.U(R$id.title, 7, getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_btn_margin_right));
        this.end.r(R$id.title, 4, 0, 4);
        this.end.r(R$id.ignore, 3, R$id.title, 3);
        this.end.U(R$id.ignore, 3, 0);
        this.end.r(R$id.action, 3, R$id.title, 3);
        this.end.U(R$id.action, 3, 0);
        this.end.X(R$id.close, 0);
        this.end.X(R$id.ignore, 4);
        this.end.X(R$id.action, 4);
        this.end.X(R$id.ignore, TextUtils.isEmpty(this.mIgnore.getText()) ? 8 : 4);
        this.end.X(R$id.action, TextUtils.isEmpty(this.mAction.getText()) ? 8 : 4);
        this.end.i(this);
    }

    private void changeTextTypeImpl() {
        this.end.o(this);
        if (isNeedMultiText()) {
            this.end.r(R$id.title, 7, 0, 7);
            if (TextUtils.isEmpty(this.mAction.getText()) && TextUtils.isEmpty(this.mIgnore.getText())) {
                this.end.r(R$id.title, 4, 0, 4);
            } else {
                this.end.r(R$id.title, 4, -1, 4);
            }
            this.end.U(R$id.title, 7, getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_title_end_margin));
            this.end.r(R$id.ignore, 3, R$id.title, 4);
            this.end.r(R$id.ignore, 4, 0, 4);
            this.end.U(R$id.ignore, 3, getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_btn_top_margin));
            this.end.U(R$id.ignore, 4, getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_multi_btn_text_bottom_margin));
            this.end.r(R$id.action, 3, R$id.title, 4);
            this.end.r(R$id.action, 4, 0, 4);
            this.end.U(R$id.action, 3, getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_btn_top_margin));
            this.end.U(R$id.action, 4, getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_multi_btn_text_bottom_margin));
            this.end.r(R$id.image, 4, -1, 4);
            this.end.r(R$id.image, 3, 0, 3);
            this.end.U(R$id.image, 3, getImageMarginTopMultiText());
        } else {
            this.end.r(R$id.title, 7, R$id.ignore, 6);
            this.end.r(R$id.title, 4, 0, 4);
            this.end.U(R$id.title, 7, getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_btn_margin_right));
            this.end.r(R$id.ignore, 3, R$id.title, 3);
            this.end.r(R$id.ignore, 4, R$id.title, 4);
            this.end.U(R$id.ignore, 3, 0);
            this.end.U(R$id.ignore, 4, 0);
            this.end.r(R$id.action, 3, R$id.title, 3);
            this.end.r(R$id.action, 4, R$id.title, 4);
            this.end.U(R$id.action, 3, 0);
            this.end.U(R$id.action, 4, 0);
            this.end.r(R$id.image, 3, R$id.title, 3);
            this.end.r(R$id.image, 4, R$id.title, 4);
            this.end.U(R$id.image, 3, 0);
        }
        if (this.mOnLinesChangedListener != null && this.mContentLines != this.mTitle.getLineCount()) {
            int lineCount = this.mTitle.getLineCount();
            this.mContentLines = lineCount;
            this.mOnLinesChangedListener.onLinesChanged(lineCount);
        }
        this.end.X(R$id.close, 4);
        this.end.X(R$id.ignore, TextUtils.isEmpty(this.mIgnore.getText()) ? 8 : 0);
        this.end.X(R$id.action, TextUtils.isEmpty(this.mAction.getText()) ? 8 : 0);
        this.end.i(this);
    }

    private int getImageMarginTopMultiText() {
        return Math.max((int) ((this.mTitle.getLayout() != null ? ((r0.getLineTop(0) + r0.getLineBottom(0)) / 2.0f) + this.mTitle.getY() : 0.0f) - (this.mImage.getMeasuredHeight() / 2.0f)), this.mMultiTitleTopMargin);
    }

    private boolean isNeedMultiText() {
        if (this.mTitle.getLineCount() > 1) {
            return true;
        }
        if (this.mTitle.getMaxLines() == 1) {
            return false;
        }
        float fMeasureText = this.mTitle.getPaint().measureText(this.mTitle.getText().toString());
        TextView textView = TextUtils.isEmpty(this.mIgnore.getText()) ? this.mAction : this.mIgnore;
        boolean z10 = (TextUtils.isEmpty(this.mAction.getText()) && TextUtils.isEmpty(this.mIgnore.getText())) ? false : true;
        if (m0.v(this) != 1) {
            return ((int) Math.max(fMeasureText + ((float) this.mTitle.getLeft()), (float) this.mTitle.getRight())) + getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_btn_margin) >= (z10 ? textView.getLeft() : getRight());
        }
        return (z10 ? textView.getRight() : getLeft()) + getContext().getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_btn_margin) >= ((int) Math.min(fMeasureText + ((float) this.mTitle.getRight()), (float) this.mTitle.getLeft()));
    }

    private void remeasureTextBtnWidth(TextView textView, int i10) {
        textView.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), 0, -2), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(textView.getMeasuredHeight(), Integer.MIN_VALUE), 0, -2));
    }

    private void setBtnColorImpl(int i10, int i11) {
        if (i10 == 2) {
            this.mIgnore.setTextColor(i11);
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("setBtnColorImpl parameter 'which' is wrong");
            }
            this.mAction.setTextColor(i11);
        }
    }

    private void setBtnDrawableImpl(int i10, Drawable drawable) {
        if (i10 != 4) {
            throw new IllegalArgumentException("setBtnDrawableImpl parameter 'which' is wrong");
        }
        this.mClose.setImageDrawable(drawable);
        changeType(1);
    }

    private void setBtnTextImpl(int i10, CharSequence charSequence) {
        if (i10 == 2) {
            this.mIgnore.setText(charSequence);
            changeType(0);
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("setBtnTextImpl parameter 'which' is wrong");
            }
            this.mAction.setText(charSequence);
            changeType(0);
        }
    }

    public final void changeType(int i10) {
        if (i10 == 0) {
            changeTextTypeImpl();
        } else {
            changeBtnTypeImpl();
        }
        this.mType = i10;
    }

    public TextView getAction() {
        return this.mAction;
    }

    public TextView getIgnore() {
        return this.mIgnore;
    }

    public TextView getTitle() {
        return this.mTitle;
    }

    protected void init() {
        LayoutInflater.from(getContext()).inflate(R$layout.coui_default_toptips, this);
        this.mImage = (ImageView) findViewById(R$id.image);
        this.mTitle = (COUIMarqueeTextView) findViewById(R$id.title);
        TextView textView = (TextView) findViewById(R$id.ignore);
        this.mIgnore = textView;
        COUITextViewCompatUtil.setPressRippleDrawable(textView);
        this.mIgnore.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.tips.def.COUIDefaultTopTipsView.1
            AnonymousClass1() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (COUIDefaultTopTipsView.this.mNegativeClickListener != null) {
                    COUIDefaultTopTipsView.this.mNegativeClickListener.onClick(view);
                }
            }
        });
        TextView textView2 = (TextView) findViewById(R$id.action);
        this.mAction = textView2;
        COUITextViewCompatUtil.setPressRippleDrawable(textView2);
        this.mAction.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.tips.def.COUIDefaultTopTipsView.2
            AnonymousClass2() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (COUIDefaultTopTipsView.this.mPositiveClickListener != null) {
                    COUIDefaultTopTipsView.this.mPositiveClickListener.onClick(view);
                }
            }
        });
        ImageView imageView = (ImageView) findViewById(R$id.close);
        this.mClose = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.tips.def.COUIDefaultTopTipsView.3
            AnonymousClass3() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (COUIDefaultTopTipsView.this.mCloseBtnClickListener != null) {
                    COUIDefaultTopTipsView.this.mCloseBtnClickListener.onClick(view);
                }
            }
        });
        this.mMultiTitleTopMargin = getResources().getDimensionPixelSize(R$dimen.coui_toptips_view_multi_title_top_margin);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (m0.v(this) == 1) {
            TextView textView = this.mAction;
            textView.layout(textView.getLeft(), this.mAction.getTop(), this.mAction.getLeft() + this.mAction.getMeasuredWidth(), this.mAction.getBottom());
            this.mIgnore.layout(this.mAction.getRight(), this.mIgnore.getTop(), this.mAction.getRight() + this.mIgnore.getMeasuredWidth(), this.mIgnore.getBottom());
        } else {
            TextView textView2 = this.mAction;
            textView2.layout(textView2.getRight() - this.mAction.getMeasuredWidth(), this.mAction.getTop(), this.mAction.getRight(), this.mAction.getBottom());
            this.mIgnore.layout(this.mAction.getLeft() - this.mIgnore.getMeasuredWidth(), this.mIgnore.getTop(), this.mAction.getLeft(), this.mIgnore.getBottom());
        }
        if (this.mType == 0 && this.mIsChangeText) {
            this.mIsChangeText = false;
            changeTextTypeImpl();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth() - ((((ConstraintLayout.b) this.mTitle.getLayoutParams()).getMarginStart() + this.mImage.getMeasuredWidth()) + ((ConstraintLayout.b) this.mImage.getLayoutParams()).getMarginStart());
        int i12 = measuredWidth >> 1;
        if (this.mAction.getMeasuredWidth() <= i12) {
            this.mTextBtnRuleFlag++;
        }
        if (this.mIgnore.getMeasuredWidth() <= i12) {
            this.mTextBtnRuleFlag += 2;
        }
        int i13 = this.mTextBtnRuleFlag;
        if (i13 == 0) {
            remeasureTextBtnWidth(this.mAction, i12);
            remeasureTextBtnWidth(this.mIgnore, i12);
        } else if (i13 == 1) {
            remeasureTextBtnWidth(this.mIgnore, measuredWidth - this.mAction.getMeasuredWidth());
        } else if (i13 == 2) {
            remeasureTextBtnWidth(this.mAction, measuredWidth - this.mIgnore.getMeasuredWidth());
        }
        this.mTextBtnRuleFlag = 0;
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setCloseBtnListener(View.OnClickListener onClickListener) {
        this.mCloseBtnClickListener = onClickListener;
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setCloseDrawable(Drawable drawable) {
        setBtnDrawableImpl(4, drawable);
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setNegativeButton(CharSequence charSequence) {
        setBtnTextImpl(2, charSequence);
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setNegativeButtonColor(int i10) {
        setBtnColorImpl(2, i10);
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setNegativeButtonListener(View.OnClickListener onClickListener) {
        this.mNegativeClickListener = onClickListener;
    }

    public void setOnLinesChangedListener(OnLinesChangedListener onLinesChangedListener) {
        this.mOnLinesChangedListener = onLinesChangedListener;
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setPositiveButton(CharSequence charSequence) {
        setBtnTextImpl(3, charSequence);
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setPositiveButtonColor(int i10) {
        setBtnColorImpl(3, i10);
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setPositiveButtonListener(View.OnClickListener onClickListener) {
        this.mPositiveClickListener = onClickListener;
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setStartIcon(Drawable drawable) {
        this.mImage.setImageDrawable(drawable);
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setTipsText(CharSequence charSequence) {
        this.mIsChangeText = true;
        this.mTitle.setText(charSequence);
    }

    @Override // com.coui.appcompat.tips.def.IDefaultTopTips
    public void setTipsTextColor(int i10) {
        this.mTitle.setTextColor(i10);
    }

    public void startRoll() {
        this.mTitle.continueRoll();
    }

    public void stopRoll() {
        this.mTitle.stopRoll();
        this.mTitle.setMarqueeEnable(false);
    }

    public COUIDefaultTopTipsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIDefaultTopTipsView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mType = 0;
        this.mIsChangeText = true;
        this.end = new c();
        this.mContentLines = -1;
        this.mTextBtnRuleFlag = 0;
        init();
    }
}
