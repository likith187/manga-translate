package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.progressindicator.f;

/* JADX INFO: loaded from: classes.dex */
final class b extends f {

    /* JADX INFO: renamed from: b */
    private float f9862b;

    /* JADX INFO: renamed from: c */
    private float f9863c;

    /* JADX INFO: renamed from: d */
    private float f9864d;

    /* JADX INFO: renamed from: e */
    private boolean f9865e;

    /* JADX INFO: renamed from: f */
    private float f9866f;

    b(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
    }

    private void h(Canvas canvas, Paint paint, float f10, float f11, int i10, int i11, int i12) {
        float f12 = f11 >= f10 ? f11 - f10 : (f11 + 1.0f) - f10;
        float f13 = f10 % 1.0f;
        if (this.f9866f < 1.0f) {
            float f14 = f13 + f12;
            if (f14 > 1.0f) {
                h(canvas, paint, f13, 1.0f, i10, i11, 0);
                h(canvas, paint, 1.0f, f14, i10, 0, i12);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.f9863c / this.f9864d);
        if (f13 == 0.0f && f12 >= 0.99f) {
            f12 += ((f12 - 0.99f) * ((degrees * 2.0f) / 360.0f)) / 0.01f;
        }
        float fD = f4.a.d(1.0f - this.f9866f, 1.0f, f13);
        float fD2 = f4.a.d(0.0f, this.f9866f, f12);
        float degrees2 = (float) Math.toDegrees(i11 / this.f9864d);
        float degrees3 = ((fD2 * 360.0f) - degrees2) - ((float) Math.toDegrees(i12 / this.f9864d));
        float f15 = (fD * 360.0f) + degrees2;
        if (degrees3 <= 0.0f) {
            return;
        }
        paint.setAntiAlias(true);
        paint.setColor(i10);
        paint.setStrokeWidth(this.f9862b);
        float f16 = degrees * 2.0f;
        if (degrees3 < f16) {
            float f17 = degrees3 / f16;
            paint.setStyle(Paint.Style.FILL);
            j(canvas, paint, f15 + (degrees * f17), this.f9863c * 2.0f, this.f9862b, f17);
            return;
        }
        float f18 = this.f9864d;
        RectF rectF = new RectF(-f18, -f18, f18, f18);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(this.f9865e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f19 = f15 + degrees;
        canvas.drawArc(rectF, f19, degrees3 - f16, false, paint);
        if (this.f9865e || this.f9863c <= 0.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        i(canvas, paint, f19, this.f9863c * 2.0f, this.f9862b);
        i(canvas, paint, (f15 + degrees3) - degrees, this.f9863c * 2.0f, this.f9862b);
    }

    private void i(Canvas canvas, Paint paint, float f10, float f11, float f12) {
        j(canvas, paint, f10, f11, f12, 1.0f);
    }

    private void j(Canvas canvas, Paint paint, float f10, float f11, float f12, float f13) {
        float fMin = (int) Math.min(f12, this.f9862b);
        float f14 = f11 / 2.0f;
        float fMin2 = Math.min(f14, (this.f9863c * fMin) / this.f9862b);
        RectF rectF = new RectF((-fMin) / 2.0f, (-f11) / 2.0f, fMin / 2.0f, f14);
        canvas.save();
        double d10 = f10;
        canvas.translate((float) (((double) this.f9864d) * Math.cos(Math.toRadians(d10))), (float) (((double) this.f9864d) * Math.sin(Math.toRadians(d10))));
        canvas.rotate(f10);
        canvas.scale(f13, f13);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    private int k() {
        a aVar = this.f9905a;
        return ((CircularProgressIndicatorSpec) aVar).f9847h + (((CircularProgressIndicatorSpec) aVar).f9848i * 2);
    }

    @Override // com.google.android.material.progressindicator.f
    void a(Canvas canvas, Rect rect, float f10, boolean z10, boolean z11) {
        float fWidth = rect.width() / f();
        float fHeight = rect.height() / e();
        a aVar = this.f9905a;
        float f11 = (((CircularProgressIndicatorSpec) aVar).f9847h / 2.0f) + ((CircularProgressIndicatorSpec) aVar).f9848i;
        canvas.translate((f11 * fWidth) + rect.left, (f11 * fHeight) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(fWidth, fHeight);
        if (((CircularProgressIndicatorSpec) this.f9905a).f9849j != 0) {
            canvas.scale(1.0f, -1.0f);
        }
        float f12 = -f11;
        canvas.clipRect(f12, f12, f11, f11);
        a aVar2 = this.f9905a;
        this.f9865e = ((CircularProgressIndicatorSpec) aVar2).f9855a / 2 <= ((CircularProgressIndicatorSpec) aVar2).f9856b;
        this.f9862b = ((CircularProgressIndicatorSpec) aVar2).f9855a * f10;
        this.f9863c = Math.min(((CircularProgressIndicatorSpec) aVar2).f9855a / 2, ((CircularProgressIndicatorSpec) aVar2).f9856b) * f10;
        a aVar3 = this.f9905a;
        float f13 = (((CircularProgressIndicatorSpec) aVar3).f9847h - ((CircularProgressIndicatorSpec) aVar3).f9855a) / 2.0f;
        this.f9864d = f13;
        if (z10 || z11) {
            if ((z10 && ((CircularProgressIndicatorSpec) aVar3).f9859e == 2) || (z11 && ((CircularProgressIndicatorSpec) aVar3).f9860f == 1)) {
                this.f9864d = f13 + (((1.0f - f10) * ((CircularProgressIndicatorSpec) aVar3).f9855a) / 2.0f);
            } else if ((z10 && ((CircularProgressIndicatorSpec) aVar3).f9859e == 1) || (z11 && ((CircularProgressIndicatorSpec) aVar3).f9860f == 2)) {
                this.f9864d = f13 - (((1.0f - f10) * ((CircularProgressIndicatorSpec) aVar3).f9855a) / 2.0f);
            }
        }
        if (z11 && ((CircularProgressIndicatorSpec) aVar3).f9860f == 3) {
            this.f9866f = f10;
        } else {
            this.f9866f = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.f
    void b(Canvas canvas, Paint paint, int i10, int i11) {
    }

    @Override // com.google.android.material.progressindicator.f
    void c(Canvas canvas, Paint paint, f.a aVar, int i10) {
        int iA = b4.a.a(aVar.f9908c, i10);
        float f10 = aVar.f9906a;
        float f11 = aVar.f9907b;
        int i11 = aVar.f9909d;
        h(canvas, paint, f10, f11, iA, i11, i11);
    }

    @Override // com.google.android.material.progressindicator.f
    void d(Canvas canvas, Paint paint, float f10, float f11, int i10, int i11, int i12) {
        h(canvas, paint, f10, f11, b4.a.a(i10, i11), i12, i12);
    }

    @Override // com.google.android.material.progressindicator.f
    int e() {
        return k();
    }

    @Override // com.google.android.material.progressindicator.f
    int f() {
        return k();
    }
}
