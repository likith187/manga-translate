package androidx.emoji2.text;

import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes.dex */
class q implements Spannable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2429a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Spannable f2430b;

    private static class a {
        static IntStream a(CharSequence charSequence) {
            return charSequence.chars();
        }

        static IntStream b(CharSequence charSequence) {
            return charSequence.codePoints();
        }
    }

    static class b {
        b() {
        }

        abstract boolean a(CharSequence charSequence);
    }

    static class c extends b {
        c() {
        }

        @Override // androidx.emoji2.text.q.b
        boolean a(CharSequence charSequence) {
            return charSequence instanceof PrecomputedText;
        }
    }

    q(Spannable spannable) {
        this.f2430b = spannable;
    }

    private void a() {
        Spannable spannable = this.f2430b;
        if (!this.f2429a && c().a(spannable)) {
            this.f2430b = new SpannableString(spannable);
        }
        this.f2429a = true;
    }

    static b c() {
        return new c();
    }

    Spannable b() {
        return this.f2430b;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i10) {
        return this.f2430b.charAt(i10);
    }

    @Override // java.lang.CharSequence
    public IntStream chars() {
        return a.a(this.f2430b);
    }

    @Override // java.lang.CharSequence
    public IntStream codePoints() {
        return a.b(this.f2430b);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f2430b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f2430b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f2430b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public Object[] getSpans(int i10, int i11, Class cls) {
        return this.f2430b.getSpans(i10, i11, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f2430b.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.f2430b.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        a();
        this.f2430b.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i10, int i11, int i12) {
        a();
        this.f2430b.setSpan(obj, i10, i11, i12);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i10, int i11) {
        return this.f2430b.subSequence(i10, i11);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f2430b.toString();
    }

    q(CharSequence charSequence) {
        this.f2430b = new SpannableString(charSequence);
    }
}
