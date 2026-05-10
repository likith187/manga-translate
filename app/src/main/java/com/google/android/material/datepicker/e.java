package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.R$string;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
abstract class e extends TextWatcherAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextInputLayout f9441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f9442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DateFormat f9443c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CalendarConstraints f9444f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f9445h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Runnable f9446i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Runnable f9447j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9448k = 0;

    e(final String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f9442b = str;
        this.f9443c = dateFormat;
        this.f9441a = textInputLayout;
        this.f9444f = calendarConstraints;
        this.f9445h = textInputLayout.getContext().getString(R$string.mtrl_picker_out_of_range);
        this.f9446i = new Runnable() { // from class: com.google.android.material.datepicker.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f9437a.e(str);
            }
        };
    }

    private Runnable c(final long j10) {
        return new Runnable() { // from class: com.google.android.material.datepicker.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f9439a.d(j10);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(long j10) {
        this.f9441a.setError(String.format(this.f9445h, i(h.c(j10))));
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(String str) {
        TextInputLayout textInputLayout = this.f9441a;
        DateFormat dateFormat = this.f9443c;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(R$string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R$string.mtrl_picker_invalid_format_use), i(str)) + "\n" + String.format(context.getString(R$string.mtrl_picker_invalid_format_example), i(dateFormat.format(new Date(t.k().getTimeInMillis())))));
        f();
    }

    private String i(String str) {
        return str.replace(' ', (char) 160);
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (!Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) && editable.length() != 0 && editable.length() < this.f9442b.length() && editable.length() >= this.f9448k) {
            char cCharAt = this.f9442b.charAt(editable.length());
            if (Character.isLetterOrDigit(cCharAt)) {
                return;
            }
            editable.append(cCharAt);
        }
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.f9448k = charSequence.length();
    }

    abstract void f();

    abstract void g(Long l10);

    public void h(View view, Runnable runnable) {
        view.post(runnable);
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.f9441a.removeCallbacks(this.f9446i);
        this.f9441a.removeCallbacks(this.f9447j);
        this.f9441a.setError(null);
        g(null);
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.f9442b.length()) {
            return;
        }
        try {
            Date date = this.f9443c.parse(charSequence.toString());
            this.f9441a.setError(null);
            long time = date.getTime();
            if (this.f9444f.g().I(time) && this.f9444f.p(time)) {
                g(Long.valueOf(date.getTime()));
                return;
            }
            Runnable runnableC = c(time);
            this.f9447j = runnableC;
            h(this.f9441a, runnableC);
        } catch (ParseException unused) {
            h(this.f9441a, this.f9446i);
        }
    }
}
