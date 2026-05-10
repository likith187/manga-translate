package androidx.preference;

import android.R;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public class a extends f {
    private static final String SAVE_STATE_TEXT = "EditTextPreferenceDialogFragment.text";
    private EditText mEditText;
    private CharSequence mText;

    public static a newInstance(String str) {
        a aVar = new a();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        aVar.setArguments(bundle);
        return aVar;
    }

    private EditTextPreference o() {
        return (EditTextPreference) getPreference();
    }

    @Override // androidx.preference.f
    protected boolean needInputMethod() {
        return true;
    }

    @Override // androidx.preference.f
    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.mEditText = editText;
        if (editText == null) {
            throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
        }
        editText.requestFocus();
        this.mEditText.setText(this.mText);
        EditText editText2 = this.mEditText;
        editText2.setSelection(editText2.getText().length());
        o().getOnBindEditTextListener();
    }

    @Override // androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.mText = o().getText();
        } else {
            this.mText = bundle.getCharSequence(SAVE_STATE_TEXT);
        }
    }

    @Override // androidx.preference.f
    public void onDialogClosed(boolean z10) {
        if (z10) {
            String string = this.mEditText.getText().toString();
            EditTextPreference editTextPreferenceO = o();
            if (editTextPreferenceO.callChangeListener(string)) {
                editTextPreferenceO.setText(string);
            }
        }
    }

    @Override // androidx.preference.f, androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence(SAVE_STATE_TEXT, this.mText);
    }
}
