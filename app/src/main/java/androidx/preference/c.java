package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.c;

/* JADX INFO: loaded from: classes.dex */
public class c extends f {
    private static final String SAVE_STATE_ENTRIES = "ListPreferenceDialogFragment.entries";
    private static final String SAVE_STATE_ENTRY_VALUES = "ListPreferenceDialogFragment.entryValues";
    private static final String SAVE_STATE_INDEX = "ListPreferenceDialogFragment.index";
    int mClickedDialogEntryIndex;
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;

    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            c cVar = c.this;
            cVar.mClickedDialogEntryIndex = i10;
            cVar.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    public static c newInstance(String str) {
        c cVar = new c();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cVar.setArguments(bundle);
        return cVar;
    }

    private ListPreference o() {
        return (ListPreference) getPreference();
    }

    @Override // androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.mClickedDialogEntryIndex = bundle.getInt(SAVE_STATE_INDEX, 0);
            this.mEntries = bundle.getCharSequenceArray(SAVE_STATE_ENTRIES);
            this.mEntryValues = bundle.getCharSequenceArray(SAVE_STATE_ENTRY_VALUES);
            return;
        }
        ListPreference listPreferenceO = o();
        if (listPreferenceO.getEntries() == null || listPreferenceO.getEntryValues() == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.mClickedDialogEntryIndex = listPreferenceO.findIndexOfValue(listPreferenceO.getValue());
        this.mEntries = listPreferenceO.getEntries();
        this.mEntryValues = listPreferenceO.getEntryValues();
    }

    @Override // androidx.preference.f
    public void onDialogClosed(boolean z10) {
        int i10;
        if (!z10 || (i10 = this.mClickedDialogEntryIndex) < 0) {
            return;
        }
        String string = this.mEntryValues[i10].toString();
        ListPreference listPreferenceO = o();
        if (listPreferenceO.callChangeListener(string)) {
            listPreferenceO.setValue(string);
        }
    }

    @Override // androidx.preference.f
    protected void onPrepareDialogBuilder(c.a aVar) {
        super.onPrepareDialogBuilder(aVar);
        aVar.setSingleChoiceItems(this.mEntries, this.mClickedDialogEntryIndex, new a());
        aVar.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(SAVE_STATE_INDEX, this.mClickedDialogEntryIndex);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRIES, this.mEntries);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRY_VALUES, this.mEntryValues);
    }
}
