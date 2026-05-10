package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import com.coui.appcompat.version.COUIVersionUtil;
import com.google.android.material.R$attr;
import com.google.android.material.shape.n;
import com.google.android.material.shape.o;
import com.google.android.material.shape.p;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
public class i extends Drawable implements r {
    public static final int SHADOW_COMPAT_MODE_ALWAYS = 2;
    public static final int SHADOW_COMPAT_MODE_DEFAULT = 0;
    public static final int SHADOW_COMPAT_MODE_NEVER = 1;
    private static final float SHADOW_OFFSET_MULTIPLIER = 0.25f;
    private static final float SHADOW_RADIUS_MULTIPLIER = 0.75f;
    private static final String TAG = "i";
    private static final Paint clearPaint;
    private final BitSet containsIncompatibleShadowOp;
    private final p.g[] cornerShadowOperation;
    private c drawableState;
    private final p.g[] edgeShadowOperation;
    private final Paint fillPaint;
    private final RectF insetRectF;
    private final Matrix matrix;
    private final Path path;
    private final RectF pathBounds;
    private boolean pathDirty;
    private final Path pathInsetByStroke;
    private final o pathProvider;
    private final o.b pathShadowListener;
    private final RectF rectF;
    private int resolvedTintColor;
    private final Region scratchRegion;
    private boolean shadowBitmapDrawingEnable;
    private final k4.a shadowRenderer;
    private final Paint strokePaint;
    private n strokeShapeAppearance;
    private PorterDuffColorFilter strokeTintFilter;
    private PorterDuffColorFilter tintFilter;
    private final Region transparentRegion;

    class a implements o.b {
        a() {
        }

        @Override // com.google.android.material.shape.o.b
        public void a(p pVar, Matrix matrix, int i10) {
            i.this.containsIncompatibleShadowOp.set(i10 + 4, pVar.e());
            i.this.edgeShadowOperation[i10] = pVar.f(matrix);
        }

        @Override // com.google.android.material.shape.o.b
        public void b(p pVar, Matrix matrix, int i10) {
            i.this.containsIncompatibleShadowOp.set(i10, pVar.e());
            i.this.cornerShadowOperation[i10] = pVar.f(matrix);
        }
    }

    class b implements n.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f10047a;

        b(float f10) {
            this.f10047a = f10;
        }

        @Override // com.google.android.material.shape.n.c
        public d a(d dVar) {
            return dVar instanceof l ? dVar : new com.google.android.material.shape.b(this.f10047a, dVar);
        }
    }

    static {
        Paint paint = new Paint(1);
        clearPaint = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public i() {
        this(new n());
    }

    private PorterDuffColorFilter a(Paint paint, boolean z10) {
        if (!z10) {
            return null;
        }
        int color = paint.getColor();
        int iCompositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(color);
        this.resolvedTintColor = iCompositeElevationOverlayIfNeeded;
        if (iCompositeElevationOverlayIfNeeded != color) {
            return new PorterDuffColorFilter(iCompositeElevationOverlayIfNeeded, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    private void b(RectF rectF, Path path) {
        calculatePathForSize(rectF, path);
        if (this.drawableState.f10058j != 1.0f) {
            this.matrix.reset();
            Matrix matrix = this.matrix;
            float f10 = this.drawableState.f10058j;
            matrix.setScale(f10, f10, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.matrix);
        }
        path.computeBounds(this.pathBounds, true);
    }

    private void c() {
        n nVarY = getShapeAppearanceModel().y(new b(-j()));
        this.strokeShapeAppearance = nVarY;
        this.pathProvider.d(nVarY, this.drawableState.f10059k, i(), this.pathInsetByStroke);
    }

    public static i createWithElevationOverlay(Context context) {
        return createWithElevationOverlay(context, 0.0f);
    }

    private PorterDuffColorFilter d(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z10) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z10) {
            colorForState = compositeElevationOverlayIfNeeded(colorForState);
        }
        this.resolvedTintColor = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    private PorterDuffColorFilter e(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z10) {
        return (colorStateList == null || mode == null) ? a(paint, z10) : d(colorStateList, mode, z10);
    }

    private void f(Canvas canvas) {
        if (this.containsIncompatibleShadowOp.cardinality() > 0) {
            Log.w(TAG, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.drawableState.f10067s != 0) {
            canvas.drawPath(this.path, this.shadowRenderer.c());
        }
        for (int i10 = 0; i10 < 4; i10++) {
            this.cornerShadowOperation[i10].b(this.shadowRenderer, this.drawableState.f10066r, canvas);
            this.edgeShadowOperation[i10].b(this.shadowRenderer, this.drawableState.f10066r, canvas);
        }
        if (this.shadowBitmapDrawingEnable) {
            int shadowOffsetX = getShadowOffsetX();
            int shadowOffsetY = getShadowOffsetY();
            canvas.translate(-shadowOffsetX, -shadowOffsetY);
            canvas.drawPath(this.path, clearPaint);
            canvas.translate(shadowOffsetX, shadowOffsetY);
        }
    }

    private void g(Canvas canvas) {
        h(canvas, this.fillPaint, this.path, this.drawableState.f10049a, getBoundsAsRectF());
    }

    private void h(Canvas canvas, Paint paint, Path path, n nVar, RectF rectF) {
        if (!nVar.u(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = nVar.t().a(rectF) * this.drawableState.f10059k;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    private RectF i() {
        this.insetRectF.set(getBoundsAsRectF());
        float fJ = j();
        this.insetRectF.inset(fJ, fJ);
        return this.insetRectF;
    }

    private float j() {
        if (m()) {
            return this.strokePaint.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private boolean k() {
        c cVar = this.drawableState;
        int i10 = cVar.f10065q;
        return i10 != 1 && cVar.f10066r > 0 && (i10 == 2 || requiresCompatShadow());
    }

    private boolean l() {
        Paint.Style style = this.drawableState.f10070v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean m() {
        Paint.Style style = this.drawableState.f10070v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.strokePaint.getStrokeWidth() > 0.0f;
    }

    private void n() {
        super.invalidateSelf();
    }

    private void o(Canvas canvas) {
        if (k()) {
            canvas.save();
            q(canvas);
            if (!this.shadowBitmapDrawingEnable) {
                f(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.pathBounds.width() - getBounds().width());
            int iHeight = (int) (this.pathBounds.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.pathBounds.width()) + (this.drawableState.f10066r * 2) + iWidth, ((int) this.pathBounds.height()) + (this.drawableState.f10066r * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f10 = (getBounds().left - this.drawableState.f10066r) - iWidth;
            float f11 = (getBounds().top - this.drawableState.f10066r) - iHeight;
            canvas2.translate(-f10, -f11);
            f(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f10, f11, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    private static int p(int i10, int i11) {
        return (i10 * (i11 + (i11 >>> 7))) >>> 8;
    }

    private void q(Canvas canvas) {
        canvas.translate(getShadowOffsetX(), getShadowOffsetY());
    }

    private boolean r(int[] iArr) {
        boolean z10;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.drawableState.f10052d == null || color2 == (colorForState2 = this.drawableState.f10052d.getColorForState(iArr, (color2 = this.fillPaint.getColor())))) {
            z10 = false;
        } else {
            this.fillPaint.setColor(colorForState2);
            z10 = true;
        }
        if (this.drawableState.f10053e == null || color == (colorForState = this.drawableState.f10053e.getColorForState(iArr, (color = this.strokePaint.getColor())))) {
            return z10;
        }
        this.strokePaint.setColor(colorForState);
        return true;
    }

    private boolean s() {
        PorterDuffColorFilter porterDuffColorFilter = this.tintFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.strokeTintFilter;
        c cVar = this.drawableState;
        this.tintFilter = e(cVar.f10055g, cVar.f10056h, this.fillPaint, true);
        c cVar2 = this.drawableState;
        this.strokeTintFilter = e(cVar2.f10054f, cVar2.f10056h, this.strokePaint, false);
        c cVar3 = this.drawableState;
        if (cVar3.f10069u) {
            this.shadowRenderer.d(cVar3.f10055g.getColorForState(getState(), 0));
        }
        return (c0.c.a(porterDuffColorFilter, this.tintFilter) && c0.c.a(porterDuffColorFilter2, this.strokeTintFilter)) ? false : true;
    }

    private void t() {
        float z10 = getZ();
        this.drawableState.f10066r = (int) Math.ceil(0.75f * z10);
        this.drawableState.f10067s = (int) Math.ceil(z10 * SHADOW_OFFSET_MULTIPLIER);
        s();
        n();
    }

    protected final void calculatePathForSize(RectF rectF, Path path) {
        o oVar = this.pathProvider;
        c cVar = this.drawableState;
        oVar.e(cVar.f10049a, cVar.f10059k, rectF, this.pathShadowListener, path);
    }

    protected int compositeElevationOverlayIfNeeded(int i10) {
        float z10 = getZ() + getParentAbsoluteElevation();
        d4.a aVar = this.drawableState.f10050b;
        return aVar != null ? aVar.c(i10, z10) : i10;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.fillPaint.setColorFilter(this.tintFilter);
        int alpha = this.fillPaint.getAlpha();
        this.fillPaint.setAlpha(p(alpha, this.drawableState.f10061m));
        this.strokePaint.setColorFilter(this.strokeTintFilter);
        this.strokePaint.setStrokeWidth(this.drawableState.f10060l);
        int alpha2 = this.strokePaint.getAlpha();
        this.strokePaint.setAlpha(p(alpha2, this.drawableState.f10061m));
        if (this.pathDirty) {
            c();
            b(getBoundsAsRectF(), this.path);
            this.pathDirty = false;
        }
        o(canvas);
        if (l()) {
            g(canvas);
        }
        if (m()) {
            drawStrokeShape(canvas);
        }
        this.fillPaint.setAlpha(alpha);
        this.strokePaint.setAlpha(alpha2);
    }

    protected void drawShape(Canvas canvas, Paint paint, Path path, RectF rectF) {
        h(canvas, paint, path, this.drawableState.f10049a, rectF);
    }

    protected void drawStrokeShape(Canvas canvas) {
        h(canvas, this.strokePaint, this.pathInsetByStroke, this.strokeShapeAppearance, i());
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.drawableState.f10061m;
    }

    public float getBottomLeftCornerResolvedSize() {
        return this.drawableState.f10049a.j().a(getBoundsAsRectF());
    }

    public float getBottomRightCornerResolvedSize() {
        return this.drawableState.f10049a.l().a(getBoundsAsRectF());
    }

    protected RectF getBoundsAsRectF() {
        this.rectF.set(getBounds());
        return this.rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.drawableState;
    }

    public float getElevation() {
        return this.drawableState.f10063o;
    }

    public ColorStateList getFillColor() {
        return this.drawableState.f10052d;
    }

    public float getInterpolation() {
        return this.drawableState.f10059k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(COUIVersionUtil.COUI_8_2)
    public void getOutline(Outline outline) {
        if (this.drawableState.f10065q == 2) {
            return;
        }
        if (isRoundRect()) {
            outline.setRoundRect(getBounds(), getTopLeftCornerResolvedSize() * this.drawableState.f10059k);
        } else {
            b(getBoundsAsRectF(), this.path);
            com.google.android.material.drawable.a.l(outline, this.path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.drawableState.f10057i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    public Paint.Style getPaintStyle() {
        return this.drawableState.f10070v;
    }

    public float getParentAbsoluteElevation() {
        return this.drawableState.f10062n;
    }

    @Deprecated
    public void getPathForSize(int i10, int i11, Path path) {
        calculatePathForSize(new RectF(0.0f, 0.0f, i10, i11), path);
    }

    public int getResolvedTintColor() {
        return this.resolvedTintColor;
    }

    public float getScale() {
        return this.drawableState.f10058j;
    }

    public int getShadowCompatRotation() {
        return this.drawableState.f10068t;
    }

    public int getShadowCompatibilityMode() {
        return this.drawableState.f10065q;
    }

    @Deprecated
    public int getShadowElevation() {
        return (int) getElevation();
    }

    public int getShadowOffsetX() {
        return (int) (((double) this.drawableState.f10067s) * Math.sin(Math.toRadians(r4.f10068t)));
    }

    public int getShadowOffsetY() {
        return (int) (((double) this.drawableState.f10067s) * Math.cos(Math.toRadians(r4.f10068t)));
    }

    public int getShadowRadius() {
        return this.drawableState.f10066r;
    }

    public int getShadowVerticalOffset() {
        return this.drawableState.f10067s;
    }

    public n getShapeAppearanceModel() {
        return this.drawableState.f10049a;
    }

    @Deprecated
    public q getShapedViewModel() {
        getShapeAppearanceModel();
        return null;
    }

    public ColorStateList getStrokeColor() {
        return this.drawableState.f10053e;
    }

    public ColorStateList getStrokeTintList() {
        return this.drawableState.f10054f;
    }

    public float getStrokeWidth() {
        return this.drawableState.f10060l;
    }

    public ColorStateList getTintList() {
        return this.drawableState.f10055g;
    }

    public float getTopLeftCornerResolvedSize() {
        return this.drawableState.f10049a.r().a(getBoundsAsRectF());
    }

    public float getTopRightCornerResolvedSize() {
        return this.drawableState.f10049a.t().a(getBoundsAsRectF());
    }

    public float getTranslationZ() {
        return this.drawableState.f10064p;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.transparentRegion.set(getBounds());
        b(getBoundsAsRectF(), this.path);
        this.scratchRegion.setPath(this.path, this.transparentRegion);
        this.transparentRegion.op(this.scratchRegion, Region.Op.DIFFERENCE);
        return this.transparentRegion;
    }

    public float getZ() {
        return getElevation() + getTranslationZ();
    }

    public void initializeElevationOverlay(Context context) {
        this.drawableState.f10050b = new d4.a(context);
        t();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.pathDirty = true;
        super.invalidateSelf();
    }

    public boolean isElevationOverlayEnabled() {
        d4.a aVar = this.drawableState.f10050b;
        return aVar != null && aVar.e();
    }

    public boolean isElevationOverlayInitialized() {
        return this.drawableState.f10050b != null;
    }

    public boolean isPointInTransparentRegion(int i10, int i11) {
        return getTransparentRegion().contains(i10, i11);
    }

    public boolean isRoundRect() {
        return this.drawableState.f10049a.u(getBoundsAsRectF());
    }

    @Deprecated
    public boolean isShadowEnabled() {
        int i10 = this.drawableState.f10065q;
        return i10 == 0 || i10 == 2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.drawableState.f10055g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.drawableState.f10054f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.drawableState.f10053e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.drawableState.f10052d) != null && colorStateList4.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.drawableState = new c(this.drawableState);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.pathDirty = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    protected boolean onStateChange(int[] iArr) {
        boolean z10 = r(iArr) || s();
        if (z10) {
            invalidateSelf();
        }
        return z10;
    }

    public boolean requiresCompatShadow() {
        if (isRoundRect()) {
            return false;
        }
        this.path.isConvex();
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        c cVar = this.drawableState;
        if (cVar.f10061m != i10) {
            cVar.f10061m = i10;
            n();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.drawableState.f10051c = colorFilter;
        n();
    }

    public void setCornerSize(float f10) {
        setShapeAppearanceModel(this.drawableState.f10049a.w(f10));
    }

    public void setEdgeIntersectionCheckEnable(boolean z10) {
        this.pathProvider.n(z10);
    }

    public void setElevation(float f10) {
        c cVar = this.drawableState;
        if (cVar.f10063o != f10) {
            cVar.f10063o = f10;
            t();
        }
    }

    public void setFillColor(ColorStateList colorStateList) {
        c cVar = this.drawableState;
        if (cVar.f10052d != colorStateList) {
            cVar.f10052d = colorStateList;
            onStateChange(getState());
        }
    }

    public void setInterpolation(float f10) {
        c cVar = this.drawableState;
        if (cVar.f10059k != f10) {
            cVar.f10059k = f10;
            this.pathDirty = true;
            invalidateSelf();
        }
    }

    public void setPadding(int i10, int i11, int i12, int i13) {
        c cVar = this.drawableState;
        if (cVar.f10057i == null) {
            cVar.f10057i = new Rect();
        }
        this.drawableState.f10057i.set(i10, i11, i12, i13);
        invalidateSelf();
    }

    public void setPaintStyle(Paint.Style style) {
        this.drawableState.f10070v = style;
        n();
    }

    public void setParentAbsoluteElevation(float f10) {
        c cVar = this.drawableState;
        if (cVar.f10062n != f10) {
            cVar.f10062n = f10;
            t();
        }
    }

    public void setScale(float f10) {
        c cVar = this.drawableState;
        if (cVar.f10058j != f10) {
            cVar.f10058j = f10;
            invalidateSelf();
        }
    }

    public void setShadowBitmapDrawingEnable(boolean z10) {
        this.shadowBitmapDrawingEnable = z10;
    }

    public void setShadowColor(int i10) {
        this.shadowRenderer.d(i10);
        this.drawableState.f10069u = false;
        n();
    }

    public void setShadowCompatRotation(int i10) {
        c cVar = this.drawableState;
        if (cVar.f10068t != i10) {
            cVar.f10068t = i10;
            n();
        }
    }

    public void setShadowCompatibilityMode(int i10) {
        c cVar = this.drawableState;
        if (cVar.f10065q != i10) {
            cVar.f10065q = i10;
            n();
        }
    }

    @Deprecated
    public void setShadowElevation(int i10) {
        setElevation(i10);
    }

    @Deprecated
    public void setShadowEnabled(boolean z10) {
        setShadowCompatibilityMode(!z10 ? 1 : 0);
    }

    @Deprecated
    public void setShadowRadius(int i10) {
        this.drawableState.f10066r = i10;
    }

    public void setShadowVerticalOffset(int i10) {
        c cVar = this.drawableState;
        if (cVar.f10067s != i10) {
            cVar.f10067s = i10;
            n();
        }
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(n nVar) {
        this.drawableState.f10049a = nVar;
        invalidateSelf();
    }

    @Deprecated
    public void setShapedViewModel(q qVar) {
        setShapeAppearanceModel(qVar);
    }

    public void setStroke(float f10, int i10) {
        setStrokeWidth(f10);
        setStrokeColor(ColorStateList.valueOf(i10));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        c cVar = this.drawableState;
        if (cVar.f10053e != colorStateList) {
            cVar.f10053e = colorStateList;
            onStateChange(getState());
        }
    }

    public void setStrokeTint(ColorStateList colorStateList) {
        this.drawableState.f10054f = colorStateList;
        s();
        n();
    }

    public void setStrokeWidth(float f10) {
        this.drawableState.f10060l = f10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.drawableState.f10055g = colorStateList;
        s();
        n();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.drawableState;
        if (cVar.f10056h != mode) {
            cVar.f10056h = mode;
            s();
            n();
        }
    }

    public void setTranslationZ(float f10) {
        c cVar = this.drawableState;
        if (cVar.f10064p != f10) {
            cVar.f10064p = f10;
            t();
        }
    }

    public void setUseTintColorForShadow(boolean z10) {
        c cVar = this.drawableState;
        if (cVar.f10069u != z10) {
            cVar.f10069u = z10;
            invalidateSelf();
        }
    }

    public void setZ(float f10) {
        setTranslationZ(f10 - getElevation());
    }

    public i(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(n.e(context, attributeSet, i10, i11).m());
    }

    public static i createWithElevationOverlay(Context context, float f10) {
        return createWithElevationOverlay(context, f10, null);
    }

    public void setCornerSize(d dVar) {
        setShapeAppearanceModel(this.drawableState.f10049a.x(dVar));
    }

    public i(n nVar) {
        this(new c(nVar, null));
    }

    public static i createWithElevationOverlay(Context context, float f10, ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(b4.a.c(context, R$attr.colorSurface, i.class.getSimpleName()));
        }
        i iVar = new i();
        iVar.initializeElevationOverlay(context);
        iVar.setFillColor(colorStateList);
        iVar.setElevation(f10);
        return iVar;
    }

    public void setStroke(float f10, ColorStateList colorStateList) {
        setStrokeWidth(f10);
        setStrokeColor(colorStateList);
    }

    protected i(c cVar) {
        o oVar;
        this.cornerShadowOperation = new p.g[4];
        this.edgeShadowOperation = new p.g[4];
        this.containsIncompatibleShadowOp = new BitSet(8);
        this.matrix = new Matrix();
        this.path = new Path();
        this.pathInsetByStroke = new Path();
        this.rectF = new RectF();
        this.insetRectF = new RectF();
        this.transparentRegion = new Region();
        this.scratchRegion = new Region();
        Paint paint = new Paint(1);
        this.fillPaint = paint;
        Paint paint2 = new Paint(1);
        this.strokePaint = paint2;
        this.shadowRenderer = new k4.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            oVar = o.k();
        } else {
            oVar = new o();
        }
        this.pathProvider = oVar;
        this.pathBounds = new RectF();
        this.shadowBitmapDrawingEnable = true;
        this.drawableState = cVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        s();
        r(getState());
        this.pathShadowListener = new a();
    }

    public void setStrokeTint(int i10) {
        setStrokeTint(ColorStateList.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        n f10049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d4.a f10050b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorFilter f10051c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ColorStateList f10052d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ColorStateList f10053e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ColorStateList f10054f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ColorStateList f10055g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PorterDuff.Mode f10056h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Rect f10057i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f10058j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f10059k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f10060l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f10061m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        float f10062n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        float f10063o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f10064p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f10065q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f10066r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f10067s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f10068t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f10069u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Paint.Style f10070v;

        public c(n nVar, d4.a aVar) {
            this.f10052d = null;
            this.f10053e = null;
            this.f10054f = null;
            this.f10055g = null;
            this.f10056h = PorterDuff.Mode.SRC_IN;
            this.f10057i = null;
            this.f10058j = 1.0f;
            this.f10059k = 1.0f;
            this.f10061m = 255;
            this.f10062n = 0.0f;
            this.f10063o = 0.0f;
            this.f10064p = 0.0f;
            this.f10065q = 0;
            this.f10066r = 0;
            this.f10067s = 0;
            this.f10068t = 0;
            this.f10069u = false;
            this.f10070v = Paint.Style.FILL_AND_STROKE;
            this.f10049a = nVar;
            this.f10050b = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            i iVar = new i(this);
            iVar.pathDirty = true;
            return iVar;
        }

        public c(c cVar) {
            this.f10052d = null;
            this.f10053e = null;
            this.f10054f = null;
            this.f10055g = null;
            this.f10056h = PorterDuff.Mode.SRC_IN;
            this.f10057i = null;
            this.f10058j = 1.0f;
            this.f10059k = 1.0f;
            this.f10061m = 255;
            this.f10062n = 0.0f;
            this.f10063o = 0.0f;
            this.f10064p = 0.0f;
            this.f10065q = 0;
            this.f10066r = 0;
            this.f10067s = 0;
            this.f10068t = 0;
            this.f10069u = false;
            this.f10070v = Paint.Style.FILL_AND_STROKE;
            this.f10049a = cVar.f10049a;
            this.f10050b = cVar.f10050b;
            this.f10060l = cVar.f10060l;
            this.f10051c = cVar.f10051c;
            this.f10052d = cVar.f10052d;
            this.f10053e = cVar.f10053e;
            this.f10056h = cVar.f10056h;
            this.f10055g = cVar.f10055g;
            this.f10061m = cVar.f10061m;
            this.f10058j = cVar.f10058j;
            this.f10067s = cVar.f10067s;
            this.f10065q = cVar.f10065q;
            this.f10069u = cVar.f10069u;
            this.f10059k = cVar.f10059k;
            this.f10062n = cVar.f10062n;
            this.f10063o = cVar.f10063o;
            this.f10064p = cVar.f10064p;
            this.f10066r = cVar.f10066r;
            this.f10068t = cVar.f10068t;
            this.f10054f = cVar.f10054f;
            this.f10070v = cVar.f10070v;
            if (cVar.f10057i != null) {
                this.f10057i = new Rect(cVar.f10057i);
            }
        }
    }
}
