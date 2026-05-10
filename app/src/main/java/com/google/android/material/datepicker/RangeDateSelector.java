package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
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
public class RangeDateSelector implements DateSelector<c0.d> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CharSequence f9401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f9402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f9403c = " ";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Long f9404f = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Long f9405h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Long f9406i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Long f9407j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private SimpleDateFormat f9408k;

    class a extends e {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f9409l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f9410m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ p f9411n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, p pVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f9409l = textInputLayout2;
            this.f9410m = textInputLayout3;
            this.f9411n = pVar;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            RangeDateSelector.this.f9406i = null;
            RangeDateSelector.this.m(this.f9409l, this.f9410m, this.f9411n);
        }

        @Override // com.google.android.material.datepicker.e
        void g(Long l10) {
            RangeDateSelector.this.f9406i = l10;
            RangeDateSelector.this.m(this.f9409l, this.f9410m, this.f9411n);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f9413l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f9414m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ p f9415n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, p pVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f9413l = textInputLayout2;
            this.f9414m = textInputLayout3;
            this.f9415n = pVar;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            RangeDateSelector.this.f9407j = null;
            RangeDateSelector.this.m(this.f9413l, this.f9414m, this.f9415n);
        }

        @Override // com.google.android.material.datepicker.e
        void g(Long l10) {
            RangeDateSelector.this.f9407j = l10;
            RangeDateSelector.this.m(this.f9413l, this.f9414m, this.f9415n);
        }
    }

    class c implements Parcelable.Creator {
        c() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RangeDateSelector createFromParcel(Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f9404f = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.f9405h = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public RangeDateSelector[] newArray(int i10) {
            return new RangeDateSelector[i10];
        }
    }

    private void f(TextInputLayout textInputLayout, TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.f9402b.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    private boolean h(long j10, long j11) {
        return j10 <= j11;
    }

    private void j(TextInputLayout textInputLayout, TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.f9402b);
        textInputLayout2.setError(" ");
    }

    private void l(TextInputLayout textInputLayout, TextInputLayout textInputLayout2) {
        if (!TextUtils.isEmpty(textInputLayout.getError())) {
            this.f9401a = textInputLayout.getError();
        } else if (TextUtils.isEmpty(textInputLayout2.getError())) {
            this.f9401a = null;
        } else {
            this.f9401a = textInputLayout2.getError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(TextInputLayout textInputLayout, TextInputLayout textInputLayout2, p pVar) {
        Long l10 = this.f9406i;
        if (l10 == null || this.f9407j == null) {
            f(textInputLayout, textInputLayout2);
            pVar.a();
        } else if (h(l10.longValue(), this.f9407j.longValue())) {
            this.f9404f = this.f9406i;
            this.f9405h = this.f9407j;
            pVar.b(a0());
        } else {
            j(textInputLayout, textInputLayout2);
            pVar.a();
        }
        l(textInputLayout, textInputLayout2);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String B(Context context) {
        Resources resources = context.getResources();
        Long l10 = this.f9404f;
        if (l10 == null && this.f9405h == null) {
            return resources.getString(R$string.mtrl_picker_range_header_unselected);
        }
        Long l11 = this.f9405h;
        if (l11 == null) {
            return resources.getString(R$string.mtrl_picker_range_header_only_start_selected, h.c(l10.longValue()));
        }
        if (l10 == null) {
            return resources.getString(R$string.mtrl_picker_range_header_only_end_selected, h.c(l11.longValue()));
        }
        c0.d dVarA = h.a(l10, l11);
        return resources.getString(R$string.mtrl_picker_range_header_selected, dVarA.f4278a, dVarA.f4279b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int D(Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return i4.b.d(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R$dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? R$attr.materialCalendarTheme : R$attr.materialCalendarFullscreenTheme, l.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection G() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c0.d(this.f9404f, this.f9405h));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean N() {
        Long l10 = this.f9404f;
        return (l10 == null || this.f9405h == null || !h(l10.longValue(), this.f9405h.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection X() {
        ArrayList arrayList = new ArrayList();
        Long l10 = this.f9404f;
        if (l10 != null) {
            arrayList.add(l10);
        }
        Long l11 = this.f9405h;
        if (l11 != null) {
            arrayList.add(l11);
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public c0.d a0() {
        return new c0.d(this.f9404f, this.f9405h);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String k(Context context) {
        Resources resources = context.getResources();
        c0.d dVarA = h.a(this.f9404f, this.f9405h);
        Object obj = dVarA.f4278a;
        String string = obj == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : (String) obj;
        Object obj2 = dVarA.f4279b;
        return resources.getString(R$string.mtrl_picker_announce_current_range_selection, string, obj2 == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : (String) obj2);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void q0(long j10) {
        Long l10 = this.f9404f;
        if (l10 == null) {
            this.f9404f = Long.valueOf(j10);
        } else if (this.f9405h == null && h(l10.longValue(), j10)) {
            this.f9405h = Long.valueOf(j10);
        } else {
            this.f9405h = null;
            this.f9404f = Long.valueOf(j10);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeValue(this.f9404f);
        parcel.writeValue(this.f9405h);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View x0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, p pVar) {
        View viewInflate = layoutInflater.inflate(R$layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f9402b = viewInflate.getResources().getString(R$string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormatF = this.f9408k;
        boolean z10 = simpleDateFormatF != null;
        if (!z10) {
            simpleDateFormatF = t.f();
        }
        SimpleDateFormat simpleDateFormat = simpleDateFormatF;
        Long l10 = this.f9404f;
        if (l10 != null) {
            editText.setText(simpleDateFormat.format(l10));
            this.f9406i = this.f9404f;
        }
        Long l11 = this.f9405h;
        if (l11 != null) {
            editText2.setText(simpleDateFormat.format(l11));
            this.f9407j = this.f9405h;
        }
        String pattern = z10 ? simpleDateFormat.toPattern() : t.g(viewInflate.getResources(), simpleDateFormat);
        textInputLayout.setPlaceholderText(pattern);
        textInputLayout2.setPlaceholderText(pattern);
        editText.addTextChangedListener(new a(pattern, simpleDateFormat, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, pVar));
        editText2.addTextChangedListener(new b(pattern, simpleDateFormat, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, pVar));
        DateSelector.v0(editText, editText2);
        return viewInflate;
    }
}
