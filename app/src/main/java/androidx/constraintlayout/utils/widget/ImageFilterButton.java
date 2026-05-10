package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
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
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class ImageFilterButton extends AppCompatImageButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageFilterView.c f1552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f1553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f1554c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f1555f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Path f1556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ViewOutlineProvider f1557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    RectF f1558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    Drawable[] f1559k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    LayerDrawable f1560l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f1561m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Drawable f1562n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Drawable f1563o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f1564p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f1565q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f1566r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f1567s;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), (Math.min(r3, r4) * ImageFilterButton.this.f1554c) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.f1555f);
        }
    }

    public ImageFilterButton(Context context) {
        super(context);
        this.f1552a = new ImageFilterView.c();
        this.f1553b = 0.0f;
        this.f1554c = 0.0f;
        this.f1555f = Float.NaN;
        this.f1559k = new Drawable[2];
        this.f1561m = true;
        this.f1562n = null;
        this.f1563o = null;
        this.f1564p = Float.NaN;
        this.f1565q = Float.NaN;
        this.f1566r = Float.NaN;
        this.f1567s = Float.NaN;
        c(context, null);
    }

    private void c(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            this.f1562n = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ImageFilterView_altSrc);
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ImageFilterView_crossfade) {
                    this.f1553b = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R$styleable.ImageFilterView_warmth) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_saturation) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_contrast) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_overlay) {
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.f1561m));
                } else if (index == R$styleable.ImageFilterView_imagePanX) {
                    setImagePanX(typedArrayObtainStyledAttributes.getFloat(index, this.f1564p));
                } else if (index == R$styleable.ImageFilterView_imagePanY) {
                    setImagePanY(typedArrayObtainStyledAttributes.getFloat(index, this.f1565q));
                } else if (index == R$styleable.ImageFilterView_imageRotate) {
                    setImageRotate(typedArrayObtainStyledAttributes.getFloat(index, this.f1567s));
                } else if (index == R$styleable.ImageFilterView_imageZoom) {
                    setImageZoom(typedArrayObtainStyledAttributes.getFloat(index, this.f1566r));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f1563o = drawable;
            if (this.f1562n == null || drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f1563o = drawable2;
                if (drawable2 != null) {
                    Drawable[] drawableArr = this.f1559k;
                    Drawable drawableMutate = drawable2.mutate();
                    this.f1563o = drawableMutate;
                    drawableArr[0] = drawableMutate;
                    return;
                }
                return;
            }
            Drawable[] drawableArr2 = this.f1559k;
            Drawable drawableMutate2 = getDrawable().mutate();
            this.f1563o = drawableMutate2;
            drawableArr2[0] = drawableMutate2;
            this.f1559k[1] = this.f1562n.mutate();
            LayerDrawable layerDrawable = new LayerDrawable(this.f1559k);
            this.f1560l = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f1553b * 255.0f));
            if (!this.f1561m) {
                this.f1560l.getDrawable(0).setAlpha((int) ((1.0f - this.f1553b) * 255.0f));
            }
            super.setImageDrawable(this.f1560l);
        }
    }

    private void d() {
        if (Float.isNaN(this.f1564p) && Float.isNaN(this.f1565q) && Float.isNaN(this.f1566r) && Float.isNaN(this.f1567s)) {
            return;
        }
        float f10 = Float.isNaN(this.f1564p) ? 0.0f : this.f1564p;
        float f11 = Float.isNaN(this.f1565q) ? 0.0f : this.f1565q;
        float f12 = Float.isNaN(this.f1566r) ? 1.0f : this.f1566r;
        float f13 = Float.isNaN(this.f1567s) ? 0.0f : this.f1567s;
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
        if (Float.isNaN(this.f1564p) && Float.isNaN(this.f1565q) && Float.isNaN(this.f1566r) && Float.isNaN(this.f1567s)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            d();
        }
    }

    private void setOverlay(boolean z10) {
        this.f1561m = z10;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getContrast() {
        return this.f1552a.f1593f;
    }

    public float getCrossfade() {
        return this.f1553b;
    }

    public float getImagePanX() {
        return this.f1564p;
    }

    public float getImagePanY() {
        return this.f1565q;
    }

    public float getImageRotate() {
        return this.f1567s;
    }

    public float getImageZoom() {
        return this.f1566r;
    }

    public float getRound() {
        return this.f1555f;
    }

    public float getRoundPercent() {
        return this.f1554c;
    }

    public float getSaturation() {
        return this.f1552a.f1592e;
    }

    public float getWarmth() {
        return this.f1552a.f1594g;
    }

    @Override // android.view.View
    public void layout(int i10, int i11, int i12, int i13) {
        super.layout(i10, i11, i12, i13);
        d();
    }

    public void setAltImageResource(int i10) {
        Drawable drawableMutate = e.a.b(getContext(), i10).mutate();
        this.f1562n = drawableMutate;
        Drawable[] drawableArr = this.f1559k;
        drawableArr[0] = this.f1563o;
        drawableArr[1] = drawableMutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f1559k);
        this.f1560l = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f1553b);
    }

    public void setBrightness(float f10) {
        ImageFilterView.c cVar = this.f1552a;
        cVar.f1591d = f10;
        cVar.c(this);
    }

    public void setContrast(float f10) {
        ImageFilterView.c cVar = this.f1552a;
        cVar.f1593f = f10;
        cVar.c(this);
    }

    public void setCrossfade(float f10) {
        this.f1553b = f10;
        if (this.f1559k != null) {
            if (!this.f1561m) {
                this.f1560l.getDrawable(0).setAlpha((int) ((1.0f - this.f1553b) * 255.0f));
            }
            this.f1560l.getDrawable(1).setAlpha((int) (this.f1553b * 255.0f));
            super.setImageDrawable(this.f1560l);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f1562n == null || drawable == null) {
            super.setImageDrawable(drawable);
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.f1563o = drawableMutate;
        Drawable[] drawableArr = this.f1559k;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f1562n;
        LayerDrawable layerDrawable = new LayerDrawable(this.f1559k);
        this.f1560l = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f1553b);
    }

    public void setImagePanX(float f10) {
        this.f1564p = f10;
        e();
    }

    public void setImagePanY(float f10) {
        this.f1565q = f10;
        e();
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageResource(int i10) {
        if (this.f1562n == null) {
            super.setImageResource(i10);
            return;
        }
        Drawable drawableMutate = e.a.b(getContext(), i10).mutate();
        this.f1563o = drawableMutate;
        Drawable[] drawableArr = this.f1559k;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f1562n;
        LayerDrawable layerDrawable = new LayerDrawable(this.f1559k);
        this.f1560l = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f1553b);
    }

    public void setImageRotate(float f10) {
        this.f1567s = f10;
        e();
    }

    public void setImageZoom(float f10) {
        this.f1566r = f10;
        e();
    }

    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.f1555f = f10;
            float f11 = this.f1554c;
            this.f1554c = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.f1555f != f10;
        this.f1555f = f10;
        if (f10 != 0.0f) {
            if (this.f1556h == null) {
                this.f1556h = new Path();
            }
            if (this.f1558j == null) {
                this.f1558j = new RectF();
            }
            if (this.f1557i == null) {
                b bVar = new b();
                this.f1557i = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f1558j.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f1556h.reset();
            Path path = this.f1556h;
            RectF rectF = this.f1558j;
            float f12 = this.f1555f;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f10) {
        boolean z10 = this.f1554c != f10;
        this.f1554c = f10;
        if (f10 != 0.0f) {
            if (this.f1556h == null) {
                this.f1556h = new Path();
            }
            if (this.f1558j == null) {
                this.f1558j = new RectF();
            }
            if (this.f1557i == null) {
                a aVar = new a();
                this.f1557i = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f1554c) / 2.0f;
            this.f1558j.set(0.0f, 0.0f, width, height);
            this.f1556h.reset();
            this.f1556h.addRoundRect(this.f1558j, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f10) {
        ImageFilterView.c cVar = this.f1552a;
        cVar.f1592e = f10;
        cVar.c(this);
    }

    public void setWarmth(float f10) {
        ImageFilterView.c cVar = this.f1552a;
        cVar.f1594g = f10;
        cVar.c(this);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1552a = new ImageFilterView.c();
        this.f1553b = 0.0f;
        this.f1554c = 0.0f;
        this.f1555f = Float.NaN;
        this.f1559k = new Drawable[2];
        this.f1561m = true;
        this.f1562n = null;
        this.f1563o = null;
        this.f1564p = Float.NaN;
        this.f1565q = Float.NaN;
        this.f1566r = Float.NaN;
        this.f1567s = Float.NaN;
        c(context, attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1552a = new ImageFilterView.c();
        this.f1553b = 0.0f;
        this.f1554c = 0.0f;
        this.f1555f = Float.NaN;
        this.f1559k = new Drawable[2];
        this.f1561m = true;
        this.f1562n = null;
        this.f1563o = null;
        this.f1564p = Float.NaN;
        this.f1565q = Float.NaN;
        this.f1566r = Float.NaN;
        this.f1567s = Float.NaN;
        c(context, attributeSet);
    }
}
