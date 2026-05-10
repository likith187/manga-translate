package com.coui.appcompat.dialog;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.c;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.coui.appcompat.clickablespan.COUIClickableSpan;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.support.dialog.R$dimen;
import com.support.dialog.R$id;
import com.support.dialog.R$string;
import com.support.dialog.R$style;

/* JADX INFO: loaded from: classes.dex */
public class COUISecurityAlertDialogBuilder extends COUIAlertDialogBuilder {
    private static final int DELAY = 70;
    private static final String TAG = "COUISecurityAlertDialogBuilder";
    private String mCheckBoxString;
    private Context mContext;
    private c mDialog;
    private boolean mHasCheckBox;
    private boolean mIsChecked;
    private boolean mIsShowStatementText;
    private int mLinkId;
    private DialogInterface.OnKeyListener mOnKeyListener;
    private OnLinkTextClickListener mOnLinkTextClickListener;
    private OnSelectedListener mOnSelectedListener;
    private int mStatementId;

    public interface OnLinkTextClickListener {
        void onLinkTextClick();
    }

    public interface OnSelectedListener {
        void onSelected(int i10, boolean z10);
    }

    public COUISecurityAlertDialogBuilder(Context context) {
        super(context, R$style.COUIAlertDialog_Security_Bottom);
        this.mHasCheckBox = true;
        this.mOnKeyListener = new DialogInterface.OnKeyListener() { // from class: com.coui.appcompat.dialog.COUISecurityAlertDialogBuilder.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                if (i10 != 4 || keyEvent.getAction() != 0 || COUISecurityAlertDialogBuilder.this.mDialog == null || !COUISecurityAlertDialogBuilder.this.mDialog.isShowing() || COUISecurityAlertDialogBuilder.this.mOnSelectedListener == null) {
                    return false;
                }
                COUISecurityAlertDialogBuilder.this.mOnSelectedListener.onSelected(-2, COUISecurityAlertDialogBuilder.this.mIsChecked);
                return false;
            }
        };
        this.mContext = context;
        init();
    }

    private DialogInterface.OnClickListener getDefaultButtonClickListener() {
        return new DialogInterface.OnClickListener() { // from class: com.coui.appcompat.dialog.COUISecurityAlertDialogBuilder.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (COUISecurityAlertDialogBuilder.this.mOnSelectedListener != null) {
                    COUISecurityAlertDialogBuilder.this.mOnSelectedListener.onSelected(i10, COUISecurityAlertDialogBuilder.this.mIsChecked);
                }
            }
        };
    }

    private SpannableStringBuilder getStatementStringBuilder(String str, int i10, int i11) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        COUIClickableSpan cOUIClickableSpan = new COUIClickableSpan(this.mContext);
        cOUIClickableSpan.setStatusBarClickListener(new COUIClickableSpan.SpannableStrClickListener() { // from class: com.coui.appcompat.dialog.COUISecurityAlertDialogBuilder.2
            @Override // com.coui.appcompat.clickablespan.COUIClickableSpan.SpannableStrClickListener
            public void onClick() {
                if (COUISecurityAlertDialogBuilder.this.mOnLinkTextClickListener != null) {
                    COUISecurityAlertDialogBuilder.this.mOnLinkTextClickListener.onLinkTextClick();
                }
            }
        });
        spannableStringBuilder.setSpan(cOUIClickableSpan, i10, i11 + i10, 33);
        return spannableStringBuilder;
    }

    private View.OnTouchListener getStatementTextTouchListener(final int i10, final int i11) {
        return new View.OnTouchListener() { // from class: com.coui.appcompat.dialog.COUISecurityAlertDialogBuilder.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!(view instanceof TextView)) {
                    return false;
                }
                int actionMasked = motionEvent.getActionMasked();
                int offsetForPosition = ((TextView) view).getOffsetForPosition(motionEvent.getX(), motionEvent.getY());
                int i12 = i10;
                boolean z10 = offsetForPosition <= i12 || offsetForPosition >= i12 + i11;
                if (actionMasked != 0) {
                    if (actionMasked == 1 || actionMasked == 3) {
                        view.setPressed(false);
                        view.postInvalidateDelayed(70L);
                    }
                } else {
                    if (z10) {
                        return true;
                    }
                    view.setPressed(true);
                    view.invalidate();
                }
                return false;
            }
        };
    }

    private void init() {
        this.mCheckBoxString = this.mContext.getString(R$string.coui_security_alertdialog_checkbox_msg);
    }

    private void initCheckBox() {
        c cVar = this.mDialog;
        if (cVar == null) {
            return;
        }
        View viewFindViewById = cVar.findViewById(R$id.coui_security_alert_dialog_checkbox);
        if (viewFindViewById instanceof COUICheckBox) {
            if (!this.mHasCheckBox) {
                viewFindViewById.setVisibility(8);
                return;
            }
            viewFindViewById.setVisibility(0);
            COUICheckBox cOUICheckBox = (COUICheckBox) viewFindViewById;
            cOUICheckBox.setChecked(this.mIsChecked);
            cOUICheckBox.setText(this.mCheckBoxString);
            cOUICheckBox.setTextSize(0, COUIChangeTextUtil.getSuitableFontSize(this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_security_alert_dialog_checkbox_text_size), this.mContext.getResources().getConfiguration().fontScale, 5));
            cOUICheckBox.setOnStateChangeListener(new COUICheckBox.OnStateChangeListener() { // from class: com.coui.appcompat.dialog.COUISecurityAlertDialogBuilder.4
                @Override // com.coui.appcompat.checkbox.COUICheckBox.OnStateChangeListener
                public void onStateChanged(COUICheckBox cOUICheckBox2, int i10) {
                    COUISecurityAlertDialogBuilder.this.mIsChecked = i10 == 2;
                    if (COUISecurityAlertDialogBuilder.this.mOnSelectedListener != null) {
                        COUISecurityAlertDialogBuilder.this.mOnSelectedListener.onSelected(0, COUISecurityAlertDialogBuilder.this.mIsChecked);
                    }
                }
            });
        }
    }

    private void initMessageText() {
        c cVar = this.mDialog;
        if (cVar == null) {
            return;
        }
        View viewFindViewById = cVar.findViewById(R.id.message);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setTextSize(0, (int) COUIChangeTextUtil.getSuitableFontSize(this.mContext.getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_builder_message_text_size), this.mContext.getResources().getConfiguration().fontScale, 5));
        }
    }

    private void initStatementText() {
        TextView textView;
        c cVar = this.mDialog;
        if (cVar == null || (textView = (TextView) cVar.findViewById(R$id.coui_security_alertdialog_statement)) == null) {
            return;
        }
        if (!this.mIsShowStatementText) {
            textView.setVisibility(8);
            return;
        }
        int i10 = this.mLinkId;
        String string = i10 <= 0 ? this.mContext.getString(R$string.coui_security_alertdailog_privacy) : this.mContext.getString(i10);
        int i11 = this.mStatementId;
        String string2 = i11 <= 0 ? this.mContext.getString(R$string.coui_security_alertdailog_statement, string) : this.mContext.getString(i11, string);
        int iIndexOf = string2.indexOf(string);
        int length = string.length();
        textView.setVisibility(0);
        textView.setHighlightColor(0);
        textView.setText(getStatementStringBuilder(string2, iIndexOf, length));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setOnTouchListener(getStatementTextTouchListener(iIndexOf, length));
    }

    private void initView() {
        initMessageText();
        initStatementText();
        initCheckBox();
    }

    @Override // com.coui.appcompat.dialog.COUIAlertDialogBuilder, androidx.appcompat.app.c.a
    public c create() {
        super.setOnKeyListener(this.mOnKeyListener);
        c cVarCreate = super.create();
        this.mDialog = cVarCreate;
        return cVarCreate;
    }

    public COUISecurityAlertDialogBuilder setCheckBoxString(String str) {
        this.mCheckBoxString = str;
        return this;
    }

    public COUISecurityAlertDialogBuilder setChecked(boolean z10) {
        this.mIsChecked = z10;
        return this;
    }

    public COUISecurityAlertDialogBuilder setHasCheckBox(boolean z10) {
        this.mHasCheckBox = z10;
        return this;
    }

    public COUISecurityAlertDialogBuilder setNegativeString(String str) {
        super.setNegativeButton((CharSequence) str, getDefaultButtonClickListener());
        return this;
    }

    public COUISecurityAlertDialogBuilder setOnLinkTextClickListener(OnLinkTextClickListener onLinkTextClickListener) {
        this.mOnLinkTextClickListener = onLinkTextClickListener;
        return this;
    }

    public COUISecurityAlertDialogBuilder setOnSelectedListener(OnSelectedListener onSelectedListener) {
        this.mOnSelectedListener = onSelectedListener;
        return this;
    }

    public COUISecurityAlertDialogBuilder setPositiveString(String str) {
        super.setPositiveButton((CharSequence) str, getDefaultButtonClickListener());
        return this;
    }

    public COUISecurityAlertDialogBuilder setShowStatementText(boolean z10) {
        this.mIsShowStatementText = z10;
        return this;
    }

    public COUISecurityAlertDialogBuilder setStatementLinkString(int i10, int i11) {
        if (i10 <= 0) {
            this.mStatementId = -1;
        } else {
            String string = this.mContext.getString(i10);
            if (TextUtils.isEmpty(string) || !(string.contains("%1$s") || string.contains("%s"))) {
                this.mStatementId = -1;
            } else {
                this.mStatementId = i10;
            }
        }
        this.mLinkId = i11;
        return this;
    }

    @Override // com.coui.appcompat.dialog.COUIAlertDialogBuilder, androidx.appcompat.app.c.a
    public c show() {
        this.mDialog = super.show();
        initView();
        return this.mDialog;
    }

    @Override // com.coui.appcompat.dialog.COUIAlertDialogBuilder
    public void updateViewAfterShown() {
        super.updateViewAfterShown();
        initView();
    }

    public COUISecurityAlertDialogBuilder setCheckBoxString(int i10) {
        this.mCheckBoxString = this.mContext.getString(i10);
        return this;
    }

    public COUISecurityAlertDialogBuilder setNegativeString(int i10) {
        super.setNegativeButton(i10, getDefaultButtonClickListener());
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUISecurityAlertDialogBuilder setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        this.mOnKeyListener = onKeyListener;
        super.setOnKeyListener(onKeyListener);
        return this;
    }

    public COUISecurityAlertDialogBuilder setPositiveString(int i10) {
        super.setPositiveButton(i10, getDefaultButtonClickListener());
        return this;
    }

    public COUISecurityAlertDialogBuilder(Context context, int i10) {
        super(context, i10, R$style.COUIAlertDialog_Security_Bottom);
        this.mHasCheckBox = true;
        this.mOnKeyListener = new DialogInterface.OnKeyListener() { // from class: com.coui.appcompat.dialog.COUISecurityAlertDialogBuilder.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i102, KeyEvent keyEvent) {
                if (i102 != 4 || keyEvent.getAction() != 0 || COUISecurityAlertDialogBuilder.this.mDialog == null || !COUISecurityAlertDialogBuilder.this.mDialog.isShowing() || COUISecurityAlertDialogBuilder.this.mOnSelectedListener == null) {
                    return false;
                }
                COUISecurityAlertDialogBuilder.this.mOnSelectedListener.onSelected(-2, COUISecurityAlertDialogBuilder.this.mIsChecked);
                return false;
            }
        };
        this.mContext = context;
        init();
    }

    public COUISecurityAlertDialogBuilder(Context context, int i10, int i11) {
        super(context, i10, i11);
        this.mHasCheckBox = true;
        this.mOnKeyListener = new DialogInterface.OnKeyListener() { // from class: com.coui.appcompat.dialog.COUISecurityAlertDialogBuilder.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i102, KeyEvent keyEvent) {
                if (i102 != 4 || keyEvent.getAction() != 0 || COUISecurityAlertDialogBuilder.this.mDialog == null || !COUISecurityAlertDialogBuilder.this.mDialog.isShowing() || COUISecurityAlertDialogBuilder.this.mOnSelectedListener == null) {
                    return false;
                }
                COUISecurityAlertDialogBuilder.this.mOnSelectedListener.onSelected(-2, COUISecurityAlertDialogBuilder.this.mIsChecked);
                return false;
            }
        };
        this.mContext = context;
        init();
    }
}
