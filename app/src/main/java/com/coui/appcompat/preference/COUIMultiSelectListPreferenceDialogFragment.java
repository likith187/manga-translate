package com.coui.appcompat.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Point;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.preference.d;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.dialog.adapter.ChoiceListAdapter;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.dialog.R$id;
import com.support.dialog.R$layout;
import com.support.dialog.R$style;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class COUIMultiSelectListPreferenceDialogFragment extends d {
    private static final String SAVE_STATE_BLUR_ANIM_LAVEL = "ListPreferenceDialogFragment.SAVE_STATE_BLUR_ANIM_LAVEL";
    private static final String SAVE_STATE_BLUR_BACKGROUND = "ListPreferenceDialogFragment.SAVE_STATE_BLUR_BACKGROUND";
    private static final String SAVE_STATE_FOLLOWHAND = "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND";
    private static final String SAVE_STATE_VALUES = "COUIMultiSelectListPreferenceDialogFragment.values";
    private static final String TAG = "COUIMultiSelectListPreferenceDialogFragment-hkl";
    private ChoiceListAdapter mAdapter;
    private COUIAlertDialogBuilder mBuilder;
    private boolean[] mCheckboxStates;
    private CharSequence mDialogMessage;
    private CharSequence mDialogTitle;
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;
    private CharSequence mNegativeButtonText;
    private CharSequence mPositiveButtonText;
    private COUIMultiSelectListPreference mPreference;
    private CharSequence[] mSummaries;
    private boolean mIfFollowHand = true;
    private boolean mBlurBackground = false;
    private AnimLevel mBlurMinAnimLevel = UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN;

    private boolean[] getCheckboxStatesFromValues(Set<String> set) {
        boolean[] zArr = new boolean[this.mEntries.length];
        int i10 = 0;
        while (true) {
            CharSequence[] charSequenceArr = this.mEntries;
            if (i10 >= charSequenceArr.length) {
                return zArr;
            }
            zArr[i10] = set.contains(charSequenceArr[i10].toString());
            i10++;
        }
    }

    private Set<String> getSelectedValues() {
        HashSet hashSet = new HashSet();
        boolean[] checkBoxStates = this.mAdapter.getCheckBoxStates();
        for (int i10 = 0; i10 < checkBoxStates.length; i10++) {
            CharSequence[] charSequenceArr = this.mEntryValues;
            if (i10 >= charSequenceArr.length) {
                break;
            }
            if (checkBoxStates[i10]) {
                hashSet.add(charSequenceArr[i10].toString());
            }
        }
        return hashSet;
    }

    public static COUIMultiSelectListPreferenceDialogFragment newInstance(String str) {
        COUIMultiSelectListPreferenceDialogFragment cOUIMultiSelectListPreferenceDialogFragment = new COUIMultiSelectListPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cOUIMultiSelectListPreferenceDialogFragment.setArguments(bundle);
        return cOUIMultiSelectListPreferenceDialogFragment;
    }

    @Override // androidx.preference.d, androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        COUIMultiSelectListPreference cOUIMultiSelectListPreference = (COUIMultiSelectListPreference) getPreference();
        this.mPreference = cOUIMultiSelectListPreference;
        this.mDialogTitle = cOUIMultiSelectListPreference.getDialogTitle();
        this.mDialogMessage = this.mPreference.getDialogMessage();
        this.mEntries = this.mPreference.getEntries();
        this.mEntryValues = this.mPreference.getEntryValues();
        this.mSummaries = this.mPreference.getSummaries();
        this.mPositiveButtonText = this.mPreference.getPositiveButtonText();
        this.mNegativeButtonText = this.mPreference.getNegativeButtonText();
        if (bundle == null) {
            this.mCheckboxStates = getCheckboxStatesFromValues(this.mPreference.getValues());
            this.mIfFollowHand = this.mPreference.isIfFollowHand();
            this.mBlurBackground = this.mPreference.isBlurBackground();
            this.mBlurMinAnimLevel = this.mPreference.getBlurMinAnimLevel();
            return;
        }
        this.mCheckboxStates = bundle.getBooleanArray(SAVE_STATE_VALUES);
        this.mIfFollowHand = bundle.getBoolean(SAVE_STATE_FOLLOWHAND);
        this.mBlurBackground = bundle.getBoolean(SAVE_STATE_BLUR_BACKGROUND);
        this.mBlurMinAnimLevel = AnimLevel.valueOf(bundle.getInt(SAVE_STATE_BLUR_ANIM_LAVEL, UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN.getIntValue()));
    }

    @Override // androidx.preference.f, androidx.fragment.app.c
    public Dialog onCreateDialog(Bundle bundle) {
        Point lastTouchPoint;
        View preferenceView;
        this.mAdapter = new ChoiceListAdapter(getContext(), R$layout.coui_select_dialog_multichoice, this.mEntries, this.mSummaries, this.mCheckboxStates, true) { // from class: com.coui.appcompat.preference.COUIMultiSelectListPreferenceDialogFragment.1
            @Override // com.coui.appcompat.dialog.adapter.ChoiceListAdapter, android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i10, view, viewGroup);
                View viewFindViewById = view2.findViewById(R$id.item_divider);
                int count = getCount();
                if (viewFindViewById != null) {
                    if (count == 1 || i10 == count - 1) {
                        viewFindViewById.setVisibility(8);
                    } else {
                        viewFindViewById.setVisibility(0);
                    }
                }
                return view2;
            }
        };
        Context context = getContext();
        Objects.requireNonNull(context);
        COUIAlertDialogBuilder blurBackgroundDrawable = new COUIAlertDialogBuilder(context, R$style.COUIAlertDialog_BottomAssignment).setTitle(this.mDialogTitle).setMessage(this.mDialogMessage).setAdapter((ListAdapter) this.mAdapter, (DialogInterface.OnClickListener) this).setPositiveButton(this.mPositiveButtonText, (DialogInterface.OnClickListener) this).setNegativeButton(this.mNegativeButtonText, (DialogInterface.OnClickListener) this).setBlurBackgroundDrawable(this.mBlurBackground, this.mBlurMinAnimLevel);
        this.mBuilder = blurBackgroundDrawable;
        if (!this.mIfFollowHand) {
            return blurBackgroundDrawable.create();
        }
        Point point = new Point();
        COUIMultiSelectListPreference cOUIMultiSelectListPreference = this.mPreference;
        if (cOUIMultiSelectListPreference != null) {
            preferenceView = cOUIMultiSelectListPreference.getPreferenceView();
            lastTouchPoint = this.mPreference.getLastTouchPoint();
        } else {
            lastTouchPoint = point;
            preferenceView = null;
        }
        return preferenceView == null ? this.mBuilder.create() : this.mBuilder.create(preferenceView, lastTouchPoint);
    }

    @Override // androidx.preference.d, androidx.preference.f
    public void onDialogClosed(boolean z10) {
        COUIMultiSelectListPreference cOUIMultiSelectListPreference;
        super.onDialogClosed(z10);
        if (z10) {
            Set<String> selectedValues = getSelectedValues();
            if (getPreference() == null || (cOUIMultiSelectListPreference = (COUIMultiSelectListPreference) getPreference()) == null || !cOUIMultiSelectListPreference.callChangeListener(selectedValues)) {
                return;
            }
            cOUIMultiSelectListPreference.setValues(selectedValues);
        }
    }

    @Override // androidx.preference.d, androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBooleanArray(SAVE_STATE_VALUES, this.mAdapter.getCheckBoxStates());
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
