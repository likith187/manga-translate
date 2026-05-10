package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadLocal f2423d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f2425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f2426c = 0;

    o(m mVar, int i10) {
        this.f2425b = mVar;
        this.f2424a = i10;
    }

    private g0.a g() {
        ThreadLocal threadLocal = f2423d;
        g0.a aVar = (g0.a) threadLocal.get();
        if (aVar == null) {
            aVar = new g0.a();
            threadLocal.set(aVar);
        }
        this.f2425b.d().j(aVar, this.f2424a);
        return aVar;
    }

    public void a(Canvas canvas, float f10, float f11, Paint paint) {
        Typeface typefaceG = this.f2425b.g();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(typefaceG);
        canvas.drawText(this.f2425b.c(), this.f2424a * 2, 2, f10, f11, paint);
        paint.setTypeface(typeface);
    }

    public int b(int i10) {
        return g().h(i10);
    }

    public int c() {
        return g().i();
    }

    public int d() {
        return this.f2426c & 3;
    }

    public int e() {
        return g().k();
    }

    public int f() {
        return g().l();
    }

    public short h() {
        return g().m();
    }

    public int i() {
        return g().n();
    }

    public boolean j() {
        return g().j();
    }

    public boolean k() {
        return (this.f2426c & 4) > 0;
    }

    public void l(boolean z10) {
        int iD = d();
        if (z10) {
            this.f2426c = iD | 4;
        } else {
            this.f2426c = iD;
        }
    }

    public void m(boolean z10) {
        int i10 = this.f2426c & 4;
        this.f2426c = z10 ? i10 | 2 : i10 | 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(f()));
        sb.append(", codepoints:");
        int iC = c();
        for (int i10 = 0; i10 < iC; i10++) {
            sb.append(Integer.toHexString(b(i10)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
