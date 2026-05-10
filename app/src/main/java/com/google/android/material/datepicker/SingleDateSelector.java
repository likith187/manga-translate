package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CharSequence f9417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Long f9418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SimpleDateFormat f9419c;

    class a extends e {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ p f9420l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f9421m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, p pVar, TextInputLayout textInputLayout2) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f9420l = pVar;
            this.f9421m = textInputLayout2;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            SingleDateSelector.this.f9417a = this.f9421m.getError();
            this.f9420l.a();
        }

        @Override // com.google.android.material.datepicker.e
        void g(Long l10) {
            if (l10 == null) {
                SingleDateSelector.this.d();
            } else {
                SingleDateSelector.this.q0(l10.longValue());
            }
            SingleDateSelector.this.f9417a = null;
            this.f9420l.b(SingleDateSelector.this.a0());
        }
    }

    class b implements Parcelable.Creator {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f9418b = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SingleDateSelector[] newArray(int i10) {
            return new SingleDateSelector[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f9418b = null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String B(Context context) {
        Resources resources = context.getResources();
        Long l10 = this.f9418b;
        if (l10 == null) {
            return resources.getString(R$string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(R$string.mtrl_picker_date_header_selected, h.m(l10.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int D(Context context) {
        return i4.b.d(context, R$attr.materialCalendarTheme, l.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection G() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean N() {
        return this.f9418b != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection X() {
        ArrayList arrayList = new ArrayList();
        Long l10 = this.f9418b;
        if (l10 != null) {
            arrayList.add(l10);
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Long a0() {
        return this.f9418b;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String k(Context context) {
        Resources resources = context.getResources();
        Long l10 = this.f9418b;
        return resources.getString(R$string.mtrl_picker_announce_current_selection, l10 == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : h.m(l10.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void q0(long j10) {
        this.f9418b = Long.valueOf(j10);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeValue(this.f9418b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View x0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, p pVar) {
        View viewInflate = layoutInflater.inflate(R$layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormatF = this.f9419c;
        boolean z10 = simpleDateFormatF != null;
        if (!z10) {
            simpleDateFormatF = t.f();
        }
        SimpleDateFormat simpleDateFormat = simpleDateFormatF;
        String pattern = z10 ? simpleDateFormat.toPattern() : t.g(viewInflate.getResources(), simpleDateFormat);
        textInputLayout.setPlaceholderText(pattern);
        Long l10 = this.f9418b;
        if (l10 != null) {
            editText.setText(simpleDateFormat.format(l10));
        }
        editText.addTextChangedListener(new a(pattern, simpleDateFormat, textInputLayout, calendarConstraints, pVar, textInputLayout));
        DateSelector.v0(editText);
        return viewInflate;
    }
}
