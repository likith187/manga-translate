package k4;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f12902i = new int[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final float[] f12903j = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f12904k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final float[] f12905l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f12906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f12907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f12908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f12909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12911f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Path f12912g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f12913h;

    public a() {
        this(-16777216);
    }

    public void a(Canvas canvas, Matrix matrix, RectF rectF, int i10, float f10, float f11) {
        boolean z10 = f11 < 0.0f;
        Path path = this.f12912g;
        if (z10) {
            int[] iArr = f12904k;
            iArr[0] = 0;
            iArr[1] = this.f12911f;
            iArr[2] = this.f12910e;
            iArr[3] = this.f12909d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f10, f11);
            path.close();
            float f12 = -i10;
            rectF.inset(f12, f12);
            int[] iArr2 = f12904k;
            iArr2[0] = 0;
            iArr2[1] = this.f12909d;
            iArr2[2] = this.f12910e;
            iArr2[3] = this.f12911f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f13 = 1.0f - (i10 / fWidth);
        float[] fArr = f12905l;
        fArr[1] = f13;
        fArr[2] = ((1.0f - f13) / 2.0f) + f13;
        this.f12907b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, f12904k, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z10) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f12913h);
        }
        canvas.drawArc(rectF, f10, f11, true, this.f12907b);
        canvas.restore();
    }

    public void b(Canvas canvas, Matrix matrix, RectF rectF, int i10) {
        rectF.bottom += i10;
        rectF.offset(0.0f, -i10);
        int[] iArr = f12902i;
        iArr[0] = this.f12911f;
        iArr[1] = this.f12910e;
        iArr[2] = this.f12909d;
        Paint paint = this.f12908c;
        float f10 = rectF.left;
        paint.setShader(new LinearGradient(f10, rectF.top, f10, rectF.bottom, iArr, f12903j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f12908c);
        canvas.restore();
    }

    public Paint c() {
        return this.f12906a;
    }

    public void d(int i10) {
        this.f12909d = d.u(i10, 68);
        this.f12910e = d.u(i10, 20);
        this.f12911f = d.u(i10, 0);
        this.f12906a.setColor(this.f12909d);
    }

    public a(int i10) {
        this.f12912g = new Path();
        Paint paint = new Paint();
        this.f12913h = paint;
        this.f12906a = new Paint();
        d(i10);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f12907b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f12908c = new Paint(paint2);
    }
}
