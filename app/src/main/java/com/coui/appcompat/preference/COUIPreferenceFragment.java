package com.coui.appcompat.preference;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.c;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import androidx.preference.g;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.support.preference.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class COUIPreferenceFragment extends g {
    private static final String DIALOG_FRAGMENT_TAG = "androidx.preference.PreferenceFragment.DIALOG";
    private boolean mEnableInternalDivider = true;
    private COUIPreferenceItemDecoration mPreferenceItemDecoration;

    public COUIPreferenceItemDecoration getItemDecoration() {
        return this.mPreferenceItemDecoration;
    }

    @Override // androidx.preference.g
    public void onCreatePreferences(Bundle bundle, String str) {
    }

    @Override // androidx.preference.g
    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        COUIRecyclerView cOUIRecyclerView = (COUIRecyclerView) layoutInflater.inflate(R$layout.coui_preference_recyclerview, viewGroup, false);
        cOUIRecyclerView.setEnablePointerDownAction(false);
        cOUIRecyclerView.setLayoutManager(onCreateLayoutManager());
        COUIDarkModeUtil.setForceDarkAllow(cOUIRecyclerView, false);
        return cOUIRecyclerView;
    }

    @Override // androidx.preference.g, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        setDivider(null);
        setDividerHeight(0);
        return viewOnCreateView;
    }

    @Override // androidx.preference.g, androidx.fragment.app.Fragment
    public void onDestroyView() {
        COUIPreferenceItemDecoration cOUIPreferenceItemDecoration = this.mPreferenceItemDecoration;
        if (cOUIPreferenceItemDecoration != null) {
            cOUIPreferenceItemDecoration.onDestroy();
        }
        super.onDestroyView();
    }

    @Override // androidx.preference.g, androidx.preference.j.a
    public void onDisplayPreferenceDialog(Preference preference) {
        c cVarNewInstance;
        if (getFragmentManager().h0(DIALOG_FRAGMENT_TAG) != null) {
            return;
        }
        if (preference instanceof COUIActivityDialogPreference) {
            cVarNewInstance = COUIActivityDialogFragment.newInstance(preference.getKey());
        } else if (preference instanceof COUIEditTextPreference) {
            cVarNewInstance = COUIEditTextPreferenceDialogFragment.newInstance(preference.getKey());
        } else if (preference instanceof COUIMultiSelectListPreference) {
            cVarNewInstance = COUIMultiSelectListPreferenceDialogFragment.newInstance(preference.getKey());
        } else {
            if (!(preference instanceof ListPreference)) {
                super.onDisplayPreferenceDialog(preference);
                return;
            }
            cVarNewInstance = COUIListPreferenceDialogFragment.newInstance(preference.getKey());
        }
        cVarNewInstance.setTargetFragment(this, 0);
        cVarNewInstance.show(getFragmentManager(), DIALOG_FRAGMENT_TAG);
    }

    @Override // androidx.preference.g, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (getListView() == null || this.mPreferenceItemDecoration == null || !this.mEnableInternalDivider) {
            return;
        }
        getListView().removeItemDecoration(this.mPreferenceItemDecoration);
        if (this.mPreferenceItemDecoration.getPreferenceScreen() == null) {
            this.mPreferenceItemDecoration = new COUIPreferenceItemDecoration(getContext(), getPreferenceScreen());
        }
        getListView().addItemDecoration(this.mPreferenceItemDecoration);
    }

    public void setEnableCOUIPreferenceDivider(boolean z10) throws NullPointerException {
        this.mEnableInternalDivider = z10;
        if (!z10) {
            if (getListView() != null) {
                getListView().removeItemDecoration(this.mPreferenceItemDecoration);
            }
        } else {
            if (getListView() == null || this.mPreferenceItemDecoration == null) {
                return;
            }
            getListView().removeItemDecoration(this.mPreferenceItemDecoration);
            if (this.mPreferenceItemDecoration.getPreferenceScreen() == null) {
                this.mPreferenceItemDecoration = new COUIPreferenceItemDecoration(getContext(), getPreferenceScreen());
            }
            getListView().addItemDecoration(this.mPreferenceItemDecoration);
        }
    }

    @Override // androidx.preference.g
    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        if (preferenceScreen == getPreferenceScreen()) {
            return;
        }
        super.setPreferenceScreen(preferenceScreen);
        if (this.mPreferenceItemDecoration != null && getListView() != null) {
            getListView().removeItemDecoration(this.mPreferenceItemDecoration);
        }
        this.mPreferenceItemDecoration = new COUIPreferenceItemDecoration(getContext(), preferenceScreen);
        if (getListView() == null || !this.mEnableInternalDivider) {
            return;
        }
        getListView().addItemDecoration(this.mPreferenceItemDecoration);
    }
}
