package com.coui.appcompat.input;

import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.CheckBox;
import com.coui.appcompat.edittext.COUIEditText;
import com.coui.appcompat.edittext.COUIInputView;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.oplus.graphics.OplusOutlineAdapter;
import com.support.input.R$attr;
import com.support.input.R$dimen;
import com.support.input.R$drawable;
import com.support.input.R$id;
import com.support.input.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class COUILockScreenPwdInputView extends COUIInputView {
    public static final int DEFAULT_MAX_INPUT_COUNT = 16;
    public static final int DEFAULT_MIN_INPUT_COUNT = 6;
    private static final float HALF_HEIGHT = 2.0f;
    private final int DEFAULT_SCREEN_WIDTH_DP;
    private final int INPUT_LOCK_SCREEN_PWD_EDIT_MARGIN;
    private int mDefaultInputLockScreenPwdWidth;
    private View mLockScreenPwdCard;
    private int mMinInputCount;
    private final Rect mOplusOutLineRect;
    private OplusOutlineAdapter mOplusOutline;
    private int mScenesMode;
    private TextWatcher mTextWatcher;

    public COUILockScreenPwdInputView(Context context) {
        this(context, null);
    }

    private void clipInputView() {
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.input.COUILockScreenPwdInputView.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (RoundCornerUtil.getSmoothStyleType() != 1) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getHeight() / 2.0f);
                    return;
                }
                if (COUILockScreenPwdInputView.this.mOplusOutline == null) {
                    COUILockScreenPwdInputView.this.mOplusOutline = new OplusOutlineAdapter(outline, 1);
                }
                COUILockScreenPwdInputView.this.mOplusOutLineRect.set(0, 0, view.getWidth(), view.getHeight());
                COUILockScreenPwdInputView.this.mOplusOutline.setSmoothRoundRect(COUILockScreenPwdInputView.this.mOplusOutLineRect, (view.getHeight() * view.getScaleY()) / 2.0f);
            }
        });
        setClipToOutline(true);
    }

    private void initAttr() {
        this.mDefaultInputLockScreenPwdWidth = getResources().getDimensionPixelOffset(R$dimen.coui_input_lock_screen_pwd_setting_width);
        this.mLockScreenPwdCard = findViewById(R$id.lock_screen_pwd_card);
        getEditText().setVerticalScrollBarEnabled(false);
        COUIChangeTextUtil.adaptFontSize(getEditText(), 3);
    }

    void append(String str) {
        this.mEditText.append(str);
    }

    void cropBeyondFont() {
        String couiEditTexttNoEllipsisText = this.mEditText.getCouiEditTexttNoEllipsisText();
        if (this.mMaxCount <= 0 || this.mEditText.getText() == null) {
            return;
        }
        int length = couiEditTexttNoEllipsisText.length();
        int i10 = this.mMaxCount;
        if (length > i10) {
            this.mEditText.setText(couiEditTexttNoEllipsisText.subSequence(0, i10));
        }
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected int getEdittextPaddingBottom() {
        return getResources().getDimensionPixelSize(R$dimen.coui_input_lock_screen_pwd_title_padding_bottom);
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected int getEdittextPaddingEnd() {
        return this.mButtonLayout.getWidth();
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected int getEdittextPaddingTop() {
        return getResources().getDimensionPixelSize(R$dimen.coui_input_lock_screen_pwd_title_padding_top);
    }

    int getInputCount() {
        String couiEditTexttNoEllipsisText = this.mEditText.getCouiEditTexttNoEllipsisText();
        if (this.mEditText.getText() == null || couiEditTexttNoEllipsisText.length() <= 0) {
            return 0;
        }
        return couiEditTexttNoEllipsisText.length();
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected int getLayoutResId() {
        return R$layout.coui_input_lock_screen_pwd_view;
    }

    int getMinInputCount() {
        return this.mMinInputCount;
    }

    @Deprecated
    public View getmLockScreenPwdCard() {
        return this.mLockScreenPwdCard;
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected void handleWithCountTextView() {
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected COUIEditText instanceCOUIEditText(Context context, AttributeSet attributeSet) {
        return this.mScenesMode == 1 ? new COUIEditText(context, attributeSet, R$attr.COUICardLockScreenPwdInputStyleEditDesktop) : new COUIEditText(context, attributeSet, R$attr.COUICardLockScreenPwdInputStyleEdit);
    }

    void lazyInitInputView(AttributeSet attributeSet, int i10) {
        this.mScenesMode = i10;
        lazyInit(getContext(), attributeSet);
        initAttr();
        clipInputView();
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    protected void nowInit(Context context, AttributeSet attributeSet) {
    }

    void removeLastInputText() {
        String couiEditTexttNoEllipsisText = this.mEditText.getCouiEditTexttNoEllipsisText();
        if (this.mEditText.getText() == null || couiEditTexttNoEllipsisText.length() <= 0) {
            return;
        }
        this.mEditText.setText(couiEditTexttNoEllipsisText.subSequence(0, couiEditTexttNoEllipsisText.length() - 1));
    }

    void setCheckBoxImageResourceDesktop() {
        ((CheckBox) findViewById(R$id.checkbox_password)).setButtonDrawable(R$drawable.coui_edittext_password_icon_desktop);
    }

    @Deprecated
    public void setDefaultInputLockScreenPwdWidth(int i10) {
        this.mDefaultInputLockScreenPwdWidth = i10;
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    public void setEnableInputCount(boolean z10) {
        this.mEnableInputCount = z10;
        cropBeyondFont();
        handleWithCount();
    }

    void setInputType(int i10) {
        if (this.mInputType == i10) {
            return;
        }
        this.mInputType = i10;
        handleWithPassword();
    }

    @Override // com.coui.appcompat.edittext.COUIInputView
    public void setMaxCount(int i10) {
        this.mMaxCount = i10;
        cropBeyondFont();
        handleWithCount();
    }

    void setMinInputCount(int i10) {
        this.mMinInputCount = i10;
    }

    @Deprecated
    public void updateCardWidth() {
    }

    public COUILockScreenPwdInputView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUILockScreenPwdInputView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.DEFAULT_SCREEN_WIDTH_DP = 360;
        this.INPUT_LOCK_SCREEN_PWD_EDIT_MARGIN = getResources().getDimensionPixelOffset(R$dimen.coui_input_lock_screen_pwd_edit_margin);
        this.mOplusOutLineRect = new Rect();
        this.mMinInputCount = 6;
        this.mScenesMode = 0;
    }
}
