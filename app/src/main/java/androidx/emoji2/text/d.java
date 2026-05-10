package androidx.emoji2.text;

import android.text.TextPaint;
import androidx.emoji2.text.e;

/* JADX INFO: loaded from: classes.dex */
class d implements e.InterfaceC0026e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal f2338b = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextPaint f2339a;

    d() {
        TextPaint textPaint = new TextPaint();
        this.f2339a = textPaint;
        textPaint.setTextSize(10.0f);
    }

    private static StringBuilder b() {
        ThreadLocal threadLocal = f2338b;
        if (threadLocal.get() == null) {
            threadLocal.set(new StringBuilder());
        }
        return (StringBuilder) threadLocal.get();
    }

    @Override // androidx.emoji2.text.e.InterfaceC0026e
    public boolean a(CharSequence charSequence, int i10, int i11, int i12) {
        StringBuilder sbB = b();
        sbB.setLength(0);
        while (i10 < i11) {
            sbB.append(charSequence.charAt(i10));
            i10++;
        }
        return u.f.a(this.f2339a, sbB.toString());
    }
}
