package androidx.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

/* JADX INFO: loaded from: classes.dex */
public class DropDownPreference extends ListPreference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayAdapter f2877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Spinner f2878c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AdapterView.OnItemSelectedListener f2879f;

    class a implements AdapterView.OnItemSelectedListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
            if (i10 >= 0) {
                String string = DropDownPreference.this.getEntryValues()[i10].toString();
                if (string.equals(DropDownPreference.this.getValue()) || !DropDownPreference.this.callChangeListener(string)) {
                    return;
                }
                DropDownPreference.this.setValue(string);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.dropdownPreferenceStyle);
    }

    private int i(String str) {
        CharSequence[] entryValues = getEntryValues();
        if (str == null || entryValues == null) {
            return -1;
        }
        for (int length = entryValues.length - 1; length >= 0; length--) {
            if (entryValues[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    private void j() {
        this.f2877b.clear();
        if (getEntries() != null) {
            for (CharSequence charSequence : getEntries()) {
                this.f2877b.add(charSequence.toString());
            }
        }
    }

    protected ArrayAdapter h() {
        return new ArrayAdapter(this.f2876a, R.layout.simple_spinner_dropdown_item);
    }

    @Override // androidx.preference.Preference
    protected void notifyChanged() {
        super.notifyChanged();
        ArrayAdapter arrayAdapter = this.f2877b;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        Spinner spinner = (Spinner) lVar.itemView.findViewById(R$id.spinner);
        this.f2878c = spinner;
        spinner.setAdapter((SpinnerAdapter) this.f2877b);
        this.f2878c.setOnItemSelectedListener(this.f2879f);
        this.f2878c.setSelection(i(getValue()));
        super.onBindViewHolder(lVar);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    protected void onClick() {
        this.f2878c.performClick();
    }

    @Override // androidx.preference.ListPreference
    public void setEntries(CharSequence[] charSequenceArr) {
        super.setEntries(charSequenceArr);
        j();
    }

    @Override // androidx.preference.ListPreference
    public void setValueIndex(int i10) {
        setValue(getEntryValues()[i10].toString());
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2879f = new a();
        this.f2876a = context;
        this.f2877b = h();
        j();
    }
}
