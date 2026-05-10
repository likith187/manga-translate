package com.coui.appcompat.input;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.edittext.COUIInputView;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.oplus.graphics.OplusOutlineAdapter;
import com.support.appcompat.R$attr;
import com.support.input.R$color;
import com.support.input.R$drawable;
import com.support.input.R$id;
import com.support.input.R$layout;
import com.support.input.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUILockScreenPwdInputLayout extends ConstraintLayout {
    public static final int DESKTOP = 1;
    private static final float HALF_HEIGHT = 2.0f;
    public static final int INPUT_VIEW_TRANSPARENT_BG_COLOR = R$color.coui_input_lock_screen_pwd_view_bg_color_desktop;
    public static final int SETTING = 0;
    public static final int SETTING1 = 2;
    private boolean mAllowNext;
    private COUILockScreenPwdInputView mInputView;
    private ImageView mNextIcon;
    private NextIconCheckListener mNextIconCheckListener;
    private COUIInputView.OnEditTextChangeListener mOnEditTextChangeListener;
    private final Rect mOplusOutLineRect;
    private OplusOutlineAdapter mOplusOutline;
    private int mScenesMode;

    public interface NextIconCheckListener {
        void checkedPwd(String str);
    }

    public COUILockScreenPwdInputLayout(Context context) {
        this(context, null);
    }

    private void changeNextTransparentImageResource(boolean z10) {
        if (this.mAllowNext == z10) {
            return;
        }
        this.mAllowNext = z10;
        if (z10 && this.mScenesMode == 1) {
            setAllowNextDesktopBackground();
            return;
        }
        if (!z10 && this.mScenesMode == 1) {
            setNormalNextDesktopBackground();
        } else if (z10) {
            setAllowNextSettingBackground();
        } else {
            setNormalNextSettingBackground();
        }
    }

    private void clipNextIconView() {
        ImageView imageView = this.mNextIcon;
        if (imageView == null) {
            return;
        }
        imageView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.input.COUILockScreenPwdInputLayout.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (RoundCornerUtil.getSmoothStyleType() != 1) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getHeight() / 2.0f);
                    return;
                }
                if (COUILockScreenPwdInputLayout.this.mOplusOutline == null) {
                    COUILockScreenPwdInputLayout.this.mOplusOutline = new OplusOutlineAdapter(outline, 1);
                }
                COUILockScreenPwdInputLayout.this.mOplusOutLineRect.set(0, 0, view.getWidth(), view.getHeight());
                COUILockScreenPwdInputLayout.this.mOplusOutline.setSmoothRoundRect(COUILockScreenPwdInputLayout.this.mOplusOutLineRect, (view.getHeight() * view.getScaleY()) / 2.0f);
            }
        });
        this.mNextIcon.setClipToOutline(true);
    }

    private void initAttr(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUILockScreenPwdInputLayout, i10, 0);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUILockScreenPwdInputLayout_couiEnableInputCount, false);
        int i11 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUILockScreenPwdInputLayout_couiInputMaxCount, 0);
        int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUILockScreenPwdInputLayout_couiInputType, 2);
        this.mScenesMode = typedArrayObtainStyledAttributes.getInt(R$styleable.COUILockScreenPwdInputLayout_couiIsScenesMode, 0);
        int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.COUILockScreenPwdInputLayout_couiInputMinCount, 6);
        typedArrayObtainStyledAttributes.recycle();
        COUILockScreenPwdInputView cOUILockScreenPwdInputView = (COUILockScreenPwdInputView) findViewById(R$id.coui_lock_screen_pwd_input_view);
        this.mInputView = cOUILockScreenPwdInputView;
        cOUILockScreenPwdInputView.lazyInitInputView(attributeSet, this.mScenesMode);
        this.mInputView.setInputType(i12);
        this.mInputView.setEnableInputCount(z10);
        this.mNextIcon = (ImageView) findViewById(R$id.iv_intput_next);
        initInputCountSetting(i11, i13);
        initListener();
        initScenesModeUI(context);
        COUIDarkModeUtil.setForceDarkAllow(this, false);
    }

    private void initInputCountSetting(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0 || i10 <= i11) {
            this.mInputView.setMaxCount(16);
            this.mInputView.setMinInputCount(6);
        } else {
            this.mInputView.setMaxCount(i10);
            this.mInputView.setMinInputCount(i11);
        }
    }

    private void initListener() {
        this.mNextIcon.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.input.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7276a.lambda$initListener$0(view);
            }
        });
        this.mInputView.setOnEditTextChangeListener(new COUIInputView.OnEditTextChangeListener() { // from class: com.coui.appcompat.input.b
            @Override // com.coui.appcompat.edittext.COUIInputView.OnEditTextChangeListener
            public final void afterTextChange(Editable editable) {
                this.f7277a.lambda$initListener$1(editable);
            }
        });
    }

    private void initScenesModeUI(Context context) {
        if (this.mScenesMode == 1) {
            clipNextIconView();
            this.mNextIcon.setBackgroundColor(COUIContextUtil.getColor(getContext(), R$color.coui_input_lock_screen_pwd_view_bg_color_desktop));
            this.mInputView.setBackgroundColor(COUIContextUtil.getColor(context, R$color.coui_input_lock_screen_pwd_view_bg_color_desktop));
            this.mInputView.setCheckBoxImageResourceDesktop();
            this.mInputView.getEditText().setTextColor(getResources().getColor(com.support.appcompat.R$color.coui_color_label_on_color, context.getTheme()));
            this.mInputView.getEditText().setEditTextColor(getResources().getColor(com.support.appcompat.R$color.coui_color_label_on_color, context.getTheme()));
            setNormalNextDesktopBackground();
        } else {
            this.mInputView.setBackgroundColor(COUIContextUtil.getAttrColor(context, R$attr.couiColorCard));
        }
        if (!this.mInputView.isEnableInputCount() || this.mInputView.getInputCount() >= this.mInputView.getMinInputCount()) {
            changeNextTransparentImageResource(true);
        } else {
            changeNextTransparentImageResource(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initListener$0(View view) {
        NextIconCheckListener nextIconCheckListener;
        if ((!this.mInputView.isEnableInputCount() || this.mInputView.getMinInputCount() <= this.mInputView.getInputCount()) && (nextIconCheckListener = this.mNextIconCheckListener) != null) {
            nextIconCheckListener.checkedPwd(this.mInputView.getEditText().getCouiEditTexttNoEllipsisText());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initListener$1(Editable editable) {
        if (this.mInputView.isEnableInputCount()) {
            if (this.mInputView.getMinInputCount() <= editable.length()) {
                changeNextTransparentImageResource(true);
            } else {
                changeNextTransparentImageResource(false);
            }
            if (editable.length() > this.mInputView.getMaxCount()) {
                this.mInputView.getEditText().setText(editable.subSequence(0, this.mInputView.getMaxCount()));
            }
        }
        COUIInputView.OnEditTextChangeListener onEditTextChangeListener = this.mOnEditTextChangeListener;
        if (onEditTextChangeListener != null) {
            onEditTextChangeListener.afterTextChange(editable);
        }
    }

    private void setAllowNextDesktopBackground() {
        this.mNextIcon.setImageResource(R$drawable.coui_input_lock_screen_pwd_next_desktop_src_allow);
    }

    private void setAllowNextSettingBackground() {
        this.mNextIcon.setImageResource(R$drawable.coui_input_lock_screen_pwd_next_src_allow);
        this.mNextIcon.setBackgroundResource(R$drawable.coui_input_lock_screen_pwd_next_bg);
    }

    private void setNormalNextDesktopBackground() {
        this.mNextIcon.setImageResource(R$drawable.coui_input_lock_screen_pwd_next_desktop_src);
    }

    private void setNormalNextSettingBackground() {
        this.mNextIcon.setBackgroundResource(R$drawable.coui_input_lock_screen_pwd_next_bg);
        this.mNextIcon.setImageResource(R$drawable.coui_input_lock_screen_pwd_next_src);
    }

    public void append(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mInputView.append(str);
    }

    public void clearInputText() {
        this.mInputView.getEditText().setCouiEditTexttNoEllipsisText("");
    }

    public void closeError() {
        if (this.mInputView.getEditText().isErrorState()) {
            this.mInputView.showError("");
        }
    }

    public COUILockScreenPwdInputView getInputView() {
        return this.mInputView;
    }

    protected int getLayoutResId() {
        return R$layout.coui_input_lock_screen_pwd_layout;
    }

    public ImageView getNextIconView() {
        return this.mNextIcon;
    }

    public boolean isErrorState() {
        return this.mInputView.getEditText().isErrorState();
    }

    public void popupKeyboard() {
        this.mInputView.getEditText().setFocusable(true);
        this.mInputView.getEditText().setFocusableInTouchMode(true);
        this.mInputView.getEditText().requestFocus();
    }

    public void removeLastInputText() {
        this.mInputView.removeLastInputText();
    }

    public void setCOUIEditTextChangeListener(COUIInputView.OnEditTextChangeListener onEditTextChangeListener) {
        this.mOnEditTextChangeListener = onEditTextChangeListener;
    }

    public boolean setCOUIInputMaxCount(int i10) {
        if (i10 <= 0 || i10 < this.mInputView.getMinInputCount()) {
            return false;
        }
        this.mInputView.setMaxCount(i10);
        return true;
    }

    public boolean setCOUIInputMinCount(int i10) {
        if (i10 <= 0 || i10 > this.mInputView.getMaxCount()) {
            return false;
        }
        this.mInputView.setMinInputCount(i10);
        if (!this.mInputView.isEnableInputCount() || this.mInputView.getMinInputCount() <= this.mInputView.getInputCount()) {
            changeNextTransparentImageResource(true);
        } else {
            changeNextTransparentImageResource(false);
        }
        return true;
    }

    public void setCOUIInputType(int i10) {
        this.mInputView.setInputType(i10);
    }

    public void setNextIcOnClickListener(NextIconCheckListener nextIconCheckListener) {
        this.mNextIconCheckListener = nextIconCheckListener;
    }

    public void showError() {
        this.mInputView.showError("error");
    }

    public void withCOUILengthLimit(boolean z10) {
        this.mInputView.setEnableInputCount(z10);
        if (!this.mInputView.isEnableInputCount() || this.mInputView.getInputCount() >= this.mInputView.getMinInputCount()) {
            changeNextTransparentImageResource(true);
        } else {
            changeNextTransparentImageResource(false);
        }
    }

    public COUILockScreenPwdInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUILockScreenPwdInputLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mOplusOutLineRect = new Rect();
        this.mScenesMode = 0;
        this.mAllowNext = false;
        LayoutInflater.from(getContext()).inflate(getLayoutResId(), (ViewGroup) this, true);
        initAttr(context, attributeSet, i10);
    }
}
