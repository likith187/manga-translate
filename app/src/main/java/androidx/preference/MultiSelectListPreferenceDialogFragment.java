package androidx.preference;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class MultiSelectListPreferenceDialogFragment extends PreferenceDialogFragment {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Set f2892l = new HashSet();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f2893m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    CharSequence[] f2894n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    CharSequence[] f2895o;

    class a implements DialogInterface.OnMultiChoiceClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public void onClick(DialogInterface dialogInterface, int i10, boolean z10) {
            if (z10) {
                MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = MultiSelectListPreferenceDialogFragment.this;
                multiSelectListPreferenceDialogFragment.f2893m |= multiSelectListPreferenceDialogFragment.f2892l.add(multiSelectListPreferenceDialogFragment.f2895o[i10].toString());
            } else {
                MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment2 = MultiSelectListPreferenceDialogFragment.this;
                multiSelectListPreferenceDialogFragment2.f2893m |= multiSelectListPreferenceDialogFragment2.f2892l.remove(multiSelectListPreferenceDialogFragment2.f2895o[i10].toString());
            }
        }
    }

    @Deprecated
    public MultiSelectListPreferenceDialogFragment() {
    }

    private MultiSelectListPreference h() {
        return (MultiSelectListPreference) a();
    }

    public static MultiSelectListPreferenceDialogFragment i(String str) {
        MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = new MultiSelectListPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        multiSelectListPreferenceDialogFragment.setArguments(bundle);
        return multiSelectListPreferenceDialogFragment;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public void e(boolean z10) {
        MultiSelectListPreference multiSelectListPreferenceH = h();
        if (z10 && this.f2893m) {
            Set<String> set = this.f2892l;
            if (multiSelectListPreferenceH.callChangeListener(set)) {
                multiSelectListPreferenceH.setValues(set);
            }
        }
        this.f2893m = false;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    protected void f(AlertDialog.Builder builder) {
        super.f(builder);
        int length = this.f2895o.length;
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = this.f2892l.contains(this.f2895o[i10].toString());
        }
        builder.setMultiChoiceItems(this.f2894n, zArr, new a());
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f2892l.clear();
            this.f2892l.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragment.values"));
            this.f2893m = bundle.getBoolean("MultiSelectListPreferenceDialogFragment.changed", false);
            this.f2894n = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragment.entries");
            this.f2895o = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragment.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreferenceH = h();
        if (multiSelectListPreferenceH.getEntries() == null || multiSelectListPreferenceH.getEntryValues() == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        this.f2892l.clear();
        this.f2892l.addAll(multiSelectListPreferenceH.getValues());
        this.f2893m = false;
        this.f2894n = multiSelectListPreferenceH.getEntries();
        this.f2895o = multiSelectListPreferenceH.getEntryValues();
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragment.values", new ArrayList<>(this.f2892l));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragment.changed", this.f2893m);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragment.entries", this.f2894n);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragment.entryValues", this.f2895o);
    }
}
