package com.coui.appcompat.preference;

import android.R;
import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.c;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.DialogPreference;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.edittext.COUIEditText;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.dialog.R$style;

/* JADX INFO: loaded from: classes.dex */
public class COUIEditTextPreferenceDialogFragment extends androidx.preference.a {
    private static final String SAVE_STATE_BLUR_BACKGROUND = "ListPreferenceDialogFragment.SAVE_STATE_BLUR_BACKGROUND";
    private static final String SAVE_STATE_TEXT = "EditTextPreferenceDialogFragment.text";
    private static final String TAG = "COUIEditTextPreferenceDialogFragment";
    private boolean mBlurBackground = false;
    private AnimLevel mBlurMinAnimLevel = UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN;
    private COUIEditText mEditText;

    private COUIAlertDialogBuilder initCOUIAlertDialogBuilder() {
        return new COUIAlertDialogBuilder(requireContext(), R$style.COUIAlertDialog_BottomAssignment).setTitle(getPreference().getDialogTitle()).setMessage(getPreference().getDialogMessage()).setPositiveButton(getPreference().getPositiveButtonText(), (DialogInterface.OnClickListener) this).setNegativeButton(getPreference().getNegativeButtonText(), (DialogInterface.OnClickListener) this);
    }

    public static COUIEditTextPreferenceDialogFragment newInstance(String str) {
        COUIEditTextPreferenceDialogFragment cOUIEditTextPreferenceDialogFragment = new COUIEditTextPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cOUIEditTextPreferenceDialogFragment.setArguments(bundle);
        return cOUIEditTextPreferenceDialogFragment;
    }

    @Override // androidx.preference.f, androidx.fragment.app.c
    @SuppressLint({"LongLogTag"})
    public Dialog onCreateDialog(Bundle bundle) {
        COUIEditTextPreference cOUIEditTextPreference;
        FragmentActivity activity = getActivity();
        COUIAlertDialogBuilder cOUIAlertDialogBuilderInitCOUIAlertDialogBuilder = initCOUIAlertDialogBuilder();
        View viewOnCreateDialogView = onCreateDialogView(activity);
        if (viewOnCreateDialogView == null) {
            Log.d(TAG, "COUIEditTextPreferenceDialogFragment  contentView == null ");
            return cOUIAlertDialogBuilderInitCOUIAlertDialogBuilder.create();
        }
        this.mEditText = (COUIEditText) viewOnCreateDialogView.findViewById(R.id.edit);
        onBindDialogView(viewOnCreateDialogView);
        cOUIAlertDialogBuilderInitCOUIAlertDialogBuilder.setView(viewOnCreateDialogView);
        if (getPreference() != null) {
            onBindDialogView(viewOnCreateDialogView);
        }
        onPrepareDialogBuilder(cOUIAlertDialogBuilderInitCOUIAlertDialogBuilder);
        DialogPreference preference = getPreference();
        if (preference == null || !(preference instanceof COUIEditTextPreference)) {
            cOUIEditTextPreference = null;
        } else {
            cOUIEditTextPreference = (COUIEditTextPreference) preference;
            this.mBlurBackground = cOUIEditTextPreference.isBlurBackground();
            this.mBlurMinAnimLevel = cOUIEditTextPreference.getBlurMinAnimLevel();
        }
        final c cVarCreate = cOUIAlertDialogBuilderInitCOUIAlertDialogBuilder.setBlurBackgroundDrawable(this.mBlurBackground, this.mBlurMinAnimLevel).create();
        final boolean zIsSupportEmptyInput = cOUIEditTextPreference != null ? cOUIEditTextPreference.isSupportEmptyInput() : false;
        this.mEditText.addTextChangedListener(new TextWatcher() { // from class: com.coui.appcompat.preference.COUIEditTextPreferenceDialogFragment.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                Button buttonF = cVarCreate.f(-1);
                if (buttonF == null || zIsSupportEmptyInput) {
                    return;
                }
                buttonF.setEnabled(!TextUtils.isEmpty(editable));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }
        });
        return cVarCreate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        COUIEditText cOUIEditText = this.mEditText;
        if (cOUIEditText != null) {
            cOUIEditText.setFocusable(true);
            this.mEditText.requestFocus();
            if (getDialog() != null) {
                getDialog().getWindow().setSoftInputMode(5);
            }
        }
    }

    @Override // androidx.preference.a, androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        COUIEditText cOUIEditText = this.mEditText;
        if (cOUIEditText != null) {
            bundle.putCharSequence(SAVE_STATE_TEXT, cOUIEditText.getText());
            bundle.putBoolean(SAVE_STATE_BLUR_BACKGROUND, this.mBlurBackground);
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (getPreference() == null) {
            dismiss();
        }
    }
}
