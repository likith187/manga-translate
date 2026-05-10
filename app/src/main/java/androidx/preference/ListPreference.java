package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.preference.Preference;

/* JADX INFO: loaded from: classes.dex */
public class ListPreference extends DialogPreference {
    private static final String TAG = "ListPreference";
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;
    private String mSummary;
    private String mValue;
    private boolean mValueSet;

    public static final class a implements Preference.f {

        /* JADX INFO: renamed from: a */
        private static a f2886a;

        private a() {
        }

        public static a b() {
            if (f2886a == null) {
                f2886a = new a();
            }
            return f2886a;
        }

        @Override // androidx.preference.Preference.f
        /* JADX INFO: renamed from: c */
        public CharSequence a(ListPreference listPreference) {
            return TextUtils.isEmpty(listPreference.getEntry()) ? listPreference.getContext().getString(R$string.not_set) : listPreference.getEntry();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ListPreference, i10, i11);
        this.mEntries = t.k.o(typedArrayObtainStyledAttributes, R$styleable.ListPreference_entries, R$styleable.ListPreference_android_entries);
        this.mEntryValues = t.k.o(typedArrayObtainStyledAttributes, R$styleable.ListPreference_entryValues, R$styleable.ListPreference_android_entryValues);
        int i12 = R$styleable.ListPreference_useSimpleSummaryProvider;
        if (t.k.b(typedArrayObtainStyledAttributes, i12, i12, false)) {
            setSummaryProvider(a.b());
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.Preference, i10, i11);
        this.mSummary = t.k.m(typedArrayObtainStyledAttributes2, R$styleable.Preference_summary, R$styleable.Preference_android_summary);
        typedArrayObtainStyledAttributes2.recycle();
    }

    private int getValueIndex() {
        return findIndexOfValue(this.mValue);
    }

    public int findIndexOfValue(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.mEntryValues) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (this.mEntryValues[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    public CharSequence[] getEntries() {
        return this.mEntries;
    }

    public CharSequence getEntry() {
        CharSequence[] charSequenceArr;
        int valueIndex = getValueIndex();
        if (valueIndex < 0 || (charSequenceArr = this.mEntries) == null) {
            return null;
        }
        return charSequenceArr[valueIndex];
    }

    public CharSequence[] getEntryValues() {
        return this.mEntryValues;
    }

    @Override // androidx.preference.Preference
    public CharSequence getSummary() {
        if (getSummaryProvider() != null) {
            return getSummaryProvider().a(this);
        }
        CharSequence entry = getEntry();
        CharSequence summary = super.getSummary();
        String str = this.mSummary;
        if (str == null) {
            return summary;
        }
        if (entry == null) {
            entry = "";
        }
        String str2 = String.format(str, entry);
        if (TextUtils.equals(str2, summary)) {
            return summary;
        }
        Log.w(TAG, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return str2;
    }

    public String getValue() {
        return this.mValue;
    }

    @Override // androidx.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    @Override // androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setValue(savedState.f2885a);
    }

    @Override // androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.f2885a = getValue();
        return savedState;
    }

    @Override // androidx.preference.Preference
    protected void onSetInitialValue(Object obj) {
        setValue(getPersistedString((String) obj));
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.mEntries = charSequenceArr;
    }

    public void setEntryValues(CharSequence[] charSequenceArr) {
        this.mEntryValues = charSequenceArr;
    }

    @Override // androidx.preference.Preference
    public void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.mSummary != null) {
            this.mSummary = null;
        } else {
            if (charSequence == null || charSequence.equals(this.mSummary)) {
                return;
            }
            this.mSummary = charSequence.toString();
        }
    }

    public void setValue(String str) {
        boolean zEquals = TextUtils.equals(this.mValue, str);
        if (zEquals && this.mValueSet) {
            return;
        }
        this.mValue = str;
        this.mValueSet = true;
        persistString(str);
        if (zEquals) {
            return;
        }
        notifyChanged();
    }

    public void setValueIndex(int i10) {
        CharSequence[] charSequenceArr = this.mEntryValues;
        if (charSequenceArr != null) {
            setValue(charSequenceArr[i10].toString());
        }
    }

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        String f2885a;

        static class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f2885a = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f2885a);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void setEntries(int i10) {
        setEntries(getContext().getResources().getTextArray(i10));
    }

    public void setEntryValues(int i10) {
        setEntryValues(getContext().getResources().getTextArray(i10));
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, t.k.a(context, R$attr.dialogPreferenceStyle, R.attr.dialogPreferenceStyle));
    }
}
