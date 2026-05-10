package com.google.android.material.textfield;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import d0.c;

/* JADX INFO: loaded from: classes.dex */
abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final TextInputLayout f10496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final r f10497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f10498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final CheckableImageButton f10499d;

    s(r rVar) {
        this.f10496a = rVar.f10466a;
        this.f10497b = rVar;
        this.f10498c = rVar.getContext();
        this.f10499d = rVar.r();
    }

    void a(Editable editable) {
    }

    void b(CharSequence charSequence, int i10, int i11, int i12) {
    }

    int c() {
        return 0;
    }

    int d() {
        return 0;
    }

    View.OnFocusChangeListener e() {
        return null;
    }

    View.OnClickListener f() {
        return null;
    }

    View.OnFocusChangeListener g() {
        return null;
    }

    c.a h() {
        return null;
    }

    boolean i(int i10) {
        return true;
    }

    boolean j() {
        return false;
    }

    boolean k() {
        return false;
    }

    boolean l() {
        return false;
    }

    boolean m() {
        return false;
    }

    void n(EditText editText) {
    }

    void o(View view, d0.h hVar) {
    }

    void p(View view, AccessibilityEvent accessibilityEvent) {
    }

    void q(boolean z10) {
    }

    final void r() {
        this.f10497b.L(false);
    }

    void s() {
    }

    boolean t() {
        return false;
    }

    void u() {
    }
}
