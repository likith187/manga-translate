package com.coloros.translate.ui.simultaneous.widget;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.SystemClock;
import android.text.style.ReplacementSpan;
import com.coui.appcompat.animation.COUIInEaseInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class c extends ReplacementSpan {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final COUIInEaseInterpolator f6859l = new COUIInEaseInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f6863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f6865f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f6866g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f6867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f6868i = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f6869j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Runnable f6870k;

    public c(b bVar, Runnable runnable) {
        this.f6864e = bVar.b();
        this.f6865f = bVar.a();
        this.f6863d = bVar.g();
        this.f6866g = bVar.d();
        this.f6861b = bVar.f();
        this.f6862c = bVar.c();
        this.f6860a = bVar.e();
        this.f6870k = runnable;
    }

    private int b(float f10, int i10, int i11) {
        float f11 = ((i10 >> 24) & 255) / 255.0f;
        float fPow = (float) Math.pow(((i10 >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) Math.pow(((i10 >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) Math.pow((i10 & 255) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(((i11 >> 16) & 255) / 255.0f, 2.2d);
        return (Math.round((f11 + (((((i11 >> 24) & 255) / 255.0f) - f11) * f10)) * 255.0f) << 24) | (Math.round(((float) Math.pow(fPow + ((fPow4 - fPow) * f10), 0.45454545454545453d)) * 255.0f) << 16) | (Math.round(((float) Math.pow(fPow2 + ((((float) Math.pow(((i11 >> 8) & 255) / 255.0f, 2.2d)) - fPow2) * f10), 0.45454545454545453d)) * 255.0f) << 8) | Math.round(((float) Math.pow(fPow3 + (f10 * (((float) Math.pow((i11 & 255) / 255.0f, 2.2d)) - fPow3)), 0.45454545454545453d)) * 255.0f);
    }

    private int c(float f10) {
        return (f10 <= 0.0f || f10 >= 1.0f) ? this.f6860a : f10 <= 0.5f ? b(this.f6868i * 2.0f, this.f6861b, this.f6862c) : b((this.f6868i - 0.5f) * 2.0f, this.f6862c, this.f6860a);
    }

    private float d(float f10) {
        if (f10 <= 0.0f || f10 >= 1.0f) {
            return 1.0f;
        }
        return f6859l.getInterpolation(f10);
    }

    public void a() {
        this.f6869j = -1L;
        this.f6868i = 1.0f;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        if (this.f6869j != -1) {
            long jUptimeMillis = (SystemClock.uptimeMillis() - this.f6869j) - this.f6865f;
            if (jUptimeMillis <= 0) {
                this.f6868i = 0.0f;
            } else {
                long j10 = this.f6864e;
                if (jUptimeMillis >= j10) {
                    this.f6868i = 1.0f;
                    this.f6869j = -1L;
                    this.f6870k.run();
                } else {
                    this.f6868i = d((jUptimeMillis * 1.0f) / j10);
                }
            }
            if (this.f6865f != 0 && this.f6868i == 0.0f && (this.f6867h & 1) != 0) {
                return;
            }
        }
        paint.setTextSize(this.f6863d);
        float f11 = this.f6868i;
        paint.setColor((f11 == 1.0f || (this.f6867h & 2) == 0) ? this.f6860a : c(f11));
        paint.setAlpha((int) (this.f6868i * Color.alpha(this.f6860a)));
        String string = charSequence.subSequence(i10, i11).toString();
        float f12 = i13;
        if ((this.f6867h & 4) != 0) {
            f12 += (1.0f - this.f6868i) * this.f6866g;
        }
        canvas.drawText(string, f10, f12, paint);
    }

    public void e(int i10, long j10) {
        this.f6867h = i10;
        this.f6869j = j10;
    }

    public void f(long j10, long j11, float f10) {
        this.f6864e = j10;
        this.f6865f = j11;
        this.f6866g = f10;
    }

    public void g(float f10) {
        this.f6863d = f10;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            paint.getFontMetricsInt(fontMetricsInt);
        }
        return (int) paint.measureText(charSequence.subSequence(i10, i11).toString());
    }
}
