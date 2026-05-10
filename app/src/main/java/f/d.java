package f;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class d extends Drawable {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final float f11820m = (float) Math.toRadians(45.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f11821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f11822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f11823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f11824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f11825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f11826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Path f11827g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f11828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f11829i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f11830j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f11831k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f11832l;

    public d(Context context) {
        Paint paint = new Paint();
        this.f11821a = paint;
        this.f11827g = new Path();
        this.f11829i = false;
        this.f11832l = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R$styleable.DrawerArrowToggle, R$attr.drawerArrowStyle, R$style.Base_Widget_AppCompat_DrawerArrowToggle);
        c(typedArrayObtainStyledAttributes.getColor(R$styleable.DrawerArrowToggle_color, 0));
        b(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_thickness, 0.0f));
        f(typedArrayObtainStyledAttributes.getBoolean(R$styleable.DrawerArrowToggle_spinBars, true));
        d(Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.f11828h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.DrawerArrowToggle_drawableSize, 0);
        this.f11823c = Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_barLength, 0.0f));
        this.f11822b = Math.round(typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.f11824d = typedArrayObtainStyledAttributes.getDimension(R$styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    private static float a(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    public void b(float f10) {
        if (this.f11821a.getStrokeWidth() != f10) {
            this.f11821a.setStrokeWidth(f10);
            this.f11831k = (float) (((double) (f10 / 2.0f)) * Math.cos(f11820m));
            invalidateSelf();
        }
    }

    public void c(int i10) {
        if (i10 != this.f11821a.getColor()) {
            this.f11821a.setColor(i10);
            invalidateSelf();
        }
    }

    public void d(float f10) {
        if (f10 != this.f11825e) {
            this.f11825e = f10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i10 = this.f11832l;
        boolean z10 = false;
        if (i10 != 0 && (i10 == 1 || (i10 == 3 ? v.a.f(this) == 0 : v.a.f(this) == 1))) {
            z10 = true;
        }
        float f10 = this.f11822b;
        float fA = a(this.f11823c, (float) Math.sqrt(f10 * f10 * 2.0f), this.f11830j);
        float fA2 = a(this.f11823c, this.f11824d, this.f11830j);
        float fRound = Math.round(a(0.0f, this.f11831k, this.f11830j));
        float fA3 = a(0.0f, f11820m, this.f11830j);
        float fA4 = a(z10 ? 0.0f : -180.0f, z10 ? 180.0f : 0.0f, this.f11830j);
        double d10 = fA;
        double d11 = fA3;
        boolean z11 = z10;
        float fRound2 = Math.round(Math.cos(d11) * d10);
        float fRound3 = Math.round(d10 * Math.sin(d11));
        this.f11827g.rewind();
        float fA5 = a(this.f11825e + this.f11821a.getStrokeWidth(), -this.f11831k, this.f11830j);
        float f11 = (-fA2) / 2.0f;
        this.f11827g.moveTo(f11 + fRound, 0.0f);
        this.f11827g.rLineTo(fA2 - (fRound * 2.0f), 0.0f);
        this.f11827g.moveTo(f11, fA5);
        this.f11827g.rLineTo(fRound2, fRound3);
        this.f11827g.moveTo(f11, -fA5);
        this.f11827g.rLineTo(fRound2, -fRound3);
        this.f11827g.close();
        canvas.save();
        float strokeWidth = this.f11821a.getStrokeWidth();
        float fHeight = bounds.height() - (3.0f * strokeWidth);
        canvas.translate(bounds.centerX(), ((((int) (fHeight - (2.0f * r5))) / 4) * 2) + (strokeWidth * 1.5f) + this.f11825e);
        if (this.f11826f) {
            canvas.rotate(fA4 * (this.f11829i ^ z11 ? -1 : 1));
        } else if (z11) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.f11827g, this.f11821a);
        canvas.restore();
    }

    public void e(float f10) {
        if (this.f11830j != f10) {
            this.f11830j = f10;
            invalidateSelf();
        }
    }

    public void f(boolean z10) {
        if (this.f11826f != z10) {
            this.f11826f = z10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f11828h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f11828h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (i10 != this.f11821a.getAlpha()) {
            this.f11821a.setAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f11821a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
