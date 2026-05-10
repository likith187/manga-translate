package androidx.preference;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class ListPreferenceDialogFragment extends PreferenceDialogFragment {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f2887l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CharSequence[] f2888m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private CharSequence[] f2889n;

    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            ListPreferenceDialogFragment listPreferenceDialogFragment = ListPreferenceDialogFragment.this;
            listPreferenceDialogFragment.f2887l = i10;
            listPreferenceDialogFragment.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    @Deprecated
    public ListPreferenceDialogFragment() {
    }

    private ListPreference h() {
        return (ListPreference) a();
    }

    public static ListPreferenceDialogFragment i(String str) {
        ListPreferenceDialogFragment listPreferenceDialogFragment = new ListPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        listPreferenceDialogFragment.setArguments(bundle);
        return listPreferenceDialogFragment;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public void e(boolean z10) {
        int i10;
        ListPreference listPreferenceH = h();
        if (!z10 || (i10 = this.f2887l) < 0) {
            return;
        }
        String string = this.f2889n[i10].toString();
        if (listPreferenceH.callChangeListener(string)) {
            listPreferenceH.setValue(string);
        }
    }

    @Override // androidx.preference.PreferenceDialogFragment
    protected void f(AlertDialog.Builder builder) {
        super.f(builder);
        builder.setSingleChoiceItems(this.f2888m, this.f2887l, new a());
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f2887l = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.f2888m = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.f2889n = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreferenceH = h();
        if (listPreferenceH.getEntries() == null || listPreferenceH.getEntryValues() == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f2887l = listPreferenceH.findIndexOfValue(listPreferenceH.getValue());
        this.f2888m = listPreferenceH.getEntries();
        this.f2889n = listPreferenceH.getEntryValues();
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f2887l);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f2888m);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f2889n);
    }
}
