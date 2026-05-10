package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.circularreveal.c;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: j */
    public static final int f9353j = 2;

    /* JADX INFO: renamed from: a */
    private final a f9354a;

    /* JADX INFO: renamed from: b */
    private final View f9355b;

    /* JADX INFO: renamed from: c */
    private final Path f9356c;

    /* JADX INFO: renamed from: d */
    private final Paint f9357d;

    /* JADX INFO: renamed from: e */
    private final Paint f9358e;

    /* JADX INFO: renamed from: f */
    private c.e f9359f;

    /* JADX INFO: renamed from: g */
    private Drawable f9360g;

    /* JADX INFO: renamed from: h */
    private boolean f9361h;

    /* JADX INFO: renamed from: i */
    private boolean f9362i;

    public interface a {
        void b(Canvas canvas);

        boolean d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(a aVar) {
        this.f9354a = aVar;
        View view = (View) aVar;
        this.f9355b = view;
        view.setWillNotDraw(false);
        this.f9356c = new Path();
        this.f9357d = new Paint(7);
        Paint paint = new Paint(1);
        this.f9358e = paint;
        paint.setColor(0);
    }

    private void d(Canvas canvas) {
        if (o()) {
            Rect bounds = this.f9360g.getBounds();
            float fWidth = this.f9359f.f9367a - (bounds.width() / 2.0f);
            float fHeight = this.f9359f.f9368b - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.f9360g.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    private float g(c.e eVar) {
        return f4.a.b(eVar.f9367a, eVar.f9368b, 0.0f, 0.0f, this.f9355b.getWidth(), this.f9355b.getHeight());
    }

    private void i() {
        if (f9353j == 1) {
            this.f9356c.rewind();
            c.e eVar = this.f9359f;
            if (eVar != null) {
                this.f9356c.addCircle(eVar.f9367a, eVar.f9368b, eVar.f9369c, Path.Direction.CW);
            }
        }
        this.f9355b.invalidate();
    }

    private boolean n() {
        c.e eVar = this.f9359f;
        boolean z10 = eVar == null || eVar.a();
        return f9353j == 0 ? !z10 && this.f9362i : !z10;
    }

    private boolean o() {
        return (this.f9361h || this.f9360g == null || this.f9359f == null) ? false : true;
    }

    private boolean p() {
        return (this.f9361h || Color.alpha(this.f9358e.getColor()) == 0) ? false : true;
    }

    public void a() {
        if (f9353j == 0) {
            this.f9361h = true;
            this.f9362i = false;
            this.f9355b.buildDrawingCache();
            Bitmap drawingCache = this.f9355b.getDrawingCache();
            if (drawingCache == null && this.f9355b.getWidth() != 0 && this.f9355b.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f9355b.getWidth(), this.f9355b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f9355b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f9357d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f9361h = false;
            this.f9362i = true;
        }
    }

    public void b() {
        if (f9353j == 0) {
            this.f9362i = false;
            this.f9355b.destroyDrawingCache();
            this.f9357d.setShader(null);
            this.f9355b.invalidate();
        }
    }

    public void c(Canvas canvas) {
        if (n()) {
            int i10 = f9353j;
            if (i10 == 0) {
                c.e eVar = this.f9359f;
                canvas.drawCircle(eVar.f9367a, eVar.f9368b, eVar.f9369c, this.f9357d);
                if (p()) {
                    c.e eVar2 = this.f9359f;
                    canvas.drawCircle(eVar2.f9367a, eVar2.f9368b, eVar2.f9369c, this.f9358e);
                }
            } else if (i10 == 1) {
                int iSave = canvas.save();
                canvas.clipPath(this.f9356c);
                this.f9354a.b(canvas);
                if (p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f9355b.getWidth(), this.f9355b.getHeight(), this.f9358e);
                }
                canvas.restoreToCount(iSave);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("Unsupported strategy " + i10);
                }
                this.f9354a.b(canvas);
                if (p()) {
                    canvas.drawRect(0.0f, 0.0f, this.f9355b.getWidth(), this.f9355b.getHeight(), this.f9358e);
                }
            }
        } else {
            this.f9354a.b(canvas);
            if (p()) {
                canvas.drawRect(0.0f, 0.0f, this.f9355b.getWidth(), this.f9355b.getHeight(), this.f9358e);
            }
        }
        d(canvas);
    }

    public Drawable e() {
        return this.f9360g;
    }

    public int f() {
        return this.f9358e.getColor();
    }

    public c.e h() {
        c.e eVar = this.f9359f;
        if (eVar == null) {
            return null;
        }
        c.e eVar2 = new c.e(eVar);
        if (eVar2.a()) {
            eVar2.f9369c = g(eVar2);
        }
        return eVar2;
    }

    public boolean j() {
        return this.f9354a.d() && !n();
    }

    public void k(Drawable drawable) {
        this.f9360g = drawable;
        this.f9355b.invalidate();
    }

    public void l(int i10) {
        this.f9358e.setColor(i10);
        this.f9355b.invalidate();
    }

    public void m(c.e eVar) {
        if (eVar == null) {
            this.f9359f = null;
        } else {
            c.e eVar2 = this.f9359f;
            if (eVar2 == null) {
                this.f9359f = new c.e(eVar);
            } else {
                eVar2.c(eVar);
            }
            if (f4.a.c(eVar.f9369c, g(eVar), 1.0E-4f)) {
                this.f9359f.f9369c = Float.MAX_VALUE;
            }
        }
        i();
    }
}
