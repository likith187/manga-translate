package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f1570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f1572c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f1573f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f1574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f1575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f1576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Path f1577k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ViewOutlineProvider f1578l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    RectF f1579m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Drawable[] f1580n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    LayerDrawable f1581o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f1582p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f1583q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    float f1584r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f1585s;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), (Math.min(r3, r4) * ImageFilterView.this.f1575i) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.f1576j);
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float[] f1588a = new float[20];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ColorMatrix f1589b = new ColorMatrix();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorMatrix f1590c = new ColorMatrix();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f1591d = 1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f1592e = 1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f1593f = 1.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f1594g = 1.0f;

        c() {
        }

        private void a(float f10) {
            float[] fArr = this.f1588a;
            fArr[0] = f10;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = f10;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = f10;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void b(float f10) {
            float f11 = 1.0f - f10;
            float f12 = 0.2999f * f11;
            float f13 = 0.587f * f11;
            float f14 = f11 * 0.114f;
            float[] fArr = this.f1588a;
            fArr[0] = f12 + f10;
            fArr[1] = f13;
            fArr[2] = f14;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = f12;
            fArr[6] = f13 + f10;
            fArr[7] = f14;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = f12;
            fArr[11] = f13;
            fArr[12] = f14 + f10;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void d(float f10) {
            float fLog;
            float fPow;
            if (f10 <= 0.0f) {
                f10 = 0.01f;
            }
            float f11 = (5000.0f / f10) / 100.0f;
            if (f11 > 66.0f) {
                double d10 = f11 - 60.0f;
                fPow = ((float) Math.pow(d10, -0.13320475816726685d)) * 329.69873f;
                fLog = ((float) Math.pow(d10, 0.07551485300064087d)) * 288.12216f;
            } else {
                fLog = (((float) Math.log(f11)) * 99.4708f) - 161.11957f;
                fPow = 255.0f;
            }
            float fLog2 = f11 < 66.0f ? f11 > 19.0f ? (((float) Math.log(f11 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f : 255.0f;
            float fMin = Math.min(255.0f, Math.max(fPow, 0.0f));
            float fMin2 = Math.min(255.0f, Math.max(fLog, 0.0f));
            float fMin3 = Math.min(255.0f, Math.max(fLog2, 0.0f));
            float fLog3 = (((float) Math.log(50.0f)) * 99.4708f) - 161.11957f;
            float fLog4 = (((float) Math.log(40.0f)) * 138.51773f) - 305.0448f;
            float fMin4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
            float fMin5 = Math.min(255.0f, Math.max(fLog3, 0.0f));
            float fMin6 = fMin3 / Math.min(255.0f, Math.max(fLog4, 0.0f));
            float[] fArr = this.f1588a;
            fArr[0] = fMin / fMin4;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = fMin2 / fMin5;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = fMin6;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        void c(ImageView imageView) {
            boolean z10;
            this.f1589b.reset();
            float f10 = this.f1592e;
            boolean z11 = true;
            if (f10 != 1.0f) {
                b(f10);
                this.f1589b.set(this.f1588a);
                z10 = true;
            } else {
                z10 = false;
            }
            float f11 = this.f1593f;
            if (f11 != 1.0f) {
                this.f1590c.setScale(f11, f11, f11, 1.0f);
                this.f1589b.postConcat(this.f1590c);
                z10 = true;
            }
            float f12 = this.f1594g;
            if (f12 != 1.0f) {
                d(f12);
                this.f1590c.set(this.f1588a);
                this.f1589b.postConcat(this.f1590c);
                z10 = true;
            }
            float f13 = this.f1591d;
            if (f13 != 1.0f) {
                a(f13);
                this.f1590c.set(this.f1588a);
                this.f1589b.postConcat(this.f1590c);
            } else {
                z11 = z10;
            }
            if (z11) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.f1589b));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        this.f1570a = new c();
        this.f1571b = true;
        this.f1572c = null;
        this.f1573f = null;
        this.f1574h = 0.0f;
        this.f1575i = 0.0f;
        this.f1576j = Float.NaN;
        this.f1580n = new Drawable[2];
        this.f1582p = Float.NaN;
        this.f1583q = Float.NaN;
        this.f1584r = Float.NaN;
        this.f1585s = Float.NaN;
        c(context, null);
    }

    private void c(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            this.f1572c = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ImageFilterView_altSrc);
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ImageFilterView_crossfade) {
                    this.f1574h = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R$styleable.ImageFilterView_warmth) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_saturation) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_contrast) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_brightness) {
                    setBrightness(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_overlay) {
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.f1571b));
                } else if (index == R$styleable.ImageFilterView_imagePanX) {
                    setImagePanX(typedArrayObtainStyledAttributes.getFloat(index, this.f1582p));
                } else if (index == R$styleable.ImageFilterView_imagePanY) {
                    setImagePanY(typedArrayObtainStyledAttributes.getFloat(index, this.f1583q));
                } else if (index == R$styleable.ImageFilterView_imageRotate) {
                    setImageRotate(typedArrayObtainStyledAttributes.getFloat(index, this.f1585s));
                } else if (index == R$styleable.ImageFilterView_imageZoom) {
                    setImageZoom(typedArrayObtainStyledAttributes.getFloat(index, this.f1584r));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f1573f = drawable;
            if (this.f1572c == null || drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f1573f = drawable2;
                if (drawable2 != null) {
                    Drawable[] drawableArr = this.f1580n;
                    Drawable drawableMutate = drawable2.mutate();
                    this.f1573f = drawableMutate;
                    drawableArr[0] = drawableMutate;
                    return;
                }
                return;
            }
            Drawable[] drawableArr2 = this.f1580n;
            Drawable drawableMutate2 = getDrawable().mutate();
            this.f1573f = drawableMutate2;
            drawableArr2[0] = drawableMutate2;
            this.f1580n[1] = this.f1572c.mutate();
            LayerDrawable layerDrawable = new LayerDrawable(this.f1580n);
            this.f1581o = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f1574h * 255.0f));
            if (!this.f1571b) {
                this.f1581o.getDrawable(0).setAlpha((int) ((1.0f - this.f1574h) * 255.0f));
            }
            super.setImageDrawable(this.f1581o);
        }
    }

    private void d() {
        if (Float.isNaN(this.f1582p) && Float.isNaN(this.f1583q) && Float.isNaN(this.f1584r) && Float.isNaN(this.f1585s)) {
            return;
        }
        float f10 = Float.isNaN(this.f1582p) ? 0.0f : this.f1582p;
        float f11 = Float.isNaN(this.f1583q) ? 0.0f : this.f1583q;
        float f12 = Float.isNaN(this.f1584r) ? 1.0f : this.f1584r;
        float f13 = Float.isNaN(this.f1585s) ? 0.0f : this.f1585s;
        Matrix matrix = new Matrix();
        matrix.reset();
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float width = getWidth();
        float height = getHeight();
        float f14 = f12 * (intrinsicWidth * height < intrinsicHeight * width ? width / intrinsicWidth : height / intrinsicHeight);
        matrix.postScale(f14, f14);
        float f15 = intrinsicWidth * f14;
        float f16 = f14 * intrinsicHeight;
        matrix.postTranslate((((f10 * (width - f15)) + width) - f15) * 0.5f, (((f11 * (height - f16)) + height) - f16) * 0.5f);
        matrix.postRotate(f13, width / 2.0f, height / 2.0f);
        setImageMatrix(matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private void e() {
        if (Float.isNaN(this.f1582p) && Float.isNaN(this.f1583q) && Float.isNaN(this.f1584r) && Float.isNaN(this.f1585s)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            d();
        }
    }

    private void setOverlay(boolean z10) {
        this.f1571b = z10;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getBrightness() {
        return this.f1570a.f1591d;
    }

    public float getContrast() {
        return this.f1570a.f1593f;
    }

    public float getCrossfade() {
        return this.f1574h;
    }

    public float getImagePanX() {
        return this.f1582p;
    }

    public float getImagePanY() {
        return this.f1583q;
    }

    public float getImageRotate() {
        return this.f1585s;
    }

    public float getImageZoom() {
        return this.f1584r;
    }

    public float getRound() {
        return this.f1576j;
    }

    public float getRoundPercent() {
        return this.f1575i;
    }

    public float getSaturation() {
        return this.f1570a.f1592e;
    }

    public float getWarmth() {
        return this.f1570a.f1594g;
    }

    @Override // android.view.View
    public void layout(int i10, int i11, int i12, int i13) {
        super.layout(i10, i11, i12, i13);
        d();
    }

    public void setAltImageDrawable(Drawable drawable) {
        Drawable drawableMutate = drawable.mutate();
        this.f1572c = drawableMutate;
        Drawable[] drawableArr = this.f1580n;
        drawableArr[0] = this.f1573f;
        drawableArr[1] = drawableMutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f1580n);
        this.f1581o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f1574h);
    }

    public void setAltImageResource(int i10) {
        Drawable drawableB = e.a.b(getContext(), i10);
        this.f1572c = drawableB;
        setAltImageDrawable(drawableB);
    }

    public void setBrightness(float f10) {
        c cVar = this.f1570a;
        cVar.f1591d = f10;
        cVar.c(this);
    }

    public void setContrast(float f10) {
        c cVar = this.f1570a;
        cVar.f1593f = f10;
        cVar.c(this);
    }

    public void setCrossfade(float f10) {
        this.f1574h = f10;
        if (this.f1580n != null) {
            if (!this.f1571b) {
                this.f1581o.getDrawable(0).setAlpha((int) ((1.0f - this.f1574h) * 255.0f));
            }
            this.f1581o.getDrawable(1).setAlpha((int) (this.f1574h * 255.0f));
            super.setImageDrawable(this.f1581o);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f1572c == null || drawable == null) {
            super.setImageDrawable(drawable);
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.f1573f = drawableMutate;
        Drawable[] drawableArr = this.f1580n;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f1572c;
        LayerDrawable layerDrawable = new LayerDrawable(this.f1580n);
        this.f1581o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f1574h);
    }

    public void setImagePanX(float f10) {
        this.f1582p = f10;
        e();
    }

    public void setImagePanY(float f10) {
        this.f1583q = f10;
        e();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        if (this.f1572c == null) {
            super.setImageResource(i10);
            return;
        }
        Drawable drawableMutate = e.a.b(getContext(), i10).mutate();
        this.f1573f = drawableMutate;
        Drawable[] drawableArr = this.f1580n;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f1572c;
        LayerDrawable layerDrawable = new LayerDrawable(this.f1580n);
        this.f1581o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f1574h);
    }

    public void setImageRotate(float f10) {
        this.f1585s = f10;
        e();
    }

    public void setImageZoom(float f10) {
        this.f1584r = f10;
        e();
    }

    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.f1576j = f10;
            float f11 = this.f1575i;
            this.f1575i = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.f1576j != f10;
        this.f1576j = f10;
        if (f10 != 0.0f) {
            if (this.f1577k == null) {
                this.f1577k = new Path();
            }
            if (this.f1579m == null) {
                this.f1579m = new RectF();
            }
            if (this.f1578l == null) {
                b bVar = new b();
                this.f1578l = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f1579m.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f1577k.reset();
            Path path = this.f1577k;
            RectF rectF = this.f1579m;
            float f12 = this.f1576j;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f10) {
        boolean z10 = this.f1575i != f10;
        this.f1575i = f10;
        if (f10 != 0.0f) {
            if (this.f1577k == null) {
                this.f1577k = new Path();
            }
            if (this.f1579m == null) {
                this.f1579m = new RectF();
            }
            if (this.f1578l == null) {
                a aVar = new a();
                this.f1578l = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f1575i) / 2.0f;
            this.f1579m.set(0.0f, 0.0f, width, height);
            this.f1577k.reset();
            this.f1577k.addRoundRect(this.f1579m, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f10) {
        c cVar = this.f1570a;
        cVar.f1592e = f10;
        cVar.c(this);
    }

    public void setWarmth(float f10) {
        c cVar = this.f1570a;
        cVar.f1594g = f10;
        cVar.c(this);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1570a = new c();
        this.f1571b = true;
        this.f1572c = null;
        this.f1573f = null;
        this.f1574h = 0.0f;
        this.f1575i = 0.0f;
        this.f1576j = Float.NaN;
        this.f1580n = new Drawable[2];
        this.f1582p = Float.NaN;
        this.f1583q = Float.NaN;
        this.f1584r = Float.NaN;
        this.f1585s = Float.NaN;
        c(context, attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1570a = new c();
        this.f1571b = true;
        this.f1572c = null;
        this.f1573f = null;
        this.f1574h = 0.0f;
        this.f1575i = 0.0f;
        this.f1576j = Float.NaN;
        this.f1580n = new Drawable[2];
        this.f1582p = Float.NaN;
        this.f1583q = Float.NaN;
        this.f1584r = Float.NaN;
        this.f1585s = Float.NaN;
        c(context, attributeSet);
    }
}
