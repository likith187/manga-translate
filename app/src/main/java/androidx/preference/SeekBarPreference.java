package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.Preference;

/* JADX INFO: loaded from: classes.dex */
public class SeekBarPreference extends Preference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2928c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2929f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f2930h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    SeekBar f2931i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f2932j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f2933k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f2934l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f2935m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private SeekBar.OnSeekBarChangeListener f2936n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View.OnKeyListener f2937o;

    class a implements SeekBar.OnSeekBarChangeListener {
        a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
            if (z10) {
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                if (seekBarPreference.f2935m || !seekBarPreference.f2930h) {
                    seekBarPreference.k(seekBar);
                    return;
                }
            }
            SeekBarPreference seekBarPreference2 = SeekBarPreference.this;
            seekBarPreference2.l(i10 + seekBarPreference2.f2927b);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.f2930h = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.f2930h = false;
            int progress = seekBar.getProgress();
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if (progress + seekBarPreference.f2927b != seekBarPreference.f2926a) {
                seekBarPreference.k(seekBar);
            }
        }
    }

    class b implements View.OnKeyListener {
        b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 0) {
                return false;
            }
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if ((!seekBarPreference.f2933k && (i10 == 21 || i10 == 22)) || i10 == 23 || i10 == 66) {
                return false;
            }
            SeekBar seekBar = seekBarPreference.f2931i;
            if (seekBar != null) {
                return seekBar.onKeyDown(i10, keyEvent);
            }
            Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
            return false;
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2936n = new a();
        this.f2937o = new b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SeekBarPreference, i10, i11);
        this.f2927b = typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_min, 0);
        setMax(typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_android_max, 100));
        h(typedArrayObtainStyledAttributes.getInt(R$styleable.SeekBarPreference_seekBarIncrement, 0));
        this.f2933k = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SeekBarPreference_adjustable, true);
        this.f2934l = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SeekBarPreference_showSeekBarValue, false);
        this.f2935m = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SeekBarPreference_updatesContinuously, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void j(int i10, boolean z10) {
        int i11 = this.f2927b;
        if (i10 < i11) {
            i10 = i11;
        }
        int i12 = this.f2928c;
        if (i10 > i12) {
            i10 = i12;
        }
        if (i10 != this.f2926a) {
            this.f2926a = i10;
            l(i10);
            persistInt(i10);
            if (z10) {
                notifyChanged();
            }
        }
    }

    public final void h(int i10) {
        if (i10 != this.f2929f) {
            this.f2929f = Math.min(this.f2928c - this.f2927b, Math.abs(i10));
            notifyChanged();
        }
    }

    public void i(int i10) {
        j(i10, true);
    }

    void k(SeekBar seekBar) {
        int progress = this.f2927b + seekBar.getProgress();
        if (progress != this.f2926a) {
            if (callChangeListener(Integer.valueOf(progress))) {
                j(progress, false);
            } else {
                seekBar.setProgress(this.f2926a - this.f2927b);
                l(this.f2926a);
            }
        }
    }

    void l(int i10) {
        TextView textView = this.f2932j;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(l lVar) {
        super.onBindViewHolder(lVar);
        lVar.itemView.setOnKeyListener(this.f2937o);
        this.f2931i = (SeekBar) lVar.b(R$id.seekbar);
        TextView textView = (TextView) lVar.b(R$id.seekbar_value);
        this.f2932j = textView;
        if (this.f2934l) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.f2932j = null;
        }
        SeekBar seekBar = this.f2931i;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.f2936n);
        this.f2931i.setMax(this.f2928c - this.f2927b);
        int i10 = this.f2929f;
        if (i10 != 0) {
            this.f2931i.setKeyProgressIncrement(i10);
        } else {
            this.f2929f = this.f2931i.getKeyProgressIncrement();
        }
        this.f2931i.setProgress(this.f2926a - this.f2927b);
        l(this.f2926a);
        this.f2931i.setEnabled(isEnabled());
    }

    @Override // androidx.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i10) {
        return Integer.valueOf(typedArray.getInt(i10, 0));
    }

    @Override // androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f2926a = savedState.f2938a;
        this.f2927b = savedState.f2939b;
        this.f2928c = savedState.f2940c;
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.f2938a = this.f2926a;
        savedState.f2939b = this.f2927b;
        savedState.f2940c = this.f2928c;
        return savedState;
    }

    @Override // androidx.preference.Preference
    protected void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        i(getPersistedInt(((Integer) obj).intValue()));
    }

    public final void setMax(int i10) {
        int i11 = this.f2927b;
        if (i10 < i11) {
            i10 = i11;
        }
        if (i10 != this.f2928c) {
            this.f2928c = i10;
            notifyChanged();
        }
    }

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2940c;

        static class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f2938a = parcel.readInt();
            this.f2939b = parcel.readInt();
            this.f2940c = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2938a);
            parcel.writeInt(this.f2939b);
            parcel.writeInt(this.f2940c);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.seekBarPreferenceStyle);
    }
}
