package com.coui.appcompat.preference;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Point;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.preference.c;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.dialog.adapter.ChoiceListAdapter;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.dialog.R$id;
import com.support.dialog.R$layout;
import com.support.dialog.R$style;
import com.support.preference.R$string;

/* JADX INFO: loaded from: classes.dex */
public class COUIListPreferenceDialogFragment extends c {
    private static final String SAVE_STATE_BLUR_ANIM_LAVEL = "ListPreferenceDialogFragment.SAVE_STATE_BLUR_ANIM_LAVEL";
    private static final String SAVE_STATE_BLUR_BACKGROUND = "ListPreferenceDialogFragment.SAVE_STATE_BLUR_BACKGROUND";
    private static final String SAVE_STATE_FOLLOWHAND = "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND";
    private static final String SAVE_STATE_INDEX = "COUIListPreferenceDialogFragment.index";
    private COUIAlertDialogBuilder mBuilder;
    private CharSequence mDialogMessage;
    private CharSequence mDialogTitle;
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;
    private COUIListPreference mPreference;
    private CharSequence[] mSummaries;
    private int mClickedDialogEntryIndex = -1;
    private boolean mIfFollowHand = true;
    private boolean mBlurBackground = false;
    private AnimLevel mBlurMinAnimLevel = UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN;

    public static COUIListPreferenceDialogFragment newInstance(String str) {
        COUIListPreferenceDialogFragment cOUIListPreferenceDialogFragment = new COUIListPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cOUIListPreferenceDialogFragment.setArguments(bundle);
        return cOUIListPreferenceDialogFragment;
    }

    private void saveSelectedIndex() {
        int i10 = this.mClickedDialogEntryIndex;
        if (i10 >= 0) {
            CharSequence[] charSequenceArr = this.mEntryValues;
            if (i10 < charSequenceArr.length) {
                String string = charSequenceArr[i10].toString();
                if (getPreference() != null) {
                    COUIListPreference cOUIListPreference = (COUIListPreference) getPreference();
                    if (cOUIListPreference.callChangeListener(string)) {
                        cOUIListPreference.setValue(string);
                    }
                }
            }
        }
    }

    @Override // androidx.preference.c, androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        COUIListPreference cOUIListPreference = (COUIListPreference) getPreference();
        this.mPreference = cOUIListPreference;
        if (bundle != null) {
            this.mClickedDialogEntryIndex = bundle.getInt(SAVE_STATE_INDEX, -1);
            this.mIfFollowHand = bundle.getBoolean(SAVE_STATE_FOLLOWHAND);
            this.mBlurBackground = bundle.getBoolean(SAVE_STATE_BLUR_BACKGROUND);
            this.mBlurMinAnimLevel = AnimLevel.valueOf(bundle.getInt(SAVE_STATE_BLUR_ANIM_LAVEL, UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN.getIntValue()));
        } else {
            if (cOUIListPreference.getEntries() == null || this.mPreference.getEntryValues() == null) {
                throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
            }
            COUIListPreference cOUIListPreference2 = this.mPreference;
            this.mClickedDialogEntryIndex = cOUIListPreference2.findIndexOfValue(cOUIListPreference2.getValue());
            this.mIfFollowHand = this.mPreference.isIfFollowHand();
            this.mBlurBackground = this.mPreference.isBlurBackground();
            this.mBlurMinAnimLevel = this.mPreference.getBlurMinAnimLevel();
        }
        this.mDialogTitle = this.mPreference.getDialogTitle();
        this.mDialogMessage = this.mPreference.getDialogMessage();
        this.mSummaries = this.mPreference.getSummaries();
        this.mEntries = this.mPreference.getEntries();
        this.mEntryValues = this.mPreference.getEntryValues();
    }

    @Override // androidx.preference.f, androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        boolean[] zArr;
        int i10;
        CharSequence[] charSequenceArr = this.mEntries;
        View preferenceView = null;
        if (charSequenceArr == null || (i10 = this.mClickedDialogEntryIndex) < 0 || i10 >= charSequenceArr.length) {
            zArr = null;
        } else {
            boolean[] zArr2 = new boolean[charSequenceArr.length];
            zArr2[i10] = true;
            zArr = zArr2;
        }
        COUIAlertDialogBuilder adapter = new COUIAlertDialogBuilder(requireContext(), R$style.COUIAlertDialog_BottomAssignment).setTitle(this.mDialogTitle).setMessage(this.mDialogMessage).setNegativeButton(R$string.dialog_cancel, (DialogInterface.OnClickListener) null).setBlurBackgroundDrawable(this.mBlurBackground, this.mBlurMinAnimLevel).setAdapter((ListAdapter) new ChoiceListAdapter(getContext(), R$layout.coui_select_dialog_singlechoice, this.mEntries, this.mSummaries, zArr, false) { // from class: com.coui.appcompat.preference.COUIListPreferenceDialogFragment.1
            @Override // com.coui.appcompat.dialog.adapter.ChoiceListAdapter, android.widget.Adapter
            public View getView(int i11, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i11, view, viewGroup);
                View viewFindViewById = view2.findViewById(R$id.item_divider);
                int count = getCount();
                if (viewFindViewById != null) {
                    if (count == 1 || i11 == count - 1) {
                        viewFindViewById.setVisibility(8);
                    } else {
                        viewFindViewById.setVisibility(0);
                    }
                }
                return view2;
            }
        }, new DialogInterface.OnClickListener() { // from class: com.coui.appcompat.preference.COUIListPreferenceDialogFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i11) {
                COUIListPreferenceDialogFragment.this.mClickedDialogEntryIndex = i11;
                COUIListPreferenceDialogFragment.this.onClick(dialogInterface, -1);
                dialogInterface.dismiss();
            }
        });
        this.mBuilder = adapter;
        if (!this.mIfFollowHand) {
            return adapter.create();
        }
        Point point = new Point();
        COUIListPreference cOUIListPreference = this.mPreference;
        if (cOUIListPreference != null) {
            preferenceView = cOUIListPreference.getPreferenceView();
            point = this.mPreference.getLastTouchPoint();
        }
        return preferenceView == null ? this.mBuilder.create() : this.mBuilder.create(preferenceView, point);
    }

    @Override // androidx.preference.c, androidx.preference.f
    public void onDialogClosed(boolean z10) {
        if (!z10 || this.mEntries == null) {
            return;
        }
        saveSelectedIndex();
    }

    @Override // androidx.preference.c, androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(SAVE_STATE_INDEX, this.mClickedDialogEntryIndex);
        bundle.putBoolean(SAVE_STATE_FOLLOWHAND, this.mIfFollowHand);
        bundle.putBoolean(SAVE_STATE_BLUR_BACKGROUND, this.mBlurBackground);
        bundle.putInt(SAVE_STATE_BLUR_ANIM_LAVEL, this.mBlurMinAnimLevel.getIntValue());
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (getPreference() == null) {
            dismiss();
            return;
        }
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = this.mBuilder;
        if (cOUIAlertDialogBuilder != null) {
            cOUIAlertDialogBuilder.updateViewAfterShown();
        }
    }
}
