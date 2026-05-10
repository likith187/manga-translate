package d4;

import android.content.Context;
import android.graphics.Color;
import com.google.android.material.R$attr;
import i4.b;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f11528f = (int) Math.round(5.1000000000000005d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f11529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f11530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f11531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f11532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f11533e;

    public a(Context context) {
        this(b.b(context, R$attr.elevationOverlayEnabled, false), b4.a.b(context, R$attr.elevationOverlayColor, 0), b4.a.b(context, R$attr.elevationOverlayAccentColor, 0), b4.a.b(context, R$attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    private boolean f(int i10) {
        return d.u(i10, 255) == this.f11532d;
    }

    public float a(float f10) {
        if (this.f11533e <= 0.0f || f10 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f10 / r2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    public int b(int i10, float f10) {
        int i11;
        float fA = a(f10);
        int iAlpha = Color.alpha(i10);
        int iJ = b4.a.j(d.u(i10, 255), this.f11530b, fA);
        if (fA > 0.0f && (i11 = this.f11531c) != 0) {
            iJ = b4.a.i(iJ, d.u(i11, f11528f));
        }
        return d.u(iJ, iAlpha);
    }

    public int c(int i10, float f10) {
        return (this.f11529a && f(i10)) ? b(i10, f10) : i10;
    }

    public int d(float f10) {
        return c(this.f11532d, f10);
    }

    public boolean e() {
        return this.f11529a;
    }

    public a(boolean z10, int i10, int i11, int i12, float f10) {
        this.f11529a = z10;
        this.f11530b = i10;
        this.f11531c = i11;
        this.f11532d = i12;
        this.f11533e = f10;
    }
}
