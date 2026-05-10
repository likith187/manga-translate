package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends ReplacementSpan {

    /* JADX INFO: renamed from: b */
    private final o f2394b;

    /* JADX INFO: renamed from: a */
    private final Paint.FontMetricsInt f2393a = new Paint.FontMetricsInt();

    /* JADX INFO: renamed from: c */
    private short f2395c = -1;

    /* JADX INFO: renamed from: d */
    private short f2396d = -1;

    /* JADX INFO: renamed from: e */
    private float f2397e = 1.0f;

    i(o oVar) {
        c0.h.f(oVar, "rasterizer cannot be null");
        this.f2394b = oVar;
    }

    public final o a() {
        return this.f2394b;
    }

    final int b() {
        return this.f2395c;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f2393a);
        Paint.FontMetricsInt fontMetricsInt2 = this.f2393a;
        this.f2397e = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f2394b.e();
        this.f2396d = (short) (this.f2394b.e() * this.f2397e);
        short sI = (short) (this.f2394b.i() * this.f2397e);
        this.f2395c = sI;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f2393a;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return sI;
    }
}
