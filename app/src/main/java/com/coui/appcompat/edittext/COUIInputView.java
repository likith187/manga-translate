package com.coui.appcompat.edittext;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.coui.appcompat.animation.COUIEaseInterpolator;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.edittext.COUIEditText;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.appcompat.R$attr;
import com.support.input.R$dimen;
import com.support.input.R$id;
import com.support.input.R$layout;
import com.support.input.R$styleable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class COUIInputView extends ConstraintLayout {
    private static final int APPEAR_DURATION = 217;
    private static final int BUTTON_LAYOUT_MORE_PADDING = 3;
    private static final int COUNT_TEXTVIEW_MORE_PADDING = 10;
    private static final int COUNT_VIEW_PADDING = 8;
    private static final int DISAPPEAR_DURATION = 283;
    public static final int INPUT_TYPE_NUMBER = 1;
    public static final int INPUT_TYPE_NUMBER_PASSWORD = 2;
    public static final int INPUT_TYPE_TEXT = 0;
    private static final int MAX_BUTTON_ICON_COUNT = 2;
    private static final int MAX_LINE = 5;
    private static final int PASSWORD_STATUES_TYPE_CLOSE = 1;
    private static final int PASSWORD_STATUES_TYPE_OPEN = 0;
    private static final int SPACE_STEP = 4;
    protected View mButtonLayout;
    private ErrorStateChangeCallback mCallback;
    private Paint mCountPaint;
    protected TextView mCountTextView;
    private boolean mCustomFormat;
    private ImageButton mDeleteButton;
    private int mDeleteIconMarginEndWithPsd;
    private boolean mEditLineColor;
    protected COUIEditText mEditText;
    private LinearLayout mEdittextContainer;
    private boolean mEnableError;
    protected boolean mEnableInputCount;
    private boolean mEnablePassword;
    private TextView mErrorText;
    private ValueAnimator mHideErrorTextAnimator;
    private CharSequence mHint;
    protected int mInputType;
    protected int mMaxCount;
    protected OnEditTextChangeListener mOnEditTextChangeListener;
    private View.OnFocusChangeListener mOnFocusChangeListener;
    CheckBox mPasswordButton;
    private int mPasswordType;
    private PathInterpolator mPathInterpolator;
    private ValueAnimator mShowErrorTextAnimator;
    private String mSpaceString;
    private int mTextMinHeightInInputView;
    private TextWatcher mTextWatcher;
    protected CharSequence mTitle;
    protected TextView mTitleTextView;
    private Runnable mUpdateRunnable;
    private String replaceString;

    public interface ErrorStateChangeCallback {
        void callback(boolean z10);
    }

    public interface OnEditTextChangeListener {
        void afterTextChange(Editable editable);
    }

    public COUIInputView(Context context) {
        this(context, null);
    }

    private int getCountTextWidth() {
        if (!this.mEnableInputCount) {
            return 0;
        }
        if (this.mCountPaint == null) {
            Paint paint = new Paint();
            this.mCountPaint = paint;
            paint.setTextSize(this.mCountTextView.getTextSize());
        }
        return ((int) this.mCountPaint.measureText((String) this.mCountTextView.getText())) + 8;
    }

    private int getCustomButtonShowNum() {
        TextView textView;
        View view = this.mButtonLayout;
        if (!(view instanceof ViewGroup)) {
            return 0;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i10 = 0;
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt.getVisibility() == 0 && (textView = this.mCountTextView) != null && textView.getId() != childAt.getId()) {
                i10++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCustomStyleText(CharSequence charSequence) {
        if (Locale.getDefault().getLanguage().equals("zh")) {
            String str = this.mSpaceString;
            if (str == null || !str.equals(charSequence.toString())) {
                this.mSpaceString = charSequence.toString();
                boolean zIsCnMobileExact = RegexUtils.isCnMobileExact(charSequence);
                boolean zIsCnBankCardId = RegexUtils.isCnBankCardId(charSequence);
                if (!zIsCnMobileExact && !zIsCnBankCardId) {
                    resetCustomStyleText(charSequence);
                    return;
                }
                this.replaceString = charSequence.toString();
                SpannableString spannableString = new SpannableString(charSequence);
                int length = spannableString.length() / 4;
                for (int i10 = 0; i10 < length; i10++) {
                    if (zIsCnMobileExact) {
                        int i11 = (i10 + 1) * 4;
                        spannableString.setSpan(new CustomEditTextSpan(), i11 - 2, i11 - 1, 17);
                    } else {
                        int i12 = (i10 + 1) * 4;
                        spannableString.setSpan(new CustomEditTextSpan(), i12 - 1, i12, 17);
                    }
                }
                int selectionStart = this.mEditText.getSelectionStart();
                this.mEditText.setText(spannableString);
                COUIEditText cOUIEditText = this.mEditText;
                cOUIEditText.setSelection(Math.min(selectionStart, cOUIEditText.getText().length()));
            }
        }
    }

    private void handleWithError() {
        if (!this.mEnableError) {
            this.mErrorText.setVisibility(8);
            return;
        }
        if (!TextUtils.isEmpty(this.mErrorText.getText())) {
            this.mErrorText.setVisibility(0);
        }
        this.mEditText.addOnErrorStateChangedListener(new COUIEditText.OnErrorStateChangedListener() { // from class: com.coui.appcompat.edittext.COUIInputView.3
            @Override // com.coui.appcompat.edittext.COUIEditText.OnErrorStateChangedListener
            public void onErrorStateChangeAnimationEnd(boolean z10) {
            }

            @Override // com.coui.appcompat.edittext.COUIEditText.OnErrorStateChangedListener
            public void onErrorStateChanged(boolean z10) {
                COUIInputView.this.mEditText.setSelectAllOnFocus(z10);
                if (z10) {
                    COUIInputView.this.showErrorMsgAnim();
                } else {
                    COUIInputView.this.hideErrorMsgAnim();
                }
                if (COUIInputView.this.mCallback != null) {
                    COUIInputView.this.mCallback.callback(z10);
                }
            }
        });
    }

    private void handleWithTitle() {
        if (TextUtils.isEmpty(this.mTitle)) {
            return;
        }
        this.mTitleTextView.setText(this.mTitle);
        this.mTitleTextView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideErrorMsgAnim() {
        ValueAnimator valueAnimator = this.mShowErrorTextAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mShowErrorTextAnimator.cancel();
        }
        if (this.mHideErrorTextAnimator == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.mHideErrorTextAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(283L).setInterpolator(this.mPathInterpolator);
            this.mHideErrorTextAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.edittext.COUIInputView.9
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    COUIInputView.this.mErrorText.setAlpha(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
            this.mHideErrorTextAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.edittext.COUIInputView.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    COUIInputView.this.mErrorText.setVisibility(8);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    COUIInputView.this.mErrorText.setVisibility(8);
                }
            });
        }
        if (this.mHideErrorTextAnimator.isStarted()) {
            this.mHideErrorTextAnimator.cancel();
        }
        this.mHideErrorTextAnimator.start();
    }

    private void init() {
        handleWithTitle();
        this.mEditText.setTopHint(this.mHint);
        if (this.mEditLineColor) {
            this.mEditText.setDefaultStrokeColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimary));
        }
        handleWithCount();
        handleWithPassword();
        handleWithError();
        initDeleteButton();
        updatePadding(false);
    }

    private void initDeleteButton() {
        if (this.mDeleteButton == null || this.mEditText.isShowDeleteIcon()) {
            return;
        }
        this.mDeleteButton.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.edittext.COUIInputView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (COUIInputView.this.mEditText.getTextDeleteListener() == null || !COUIInputView.this.mEditText.getTextDeleteListener().onTextDeleted()) {
                    COUIInputView.this.mEditText.onFastDelete();
                }
            }
        });
    }

    private void initListener() {
        View view = this.mButtonLayout;
        if (view != null) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.coui.appcompat.edittext.a
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    this.f7274a.lambda$initListener$0(view2, i10, i11, i12, i13, i14, i15, i16, i17);
                }
            });
        }
    }

    private boolean isEnablePassword() {
        return this.mPasswordButton.getVisibility() == 0 ? this.mEnablePassword : this.mEnablePassword && getCustomButtonShowNum() < 2;
    }

    private boolean isShowDeleteButton() {
        return this.mDeleteButton.getVisibility() == 0 ? this.mEditText.isFastDeletable() : this.mEditText.isFastDeletable() && getCustomButtonShowNum() < 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initListener$0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (i16 - i14 != i12 - i10) {
            updatePadding(true);
        }
    }

    private void resetCustomStyleText(CharSequence charSequence) {
        if (this.replaceString != null) {
            String strValueOf = String.valueOf(charSequence);
            int selectionStart = this.mEditText.getSelectionStart();
            this.mEditText.setText(strValueOf);
            COUIEditText cOUIEditText = this.mEditText;
            cOUIEditText.setSelection(Math.min(selectionStart, cOUIEditText.getText().length()));
            this.replaceString = null;
        }
    }

    private void setInputType() {
        int i10 = this.mInputType;
        if (i10 == -1) {
            return;
        }
        if (i10 == 0) {
            this.mEditText.setInputType(1);
            return;
        }
        if (i10 == 1) {
            this.mEditText.setInputType(2);
        } else if (i10 != 2) {
            this.mEditText.setInputType(0);
        } else {
            this.mEditText.setInputType(18);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showErrorMsgAnim() {
        ValueAnimator valueAnimator = this.mHideErrorTextAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mHideErrorTextAnimator.cancel();
        }
        this.mErrorText.setVisibility(0);
        if (this.mShowErrorTextAnimator == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.mShowErrorTextAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(217L).setInterpolator(this.mPathInterpolator);
            this.mShowErrorTextAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.edittext.COUIInputView.8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    COUIInputView.this.mErrorText.setAlpha(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
        }
        if (this.mShowErrorTextAnimator.isStarted()) {
            this.mShowErrorTextAnimator.cancel();
        }
        this.mShowErrorTextAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDeleteButton(boolean z10) {
        if (this.mDeleteButton != null) {
            if (!isShowDeleteButton() || !z10 || TextUtils.isEmpty(this.mEditText.getText().toString())) {
                this.mDeleteButton.setVisibility(8);
            } else {
                if (UIUtil.isInVisibleRect(this.mDeleteButton)) {
                    return;
                }
                this.mDeleteButton.setVisibility(4);
                post(new Runnable() { // from class: com.coui.appcompat.edittext.COUIInputView.6
                    @Override // java.lang.Runnable
                    public void run() {
                        COUIInputView.this.mDeleteButton.setVisibility(0);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePadding(boolean z10) {
        if (!z10) {
            this.mUpdateRunnable.run();
        } else {
            this.mEditText.removeCallbacks(this.mUpdateRunnable);
            this.mEditText.post(this.mUpdateRunnable);
        }
    }

    public void addCustomButton(View view) {
        View view2 = this.mButtonLayout;
        if (view2 == null || view == null || !(view2 instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view2;
        if (getCustomButtonShowNum() < 2) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_inputview_custom_button_size);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
            layoutParams.setMarginStart(this.mDeleteIconMarginEndWithPsd);
            layoutParams.setMarginEnd(0);
            viewGroup.addView(view, layoutParams);
            updatePadding(true);
        }
    }

    protected int getCouiInputPreferenceEditTextLayoutId() {
        return R$layout.coui_preference_edittext;
    }

    public TextView getCountTextView() {
        return this.mCountTextView;
    }

    public COUIEditText getEditText() {
        return this.mEditText;
    }

    protected int getEdittextPaddingBottom() {
        return !TextUtils.isEmpty(this.mTitle) ? getResources().getDimensionPixelSize(R$dimen.coui_input_edit_error_text_has_title_padding_bottom) : (int) getResources().getDimension(com.support.appcompat.R$dimen.coui_input_edit_text_no_title_padding_bottom);
    }

    protected int getEdittextPaddingEnd() {
        return this.mButtonLayout.getWidth();
    }

    protected int getEdittextPaddingTop() {
        return !TextUtils.isEmpty(this.mTitle) ? getResources().getDimensionPixelSize(R$dimen.coui_input_edit_text_has_title_padding_top) : (int) getResources().getDimension(com.support.appcompat.R$dimen.coui_input_edit_text_no_title_padding_top);
    }

    public CharSequence getHint() {
        return this.mHint;
    }

    protected int getLayoutResId() {
        return R$layout.coui_input_view;
    }

    public int getMaxCount() {
        return this.mMaxCount;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    protected int getTitlePaddingTop() {
        return getResources().getDimensionPixelSize(R$dimen.coui_input_preference_title_padding_top);
    }

    protected void handleWithCount() {
        handleWithCountTextView();
        if (this.mTextWatcher == null) {
            TextWatcher textWatcher = new TextWatcher() { // from class: com.coui.appcompat.edittext.COUIInputView.4
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    COUIInputView cOUIInputView = COUIInputView.this;
                    if (cOUIInputView.mEnableInputCount && cOUIInputView.mMaxCount > 0) {
                        OnEditTextChangeListener onEditTextChangeListener = cOUIInputView.mOnEditTextChangeListener;
                        if (onEditTextChangeListener != null) {
                            onEditTextChangeListener.afterTextChange(editable);
                        } else {
                            int length = editable.length();
                            COUIInputView cOUIInputView2 = COUIInputView.this;
                            if (length < cOUIInputView2.mMaxCount) {
                                cOUIInputView2.mCountTextView.setText(length + "/" + COUIInputView.this.mMaxCount);
                                COUIInputView cOUIInputView3 = COUIInputView.this;
                                cOUIInputView3.mCountTextView.setTextColor(COUIContextUtil.getAttrColor(cOUIInputView3.getContext(), R$attr.couiColorHintNeutral));
                            } else {
                                cOUIInputView2.mCountTextView.setText(COUIInputView.this.mMaxCount + "/" + COUIInputView.this.mMaxCount);
                                COUIInputView cOUIInputView4 = COUIInputView.this;
                                cOUIInputView4.mCountTextView.setTextColor(COUIContextUtil.getAttrColor(cOUIInputView4.getContext(), R$attr.couiColorError));
                                COUIInputView cOUIInputView5 = COUIInputView.this;
                                int i10 = cOUIInputView5.mMaxCount;
                                if (length > i10) {
                                    cOUIInputView5.mEditText.setText(editable.subSequence(0, i10));
                                }
                            }
                        }
                    }
                    COUIInputView cOUIInputView6 = COUIInputView.this;
                    cOUIInputView6.updateDeleteButton(cOUIInputView6.hasFocus());
                    COUIInputView.this.updatePadding(true);
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                    if (COUIInputView.this.isIsCardSingleInput() && COUIInputView.this.mCustomFormat) {
                        COUIInputView.this.handleCustomStyleText(charSequence);
                    }
                }
            };
            this.mTextWatcher = textWatcher;
            this.mEditText.addTextChangedListener(textWatcher);
        }
        if (this.mOnFocusChangeListener == null) {
            View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener() { // from class: com.coui.appcompat.edittext.COUIInputView.5
                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view, boolean z10) {
                    COUIInputView.this.updateDeleteButton(z10);
                    COUIInputView.this.updatePadding(true);
                }
            };
            this.mOnFocusChangeListener = onFocusChangeListener;
            this.mEditText.setOnFocusChangeListener(onFocusChangeListener);
        }
    }

    protected void handleWithCountTextView() {
        if (!this.mEnableInputCount || this.mMaxCount <= 0) {
            this.mCountTextView.setVisibility(8);
            return;
        }
        this.mCountTextView.setVisibility(0);
        this.mCountTextView.setText(this.mEditText.getText().length() + "/" + this.mMaxCount);
    }

    protected void handleWithPassword() {
        if (!isEnablePassword()) {
            this.mPasswordButton.setVisibility(8);
            setInputType();
            return;
        }
        this.mPasswordButton.setVisibility(0);
        if (this.mPasswordType == 1) {
            this.mPasswordButton.setChecked(false);
            int i10 = this.mInputType;
            if (i10 == 1 || i10 == 2) {
                this.mEditText.setInputType(18);
            } else {
                this.mEditText.setInputType(129);
            }
        } else {
            this.mPasswordButton.setChecked(true);
            int i11 = this.mInputType;
            if (i11 == 1 || i11 == 2) {
                this.mEditText.setInputType(2);
            } else {
                this.mEditText.setInputType(145);
            }
        }
        this.mPasswordButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.coui.appcompat.edittext.COUIInputView.7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                if (z10) {
                    COUIInputView cOUIInputView = COUIInputView.this;
                    int i12 = cOUIInputView.mInputType;
                    if (i12 == 1 || i12 == 2) {
                        cOUIInputView.mEditText.setInputType(2);
                        return;
                    } else {
                        cOUIInputView.mEditText.setInputType(145);
                        return;
                    }
                }
                COUIInputView cOUIInputView2 = COUIInputView.this;
                int i13 = cOUIInputView2.mInputType;
                if (i13 == 1 || i13 == 2) {
                    cOUIInputView2.mEditText.setInputType(18);
                } else {
                    cOUIInputView2.mEditText.setInputType(129);
                }
            }
        });
    }

    protected COUIEditText instanceCOUIEditText(Context context, AttributeSet attributeSet) {
        COUIEditText cOUIEditText = (COUIEditText) LayoutInflater.from(getContext()).inflate(getCouiInputPreferenceEditTextLayoutId(), (ViewGroup) null, false);
        cOUIEditText.setShowDeleteIcon(false);
        cOUIEditText.setVerticalScrollBarEnabled(false);
        cOUIEditText.setMinHeight(this.mTextMinHeightInInputView);
        return cOUIEditText;
    }

    public boolean isEnableInputCount() {
        return this.mEnableInputCount;
    }

    protected boolean isIsCardSingleInput() {
        return false;
    }

    protected void lazyInit(Context context, AttributeSet attributeSet) {
        COUIEditText cOUIEditTextInstanceCOUIEditText = instanceCOUIEditText(context, attributeSet);
        this.mEditText = cOUIEditTextInstanceCOUIEditText;
        cOUIEditTextInstanceCOUIEditText.setMaxLines(5);
        this.mEdittextContainer.addView(this.mEditText, -1, -2);
        init();
    }

    protected void nowInit(Context context, AttributeSet attributeSet) {
        lazyInit(context, attributeSet);
    }

    public void removeCustomButton(View view) {
        View view2 = this.mButtonLayout;
        if (view2 == null || view == null || !(view2 instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) view2).removeView(view);
        updatePadding(true);
    }

    public void setCustomFormat(Boolean bool) {
        this.mCustomFormat = bool.booleanValue();
        if (this.mEditText.getText() == null) {
            return;
        }
        if (isIsCardSingleInput() && this.mCustomFormat) {
            handleCustomStyleText(this.mEditText.getText());
        } else {
            resetCustomStyleText(this.mEditText.getText());
        }
    }

    public void setEnableError(boolean z10) {
        if (this.mEnableError != z10) {
            this.mEnableError = z10;
            handleWithError();
            updatePadding(false);
        }
    }

    public void setEnableInputCount(boolean z10) {
        this.mEnableInputCount = z10;
        handleWithCount();
        updatePadding(true);
    }

    public void setEnablePassword(boolean z10) {
        if (this.mEnablePassword != z10) {
            this.mEnablePassword = z10;
            handleWithPassword();
            updatePadding(true);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.mEditText.setEnabled(z10);
        this.mTitleTextView.setEnabled(z10);
        this.mButtonLayout.setEnabled(z10);
        this.mPasswordButton.setEnabled(z10);
        this.mCountTextView.setEnabled(z10);
    }

    public void setErrorStateChangeCallBack(ErrorStateChangeCallback errorStateChangeCallback) {
        this.mCallback = errorStateChangeCallback;
    }

    public void setHint(CharSequence charSequence) {
        this.mHint = charSequence;
        this.mEditText.setTopHint(charSequence);
    }

    public void setMaxCount(int i10) {
        this.mMaxCount = i10;
        handleWithCount();
    }

    public void setOnEditTextChangeListener(OnEditTextChangeListener onEditTextChangeListener) {
        this.mOnEditTextChangeListener = onEditTextChangeListener;
    }

    public void setPasswordType(int i10) {
        if (this.mPasswordType != i10) {
            this.mPasswordType = i10;
            handleWithPassword();
            updatePadding(true);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null || charSequence.equals(this.mTitle)) {
            return;
        }
        this.mTitle = charSequence;
        handleWithTitle();
        updatePadding(false);
    }

    public void showError(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.mEditText.setErrorState(false);
        } else {
            this.mEditText.setErrorState(true);
            if (this.mEnableError) {
                this.mErrorText.setVisibility(0);
            }
        }
        this.mErrorText.setText(charSequence);
    }

    public COUIInputView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIInputView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mOnEditTextChangeListener = null;
        this.mPathInterpolator = new COUIEaseInterpolator();
        this.mCountPaint = null;
        this.mEditLineColor = false;
        this.mCustomFormat = true;
        this.mUpdateRunnable = new Runnable() { // from class: com.coui.appcompat.edittext.COUIInputView.1
            @Override // java.lang.Runnable
            public void run() {
                COUIInputView cOUIInputView = COUIInputView.this;
                cOUIInputView.mEditText.setPaddingRelative(0, cOUIInputView.getEdittextPaddingTop(), COUIInputView.this.getEdittextPaddingEnd(), COUIInputView.this.getEdittextPaddingBottom());
                TextView textView = COUIInputView.this.mTitleTextView;
                textView.setPaddingRelative(textView.getPaddingStart(), COUIInputView.this.getTitlePaddingTop(), COUIInputView.this.mTitleTextView.getPaddingEnd(), COUIInputView.this.mTitleTextView.getPaddingBottom());
                UIUtil.setMargin(COUIInputView.this.mButtonLayout, 1, (COUIInputView.this.getEdittextPaddingTop() - COUIInputView.this.getEdittextPaddingBottom()) / 2);
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIInputView, i10, 0);
        this.mTitle = typedArrayObtainStyledAttributes.getText(R$styleable.COUIInputView_couiTitle);
        this.mHint = typedArrayObtainStyledAttributes.getText(R$styleable.COUIInputView_couiHint);
        this.mEnablePassword = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIInputView_couiEnablePassword, false);
        this.mPasswordType = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIInputView_couiPasswordType, 0);
        this.mEnableError = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIInputView_couiEnableError, false);
        this.mMaxCount = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIInputView_couiInputMaxCount, 0);
        this.mEnableInputCount = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIInputView_couiEnableInputCount, false);
        this.mInputType = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIInputView_couiInputType, -1);
        this.mCustomFormat = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIInputView_couiInputCustomFormat, true);
        this.mEditLineColor = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIInputView_couiEditLineColor, false);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(getLayoutResId(), (ViewGroup) this, true);
        this.mTitleTextView = (TextView) findViewById(R$id.title);
        this.mCountTextView = (TextView) findViewById(R$id.input_count);
        this.mErrorText = (TextView) findViewById(R$id.text_input_error);
        this.mButtonLayout = findViewById(R$id.button_layout);
        this.mEdittextContainer = (LinearLayout) findViewById(R$id.edittext_container);
        this.mDeleteButton = (ImageButton) findViewById(R$id.delete_button);
        this.mPasswordButton = (CheckBox) findViewById(R$id.checkbox_password);
        this.mDeleteIconMarginEndWithPsd = getResources().getDimensionPixelSize(R$dimen.coui_inputview_delete_button_margin_end_with_passwordicon);
        this.mTextMinHeightInInputView = getResources().getDimensionPixelOffset(R$dimen.coui_inputView_edittext_content_minheight);
        nowInit(context, attributeSet);
        initListener();
    }
}
