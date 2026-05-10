package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.progressindicator.f;

/* JADX INFO: loaded from: classes.dex */
final class i extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f9915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f9916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f9917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9918e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f9919f;

    i(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.f9915b = 300.0f;
    }

    private void h(Canvas canvas, Paint paint, float f10, float f11, int i10, int i11, int i12) {
        float fA = x.a.a(f10, 0.0f, 1.0f);
        float fA2 = x.a.a(f11, 0.0f, 1.0f);
        float fD = f4.a.d(1.0f - this.f9919f, 1.0f, fA);
        float fD2 = f4.a.d(1.0f - this.f9919f, 1.0f, fA2);
        int iA = (int) ((i11 * x.a.a(fD, 0.0f, 0.01f)) / 0.01f);
        int iA2 = (int) ((i12 * (1.0f - x.a.a(fD2, 0.99f, 1.0f))) / 0.01f);
        float f12 = this.f9915b;
        int i13 = (int) ((fD * f12) + iA);
        int i14 = (int) ((fD2 * f12) - iA2);
        float f13 = (-f12) / 2.0f;
        if (i13 <= i14) {
            float f14 = this.f9917d;
            float f15 = i13 + f14;
            float f16 = i14 - f14;
            float f17 = f14 * 2.0f;
            paint.setColor(i10);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.f9916c);
            if (f15 >= f16) {
                j(canvas, paint, new PointF(f15 + f13, 0.0f), new PointF(f16 + f13, 0.0f), f17, this.f9916c);
                return;
            }
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(this.f9918e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            float f18 = f15 + f13;
            float f19 = f16 + f13;
            canvas.drawLine(f18, 0.0f, f19, 0.0f, paint);
            if (this.f9918e || this.f9917d <= 0.0f) {
                return;
            }
            paint.setStyle(Paint.Style.FILL);
            if (f15 > 0.0f) {
                i(canvas, paint, new PointF(f18, 0.0f), f17, this.f9916c);
            }
            if (f16 < this.f9915b) {
                i(canvas, paint, new PointF(f19, 0.0f), f17, this.f9916c);
            }
        }
    }

    private void i(Canvas canvas, Paint paint, PointF pointF, float f10, float f11) {
        j(canvas, paint, pointF, null, f10, f11);
    }

    private void j(Canvas canvas, Paint paint, PointF pointF, PointF pointF2, float f10, float f11) {
        float fMin = Math.min(f11, this.f9916c);
        float f12 = f10 / 2.0f;
        float fMin2 = Math.min(f12, (this.f9917d * fMin) / this.f9916c);
        RectF rectF = new RectF((-f10) / 2.0f, (-fMin) / 2.0f, f12, fMin / 2.0f);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (pointF2 != null) {
            canvas.translate(pointF2.x, pointF2.y);
            Path path = new Path();
            path.addRoundRect(rectF, fMin2, fMin2, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.translate(-pointF2.x, -pointF2.y);
        }
        canvas.translate(pointF.x, pointF.y);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.f
    void a(Canvas canvas, Rect rect, float f10, boolean z10, boolean z11) {
        this.f9915b = rect.width();
        float f11 = ((LinearProgressIndicatorSpec) this.f9905a).f9855a;
        canvas.translate(rect.left + (rect.width() / 2.0f), rect.top + (rect.height() / 2.0f) + Math.max(0.0f, (rect.height() - f11) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.f9905a).f9853j) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f12 = this.f9915b / 2.0f;
        float f13 = f11 / 2.0f;
        canvas.clipRect(-f12, -f13, f12, f13);
        a aVar = this.f9905a;
        this.f9918e = ((LinearProgressIndicatorSpec) aVar).f9855a / 2 == ((LinearProgressIndicatorSpec) aVar).f9856b;
        this.f9916c = ((LinearProgressIndicatorSpec) aVar).f9855a * f10;
        this.f9917d = Math.min(((LinearProgressIndicatorSpec) aVar).f9855a / 2, ((LinearProgressIndicatorSpec) aVar).f9856b) * f10;
        if (z10 || z11) {
            if ((z10 && ((LinearProgressIndicatorSpec) this.f9905a).f9859e == 2) || (z11 && ((LinearProgressIndicatorSpec) this.f9905a).f9860f == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z10 || (z11 && ((LinearProgressIndicatorSpec) this.f9905a).f9860f != 3)) {
                canvas.translate(0.0f, (((LinearProgressIndicatorSpec) this.f9905a).f9855a * (1.0f - f10)) / 2.0f);
            }
        }
        if (z11 && ((LinearProgressIndicatorSpec) this.f9905a).f9860f == 3) {
            this.f9919f = f10;
        } else {
            this.f9919f = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.f
    void b(Canvas canvas, Paint paint, int i10, int i11) {
        int iA = b4.a.a(i10, i11);
        if (((LinearProgressIndicatorSpec) this.f9905a).f9854k <= 0 || iA == 0) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(iA);
        PointF pointF = new PointF((this.f9915b / 2.0f) - (this.f9916c / 2.0f), 0.0f);
        a aVar = this.f9905a;
        i(canvas, paint, pointF, ((LinearProgressIndicatorSpec) aVar).f9854k, ((LinearProgressIndicatorSpec) aVar).f9854k);
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
        return ((LinearProgressIndicatorSpec) this.f9905a).f9855a;
    }

    @Override // com.google.android.material.progressindicator.f
    int f() {
        return -1;
    }
}
