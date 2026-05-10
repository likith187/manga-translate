package androidx.preference;

import android.R;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class EditTextPreferenceDialogFragment extends PreferenceDialogFragment {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private EditText f2883l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CharSequence f2884m;

    @Deprecated
    public EditTextPreferenceDialogFragment() {
    }

    private EditTextPreference h() {
        return (EditTextPreference) a();
    }

    public static EditTextPreferenceDialogFragment i(String str) {
        EditTextPreferenceDialogFragment editTextPreferenceDialogFragment = new EditTextPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        editTextPreferenceDialogFragment.setArguments(bundle);
        return editTextPreferenceDialogFragment;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    protected boolean b() {
        return true;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    protected void c(View view) {
        super.c(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.f2883l = editText;
        editText.requestFocus();
        EditText editText2 = this.f2883l;
        if (editText2 == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText2.setText(this.f2884m);
        EditText editText3 = this.f2883l;
        editText3.setSelection(editText3.getText().length());
    }

    @Override // androidx.preference.PreferenceDialogFragment
    public void e(boolean z10) {
        if (z10) {
            String string = this.f2883l.getText().toString();
            if (h().callChangeListener(string)) {
                h().setText(string);
            }
        }
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.f2884m = h().getText();
        } else {
            this.f2884m = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.f2884m);
    }
}
