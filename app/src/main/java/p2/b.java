package p2;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.SystemClock;
import android.text.style.ReplacementSpan;
import com.coui.appcompat.animation.COUIInEaseInterpolator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class b extends ReplacementSpan {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f15176l = new a(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final COUIInEaseInterpolator f15177m = new COUIInEaseInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f15178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f15180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f15181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f15182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f15183f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f15184g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f15185h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f15186i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f15187j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f15188k;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(p2.a params, Runnable mEndRunnable) {
        r.e(params, "params");
        r.e(mEndRunnable, "mEndRunnable");
        this.f15178a = mEndRunnable;
        this.f15188k = -1L;
        this.f15183f = params.b();
        this.f15184g = params.a();
        this.f15182e = params.g();
        this.f15185h = params.d();
        this.f15180c = params.f();
        this.f15181d = params.c();
        this.f15179b = params.e();
    }

    private final int b(float f10, int i10, int i11) {
        float f11 = ((i10 >> 24) & 255) / 255.0f;
        float fPow = (float) Math.pow(((i10 >> 16) & 255) / 255.0f, 2.2d);
        float fPow2 = (float) Math.pow(((i10 >> 8) & 255) / 255.0f, 2.2d);
        float fPow3 = (float) Math.pow((i10 & 255) / 255.0f, 2.2d);
        float fPow4 = (float) Math.pow(((i11 >> 16) & 255) / 255.0f, 2.2d);
        return (Math.round((f11 + (((((i11 >> 24) & 255) / 255.0f) - f11) * f10)) * 255.0f) << 24) | (Math.round(((float) Math.pow(fPow + ((fPow4 - fPow) * f10), 0.45454545454545453d)) * 255.0f) << 16) | (Math.round(((float) Math.pow(fPow2 + ((((float) Math.pow(((i11 >> 8) & 255) / 255.0f, 2.2d)) - fPow2) * f10), 0.45454545454545453d)) * 255.0f) << 8) | Math.round(((float) Math.pow(fPow3 + (f10 * (((float) Math.pow((i11 & 255) / 255.0f, 2.2d)) - fPow3)), 0.45454545454545453d)) * 255.0f);
    }

    private final int c(float f10) {
        return (f10 <= 0.0f || f10 >= 1.0f) ? this.f15179b : f10 <= 0.5f ? b(f10 * 2.0f, this.f15180c, this.f15181d) : b((f10 - 0.5f) * 2.0f, this.f15181d, this.f15179b);
    }

    private final float d(float f10) {
        if (f10 <= 0.0f || f10 >= 1.0f) {
            return 1.0f;
        }
        return f15177m.getInterpolation(f10);
    }

    public final void a() {
        this.f15188k = -1L;
        this.f15187j = 1.0f;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        r.e(canvas, "canvas");
        r.e(text, "text");
        r.e(paint, "paint");
        if (this.f15188k != -1) {
            long jUptimeMillis = (SystemClock.uptimeMillis() + ((long) this.f15184g)) - this.f15188k;
            if (jUptimeMillis <= 0) {
                this.f15187j = 0.0f;
            } else {
                int i15 = this.f15183f;
                if (jUptimeMillis >= i15) {
                    this.f15187j = 1.0f;
                    this.f15188k = -1L;
                    this.f15178a.run();
                } else {
                    this.f15187j = d(jUptimeMillis / i15);
                }
            }
            if (this.f15184g != 0 && this.f15187j == 0.0f && (this.f15186i & 1) != 0) {
                return;
            }
        }
        float f11 = 1;
        this.f15187j = f11 - this.f15187j;
        paint.setTextSize(this.f15182e);
        float f12 = this.f15187j;
        paint.setColor((f12 == 1.0f || (this.f15186i & 2) == 0) ? this.f15179b : c(f12));
        paint.setAlpha(((int) (this.f15187j * Color.alpha(this.f15179b))) >> 1);
        String string = text.subSequence(i10, i11).toString();
        float f13 = i13;
        if ((this.f15186i & 4) != 0) {
            f13 += (f11 - this.f15187j) * this.f15185h;
        }
        canvas.drawText(string, f10, f13, paint);
    }

    public final void e(int i10, long j10) {
        this.f15186i = i10;
        this.f15188k = j10;
    }

    public final void f(int i10, int i11, float f10) {
        this.f15183f = i10;
        this.f15184g = i11;
        this.f15185h = f10;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        r.e(paint, "paint");
        r.e(text, "text");
        if (fontMetricsInt != null) {
            paint.getFontMetricsInt(fontMetricsInt);
        }
        return (int) paint.measureText(text.subSequence(i10, i11).toString());
    }
}
