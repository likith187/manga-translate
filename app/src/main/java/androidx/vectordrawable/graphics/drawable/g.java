package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.AttributeSet;
import com.coui.appcompat.uiutil.UIUtil;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.backup.sdk.common.utils.Constants;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import t.k;
import u.g;

/* JADX INFO: loaded from: classes.dex */
public class g extends androidx.vectordrawable.graphics.drawable.f {

    /* JADX INFO: renamed from: n */
    static final PorterDuff.Mode f3772n = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b */
    private h f3773b;

    /* JADX INFO: renamed from: c */
    private PorterDuffColorFilter f3774c;

    /* JADX INFO: renamed from: f */
    private ColorFilter f3775f;

    /* JADX INFO: renamed from: h */
    private boolean f3776h;

    /* JADX INFO: renamed from: i */
    private boolean f3777i;

    /* JADX INFO: renamed from: j */
    private Drawable.ConstantState f3778j;

    /* JADX INFO: renamed from: k */
    private final float[] f3779k;

    /* JADX INFO: renamed from: l */
    private final Matrix f3780l;

    /* JADX INFO: renamed from: m */
    private final Rect f3781m;

    private static class b extends f {
        b() {
        }

        private void f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f3808b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f3807a = u.g.d(string2);
            }
            this.f3809c = k.k(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // androidx.vectordrawable.graphics.drawable.g.f
        public boolean c() {
            return true;
        }

        public void e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (k.p(xmlPullParser, "pathData")) {
                TypedArray typedArrayQ = k.q(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f3745d);
                f(typedArrayQ, xmlPullParser);
                typedArrayQ.recycle();
            }
        }

        b(b bVar) {
            super(bVar);
        }
    }

    private static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    private static class h extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        int f3828a;

        /* JADX INFO: renamed from: b */
        C0048g f3829b;

        /* JADX INFO: renamed from: c */
        ColorStateList f3830c;

        /* JADX INFO: renamed from: d */
        PorterDuff.Mode f3831d;

        /* JADX INFO: renamed from: e */
        boolean f3832e;

        /* JADX INFO: renamed from: f */
        Bitmap f3833f;

        /* JADX INFO: renamed from: g */
        ColorStateList f3834g;

        /* JADX INFO: renamed from: h */
        PorterDuff.Mode f3835h;

        /* JADX INFO: renamed from: i */
        int f3836i;

        /* JADX INFO: renamed from: j */
        boolean f3837j;

        /* JADX INFO: renamed from: k */
        boolean f3838k;

        /* JADX INFO: renamed from: l */
        Paint f3839l;

        public h(h hVar) {
            this.f3830c = null;
            this.f3831d = g.f3772n;
            if (hVar != null) {
                this.f3828a = hVar.f3828a;
                C0048g c0048g = new C0048g(hVar.f3829b);
                this.f3829b = c0048g;
                if (hVar.f3829b.f3816e != null) {
                    c0048g.f3816e = new Paint(hVar.f3829b.f3816e);
                }
                if (hVar.f3829b.f3815d != null) {
                    this.f3829b.f3815d = new Paint(hVar.f3829b.f3815d);
                }
                this.f3830c = hVar.f3830c;
                this.f3831d = hVar.f3831d;
                this.f3832e = hVar.f3832e;
            }
        }

        public boolean a(int i10, int i11) {
            return i10 == this.f3833f.getWidth() && i11 == this.f3833f.getHeight();
        }

        public boolean b() {
            return !this.f3838k && this.f3834g == this.f3830c && this.f3835h == this.f3831d && this.f3837j == this.f3832e && this.f3836i == this.f3829b.getRootAlpha();
        }

        public void c(int i10, int i11) {
            if (this.f3833f == null || !a(i10, i11)) {
                this.f3833f = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                this.f3838k = true;
            }
        }

        public void d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f3833f, (Rect) null, rect, e(colorFilter));
        }

        public Paint e(ColorFilter colorFilter) {
            if (!f() && colorFilter == null) {
                return null;
            }
            if (this.f3839l == null) {
                Paint paint = new Paint();
                this.f3839l = paint;
                paint.setFilterBitmap(true);
            }
            this.f3839l.setAlpha(this.f3829b.getRootAlpha());
            this.f3839l.setColorFilter(colorFilter);
            return this.f3839l;
        }

        public boolean f() {
            return this.f3829b.getRootAlpha() < 255;
        }

        public boolean g() {
            return this.f3829b.f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3828a;
        }

        public boolean h(int[] iArr) {
            boolean zG = this.f3829b.g(iArr);
            this.f3838k |= zG;
            return zG;
        }

        public void i() {
            this.f3834g = this.f3830c;
            this.f3835h = this.f3831d;
            this.f3836i = this.f3829b.getRootAlpha();
            this.f3837j = this.f3832e;
            this.f3838k = false;
        }

        public void j(int i10, int i11) {
            this.f3833f.eraseColor(0);
            this.f3829b.b(new Canvas(this.f3833f), i10, i11, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new g(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new g(this);
        }

        public h() {
            this.f3830c = null;
            this.f3831d = g.f3772n;
            this.f3829b = new C0048g();
        }
    }

    g() {
        this.f3777i = true;
        this.f3779k = new float[9];
        this.f3780l = new Matrix();
        this.f3781m = new Rect();
        this.f3773b = new h();
    }

    static int a(int i10, float f10) {
        return (i10 & UIUtil.CONSTANT_COLOR_MASK) | (((int) (Color.alpha(i10) * f10)) << 24);
    }

    public static g b(Resources resources, int i10, Resources.Theme theme) {
        g gVar = new g();
        gVar.f3771a = t.h.f(resources, i10, theme);
        gVar.f3778j = new i(gVar.f3771a.getConstantState());
        return gVar;
    }

    private void d(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        h hVar = this.f3773b;
        C0048g c0048g = hVar.f3829b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c0048g.f3819h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z10 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if (Constants.MessagerConstants.PATH_KEY.equals(name)) {
                    c cVar = new c();
                    cVar.g(resources, attributeSet, theme, xmlPullParser);
                    dVar.f3795b.add(cVar);
                    if (cVar.getPathName() != null) {
                        c0048g.f3827p.put(cVar.getPathName(), cVar);
                    }
                    hVar.f3828a = cVar.f3810d | hVar.f3828a;
                    z10 = false;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.e(resources, attributeSet, theme, xmlPullParser);
                    dVar.f3795b.add(bVar);
                    if (bVar.getPathName() != null) {
                        c0048g.f3827p.put(bVar.getPathName(), bVar);
                    }
                    hVar.f3828a = bVar.f3810d | hVar.f3828a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.c(resources, attributeSet, theme, xmlPullParser);
                    dVar.f3795b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        c0048g.f3827p.put(dVar2.getGroupName(), dVar2);
                    }
                    hVar.f3828a = dVar2.f3804k | hVar.f3828a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z10) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private boolean e() {
        return isAutoMirrored() && v.a.f(this) == 1;
    }

    private static PorterDuff.Mode f(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        h hVar = this.f3773b;
        C0048g c0048g = hVar.f3829b;
        hVar.f3831d = f(k.k(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateListG = k.g(typedArray, xmlPullParser, theme, "tint", 1);
        if (colorStateListG != null) {
            hVar.f3830c = colorStateListG;
        }
        hVar.f3832e = k.e(typedArray, xmlPullParser, "autoMirrored", 5, hVar.f3832e);
        c0048g.f3822k = k.j(typedArray, xmlPullParser, "viewportWidth", 7, c0048g.f3822k);
        float fJ = k.j(typedArray, xmlPullParser, "viewportHeight", 8, c0048g.f3823l);
        c0048g.f3823l = fJ;
        if (c0048g.f3822k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (fJ <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        c0048g.f3820i = typedArray.getDimension(3, c0048g.f3820i);
        float dimension = typedArray.getDimension(2, c0048g.f3821j);
        c0048g.f3821j = dimension;
        if (c0048g.f3820i <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        c0048g.setAlpha(k.j(typedArray, xmlPullParser, "alpha", 4, c0048g.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            c0048g.f3825n = string;
            c0048g.f3827p.put(string, c0048g);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    Object c(String str) {
        return this.f3773b.f3829b.f3827p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f3771a;
        if (drawable == null) {
            return false;
        }
        v.a.b(drawable);
        return false;
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f3781m);
        if (this.f3781m.width() <= 0 || this.f3781m.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f3775f;
        if (colorFilter == null) {
            colorFilter = this.f3774c;
        }
        canvas.getMatrix(this.f3780l);
        this.f3780l.getValues(this.f3779k);
        float fAbs = Math.abs(this.f3779k[0]);
        float fAbs2 = Math.abs(this.f3779k[4]);
        float fAbs3 = Math.abs(this.f3779k[1]);
        float fAbs4 = Math.abs(this.f3779k[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iMin = Math.min(ConfigPackage.FRAME_SIZE_3, (int) (this.f3781m.width() * fAbs));
        int iMin2 = Math.min(ConfigPackage.FRAME_SIZE_3, (int) (this.f3781m.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.f3781m;
        canvas.translate(rect.left, rect.top);
        if (e()) {
            canvas.translate(this.f3781m.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f3781m.offsetTo(0, 0);
        this.f3773b.c(iMin, iMin2);
        if (!this.f3777i) {
            this.f3773b.j(iMin, iMin2);
        } else if (!this.f3773b.b()) {
            this.f3773b.j(iMin, iMin2);
            this.f3773b.i();
        }
        this.f3773b.d(canvas, colorFilter, this.f3781m);
        canvas.restoreToCount(iSave);
    }

    void g(boolean z10) {
        this.f3777i = z10;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f3771a;
        return drawable != null ? v.a.d(drawable) : this.f3773b.f3829b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.f3773b.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f3771a;
        return drawable != null ? v.a.e(drawable) : this.f3775f;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f3771a != null) {
            return new i(this.f3771a.getConstantState());
        }
        this.f3773b.f3828a = getChangingConfigurations();
        return this.f3773b;
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f3773b.f3829b.f3821j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f3773b.f3829b.f3820i;
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    PorterDuffColorFilter i(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f3771a;
        return drawable != null ? v.a.h(drawable) : this.f3773b.f3832e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.isStateful() : super.isStateful() || ((hVar = this.f3773b) != null && (hVar.g() || ((colorStateList = this.f3773b.f3830c) != null && colorStateList.isStateful())));
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f3776h && super.mutate() == this) {
            this.f3773b = new h(this.f3773b);
            this.f3776h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z10;
        PorterDuff.Mode mode;
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        h hVar = this.f3773b;
        ColorStateList colorStateList = hVar.f3830c;
        if (colorStateList == null || (mode = hVar.f3831d) == null) {
            z10 = false;
        } else {
            this.f3774c = i(this.f3774c, colorStateList, mode);
            invalidateSelf();
            z10 = true;
        }
        if (!hVar.g() || !hVar.h(iArr)) {
            return z10;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j10) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j10);
        } else {
            super.scheduleSelf(runnable, j10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else if (this.f3773b.f3829b.getRootAlpha() != i10) {
            this.f3773b.f3829b.setRootAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.j(drawable, z10);
        } else {
            this.f3773b.f3832e = z10;
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i10) {
        super.setChangingConfigurations(i10);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i10, PorterDuff.Mode mode) {
        super.setColorFilter(i10, mode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z10) {
        super.setFilterBitmap(z10);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f10, float f11) {
        super.setHotspot(f10, f11);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i10, int i11, int i12, int i13) {
        super.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override // androidx.vectordrawable.graphics.drawable.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i10) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.n(drawable, i10);
        } else {
            setTintList(ColorStateList.valueOf(i10));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.o(drawable, colorStateList);
            return;
        }
        h hVar = this.f3773b;
        if (hVar.f3830c != colorStateList) {
            hVar.f3830c = colorStateList;
            this.f3774c = i(this.f3774c, colorStateList, hVar.f3831d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.p(drawable, mode);
            return;
        }
        h hVar = this.f3773b;
        if (hVar.f3831d != mode) {
            hVar.f3831d = mode;
            this.f3774c = i(this.f3774c, hVar.f3830c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        Drawable drawable = this.f3771a;
        return drawable != null ? drawable.setVisible(z10, z11) : super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    private static class i extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        private final Drawable.ConstantState f3840a;

        public i(Drawable.ConstantState constantState) {
            this.f3840a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f3840a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f3840a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            g gVar = new g();
            gVar.f3771a = (VectorDrawable) this.f3840a.newDrawable();
            return gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            g gVar = new g();
            gVar.f3771a = (VectorDrawable) this.f3840a.newDrawable(resources);
            return gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            g gVar = new g();
            gVar.f3771a = (VectorDrawable) this.f3840a.newDrawable(resources, theme);
            return gVar;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f3775f = colorFilter;
            invalidateSelf();
        }
    }

    private static abstract class f extends e {

        /* JADX INFO: renamed from: a */
        protected g.b[] f3807a;

        /* JADX INFO: renamed from: b */
        String f3808b;

        /* JADX INFO: renamed from: c */
        int f3809c;

        /* JADX INFO: renamed from: d */
        int f3810d;

        public f() {
            super();
            this.f3807a = null;
            this.f3809c = 0;
        }

        public boolean c() {
            return false;
        }

        public void d(Path path) {
            path.reset();
            g.b[] bVarArr = this.f3807a;
            if (bVarArr != null) {
                g.b.h(bVarArr, path);
            }
        }

        public g.b[] getPathData() {
            return this.f3807a;
        }

        public String getPathName() {
            return this.f3808b;
        }

        public void setPathData(g.b[] bVarArr) {
            if (u.g.b(this.f3807a, bVarArr)) {
                u.g.k(this.f3807a, bVarArr);
            } else {
                this.f3807a = u.g.f(bVarArr);
            }
        }

        public f(f fVar) {
            super();
            this.f3807a = null;
            this.f3809c = 0;
            this.f3808b = fVar.f3808b;
            this.f3810d = fVar.f3810d;
            this.f3807a = u.g.f(fVar.f3807a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f3771a;
        if (drawable != null) {
            v.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        h hVar = this.f3773b;
        hVar.f3829b = new C0048g();
        TypedArray typedArrayQ = k.q(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f3742a);
        h(typedArrayQ, xmlPullParser, theme);
        typedArrayQ.recycle();
        hVar.f3828a = getChangingConfigurations();
        hVar.f3838k = true;
        d(resources, xmlPullParser, attributeSet, theme);
        this.f3774c = i(this.f3774c, hVar.f3830c, hVar.f3831d);
    }

    g(h hVar) {
        this.f3777i = true;
        this.f3779k = new float[9];
        this.f3780l = new Matrix();
        this.f3781m = new Rect();
        this.f3773b = hVar;
        this.f3774c = i(this.f3774c, hVar.f3830c, hVar.f3831d);
    }

    private static class c extends f {

        /* JADX INFO: renamed from: e */
        private int[] f3782e;

        /* JADX INFO: renamed from: f */
        t.d f3783f;

        /* JADX INFO: renamed from: g */
        float f3784g;

        /* JADX INFO: renamed from: h */
        t.d f3785h;

        /* JADX INFO: renamed from: i */
        float f3786i;

        /* JADX INFO: renamed from: j */
        float f3787j;

        /* JADX INFO: renamed from: k */
        float f3788k;

        /* JADX INFO: renamed from: l */
        float f3789l;

        /* JADX INFO: renamed from: m */
        float f3790m;

        /* JADX INFO: renamed from: n */
        Paint.Cap f3791n;

        /* JADX INFO: renamed from: o */
        Paint.Join f3792o;

        /* JADX INFO: renamed from: p */
        float f3793p;

        c() {
            this.f3784g = 0.0f;
            this.f3786i = 1.0f;
            this.f3787j = 1.0f;
            this.f3788k = 0.0f;
            this.f3789l = 1.0f;
            this.f3790m = 0.0f;
            this.f3791n = Paint.Cap.BUTT;
            this.f3792o = Paint.Join.MITER;
            this.f3793p = 4.0f;
        }

        private Paint.Cap e(int i10, Paint.Cap cap) {
            return i10 != 0 ? i10 != 1 ? i10 != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        private Paint.Join f(int i10, Paint.Join join) {
            return i10 != 0 ? i10 != 1 ? i10 != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f3782e = null;
            if (k.p(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f3808b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f3807a = u.g.d(string2);
                }
                this.f3785h = k.i(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f3787j = k.j(typedArray, xmlPullParser, "fillAlpha", 12, this.f3787j);
                this.f3791n = e(k.k(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f3791n);
                this.f3792o = f(k.k(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f3792o);
                this.f3793p = k.j(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f3793p);
                this.f3783f = k.i(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f3786i = k.j(typedArray, xmlPullParser, "strokeAlpha", 11, this.f3786i);
                this.f3784g = k.j(typedArray, xmlPullParser, "strokeWidth", 4, this.f3784g);
                this.f3789l = k.j(typedArray, xmlPullParser, "trimPathEnd", 6, this.f3789l);
                this.f3790m = k.j(typedArray, xmlPullParser, "trimPathOffset", 7, this.f3790m);
                this.f3788k = k.j(typedArray, xmlPullParser, "trimPathStart", 5, this.f3788k);
                this.f3809c = k.k(typedArray, xmlPullParser, "fillType", 13, this.f3809c);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.g.e
        public boolean a() {
            return this.f3785h.i() || this.f3783f.i();
        }

        @Override // androidx.vectordrawable.graphics.drawable.g.e
        public boolean b(int[] iArr) {
            return this.f3783f.j(iArr) | this.f3785h.j(iArr);
        }

        public void g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayQ = k.q(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f3744c);
            h(typedArrayQ, xmlPullParser, theme);
            typedArrayQ.recycle();
        }

        float getFillAlpha() {
            return this.f3787j;
        }

        int getFillColor() {
            return this.f3785h.e();
        }

        float getStrokeAlpha() {
            return this.f3786i;
        }

        int getStrokeColor() {
            return this.f3783f.e();
        }

        float getStrokeWidth() {
            return this.f3784g;
        }

        float getTrimPathEnd() {
            return this.f3789l;
        }

        float getTrimPathOffset() {
            return this.f3790m;
        }

        float getTrimPathStart() {
            return this.f3788k;
        }

        void setFillAlpha(float f10) {
            this.f3787j = f10;
        }

        void setFillColor(int i10) {
            this.f3785h.k(i10);
        }

        void setStrokeAlpha(float f10) {
            this.f3786i = f10;
        }

        void setStrokeColor(int i10) {
            this.f3783f.k(i10);
        }

        void setStrokeWidth(float f10) {
            this.f3784g = f10;
        }

        void setTrimPathEnd(float f10) {
            this.f3789l = f10;
        }

        void setTrimPathOffset(float f10) {
            this.f3790m = f10;
        }

        void setTrimPathStart(float f10) {
            this.f3788k = f10;
        }

        c(c cVar) {
            super(cVar);
            this.f3784g = 0.0f;
            this.f3786i = 1.0f;
            this.f3787j = 1.0f;
            this.f3788k = 0.0f;
            this.f3789l = 1.0f;
            this.f3790m = 0.0f;
            this.f3791n = Paint.Cap.BUTT;
            this.f3792o = Paint.Join.MITER;
            this.f3793p = 4.0f;
            this.f3782e = cVar.f3782e;
            this.f3783f = cVar.f3783f;
            this.f3784g = cVar.f3784g;
            this.f3786i = cVar.f3786i;
            this.f3785h = cVar.f3785h;
            this.f3809c = cVar.f3809c;
            this.f3787j = cVar.f3787j;
            this.f3788k = cVar.f3788k;
            this.f3789l = cVar.f3789l;
            this.f3790m = cVar.f3790m;
            this.f3791n = cVar.f3791n;
            this.f3792o = cVar.f3792o;
            this.f3793p = cVar.f3793p;
        }
    }

    /* JADX INFO: renamed from: androidx.vectordrawable.graphics.drawable.g$g */
    private static class C0048g {

        /* JADX INFO: renamed from: q */
        private static final Matrix f3811q = new Matrix();

        /* JADX INFO: renamed from: a */
        private final Path f3812a;

        /* JADX INFO: renamed from: b */
        private final Path f3813b;

        /* JADX INFO: renamed from: c */
        private final Matrix f3814c;

        /* JADX INFO: renamed from: d */
        Paint f3815d;

        /* JADX INFO: renamed from: e */
        Paint f3816e;

        /* JADX INFO: renamed from: f */
        private PathMeasure f3817f;

        /* JADX INFO: renamed from: g */
        private int f3818g;

        /* JADX INFO: renamed from: h */
        final d f3819h;

        /* JADX INFO: renamed from: i */
        float f3820i;

        /* JADX INFO: renamed from: j */
        float f3821j;

        /* JADX INFO: renamed from: k */
        float f3822k;

        /* JADX INFO: renamed from: l */
        float f3823l;

        /* JADX INFO: renamed from: m */
        int f3824m;

        /* JADX INFO: renamed from: n */
        String f3825n;

        /* JADX INFO: renamed from: o */
        Boolean f3826o;

        /* JADX INFO: renamed from: p */
        final androidx.collection.a f3827p;

        public C0048g() {
            this.f3814c = new Matrix();
            this.f3820i = 0.0f;
            this.f3821j = 0.0f;
            this.f3822k = 0.0f;
            this.f3823l = 0.0f;
            this.f3824m = 255;
            this.f3825n = null;
            this.f3826o = null;
            this.f3827p = new androidx.collection.a();
            this.f3819h = new d();
            this.f3812a = new Path();
            this.f3813b = new Path();
        }

        private static float a(float f10, float f11, float f12, float f13) {
            return (f10 * f13) - (f11 * f12);
        }

        private void c(d dVar, Matrix matrix, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            dVar.f3794a.set(matrix);
            dVar.f3794a.preConcat(dVar.f3803j);
            canvas.save();
            for (int i12 = 0; i12 < dVar.f3795b.size(); i12++) {
                e eVar = (e) dVar.f3795b.get(i12);
                if (eVar instanceof d) {
                    c((d) eVar, dVar.f3794a, canvas, i10, i11, colorFilter);
                } else if (eVar instanceof f) {
                    d(dVar, (f) eVar, canvas, i10, i11, colorFilter);
                }
            }
            canvas.restore();
        }

        private void d(d dVar, f fVar, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            float f10 = i10 / this.f3822k;
            float f11 = i11 / this.f3823l;
            float fMin = Math.min(f10, f11);
            Matrix matrix = dVar.f3794a;
            this.f3814c.set(matrix);
            this.f3814c.postScale(f10, f11);
            float fE = e(matrix);
            if (fE == 0.0f) {
                return;
            }
            fVar.d(this.f3812a);
            Path path = this.f3812a;
            this.f3813b.reset();
            if (fVar.c()) {
                this.f3813b.setFillType(fVar.f3809c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f3813b.addPath(path, this.f3814c);
                canvas.clipPath(this.f3813b);
                return;
            }
            c cVar = (c) fVar;
            float f12 = cVar.f3788k;
            if (f12 != 0.0f || cVar.f3789l != 1.0f) {
                float f13 = cVar.f3790m;
                float f14 = (f12 + f13) % 1.0f;
                float f15 = (cVar.f3789l + f13) % 1.0f;
                if (this.f3817f == null) {
                    this.f3817f = new PathMeasure();
                }
                this.f3817f.setPath(this.f3812a, false);
                float length = this.f3817f.getLength();
                float f16 = f14 * length;
                float f17 = f15 * length;
                path.reset();
                if (f16 > f17) {
                    this.f3817f.getSegment(f16, length, path, true);
                    this.f3817f.getSegment(0.0f, f17, path, true);
                } else {
                    this.f3817f.getSegment(f16, f17, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f3813b.addPath(path, this.f3814c);
            if (cVar.f3785h.l()) {
                t.d dVar2 = cVar.f3785h;
                if (this.f3816e == null) {
                    Paint paint = new Paint(1);
                    this.f3816e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f3816e;
                if (dVar2.h()) {
                    Shader shaderF = dVar2.f();
                    shaderF.setLocalMatrix(this.f3814c);
                    paint2.setShader(shaderF);
                    paint2.setAlpha(Math.round(cVar.f3787j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(g.a(dVar2.e(), cVar.f3787j));
                }
                paint2.setColorFilter(colorFilter);
                this.f3813b.setFillType(cVar.f3809c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f3813b, paint2);
            }
            if (cVar.f3783f.l()) {
                t.d dVar3 = cVar.f3783f;
                if (this.f3815d == null) {
                    Paint paint3 = new Paint(1);
                    this.f3815d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f3815d;
                Paint.Join join = cVar.f3792o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.f3791n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(cVar.f3793p);
                if (dVar3.h()) {
                    Shader shaderF2 = dVar3.f();
                    shaderF2.setLocalMatrix(this.f3814c);
                    paint4.setShader(shaderF2);
                    paint4.setAlpha(Math.round(cVar.f3786i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(g.a(dVar3.e(), cVar.f3786i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(cVar.f3784g * fMin * fE);
                canvas.drawPath(this.f3813b, paint4);
            }
        }

        private float e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            if (fMax > 0.0f) {
                return Math.abs(fA) / fMax;
            }
            return 0.0f;
        }

        public void b(Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            c(this.f3819h, f3811q, canvas, i10, i11, colorFilter);
        }

        public boolean f() {
            if (this.f3826o == null) {
                this.f3826o = Boolean.valueOf(this.f3819h.a());
            }
            return this.f3826o.booleanValue();
        }

        public boolean g(int[] iArr) {
            return this.f3819h.b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f3824m;
        }

        public void setAlpha(float f10) {
            setRootAlpha((int) (f10 * 255.0f));
        }

        public void setRootAlpha(int i10) {
            this.f3824m = i10;
        }

        public C0048g(C0048g c0048g) {
            this.f3814c = new Matrix();
            this.f3820i = 0.0f;
            this.f3821j = 0.0f;
            this.f3822k = 0.0f;
            this.f3823l = 0.0f;
            this.f3824m = 255;
            this.f3825n = null;
            this.f3826o = null;
            androidx.collection.a aVar = new androidx.collection.a();
            this.f3827p = aVar;
            this.f3819h = new d(c0048g.f3819h, aVar);
            this.f3812a = new Path(c0048g.f3812a);
            this.f3813b = new Path(c0048g.f3813b);
            this.f3820i = c0048g.f3820i;
            this.f3821j = c0048g.f3821j;
            this.f3822k = c0048g.f3822k;
            this.f3823l = c0048g.f3823l;
            this.f3818g = c0048g.f3818g;
            this.f3824m = c0048g.f3824m;
            this.f3825n = c0048g.f3825n;
            String str = c0048g.f3825n;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f3826o = c0048g.f3826o;
        }
    }

    private static class d extends e {

        /* JADX INFO: renamed from: a */
        final Matrix f3794a;

        /* JADX INFO: renamed from: b */
        final ArrayList f3795b;

        /* JADX INFO: renamed from: c */
        float f3796c;

        /* JADX INFO: renamed from: d */
        private float f3797d;

        /* JADX INFO: renamed from: e */
        private float f3798e;

        /* JADX INFO: renamed from: f */
        private float f3799f;

        /* JADX INFO: renamed from: g */
        private float f3800g;

        /* JADX INFO: renamed from: h */
        private float f3801h;

        /* JADX INFO: renamed from: i */
        private float f3802i;

        /* JADX INFO: renamed from: j */
        final Matrix f3803j;

        /* JADX INFO: renamed from: k */
        int f3804k;

        /* JADX INFO: renamed from: l */
        private int[] f3805l;

        /* JADX INFO: renamed from: m */
        private String f3806m;

        public d(d dVar, androidx.collection.a aVar) {
            f bVar;
            super();
            this.f3794a = new Matrix();
            this.f3795b = new ArrayList();
            this.f3796c = 0.0f;
            this.f3797d = 0.0f;
            this.f3798e = 0.0f;
            this.f3799f = 1.0f;
            this.f3800g = 1.0f;
            this.f3801h = 0.0f;
            this.f3802i = 0.0f;
            Matrix matrix = new Matrix();
            this.f3803j = matrix;
            this.f3806m = null;
            this.f3796c = dVar.f3796c;
            this.f3797d = dVar.f3797d;
            this.f3798e = dVar.f3798e;
            this.f3799f = dVar.f3799f;
            this.f3800g = dVar.f3800g;
            this.f3801h = dVar.f3801h;
            this.f3802i = dVar.f3802i;
            this.f3805l = dVar.f3805l;
            String str = dVar.f3806m;
            this.f3806m = str;
            this.f3804k = dVar.f3804k;
            if (str != null) {
                aVar.put(str, this);
            }
            matrix.set(dVar.f3803j);
            ArrayList arrayList = dVar.f3795b;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                Object obj = arrayList.get(i10);
                if (obj instanceof d) {
                    this.f3795b.add(new d((d) obj, aVar));
                } else {
                    if (obj instanceof c) {
                        bVar = new c((c) obj);
                    } else {
                        if (!(obj instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) obj);
                    }
                    this.f3795b.add(bVar);
                    Object obj2 = bVar.f3808b;
                    if (obj2 != null) {
                        aVar.put(obj2, bVar);
                    }
                }
            }
        }

        private void d() {
            this.f3803j.reset();
            this.f3803j.postTranslate(-this.f3797d, -this.f3798e);
            this.f3803j.postScale(this.f3799f, this.f3800g);
            this.f3803j.postRotate(this.f3796c, 0.0f, 0.0f);
            this.f3803j.postTranslate(this.f3801h + this.f3797d, this.f3802i + this.f3798e);
        }

        private void e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f3805l = null;
            this.f3796c = k.j(typedArray, xmlPullParser, "rotation", 5, this.f3796c);
            this.f3797d = typedArray.getFloat(1, this.f3797d);
            this.f3798e = typedArray.getFloat(2, this.f3798e);
            this.f3799f = k.j(typedArray, xmlPullParser, "scaleX", 3, this.f3799f);
            this.f3800g = k.j(typedArray, xmlPullParser, "scaleY", 4, this.f3800g);
            this.f3801h = k.j(typedArray, xmlPullParser, "translateX", 6, this.f3801h);
            this.f3802i = k.j(typedArray, xmlPullParser, "translateY", 7, this.f3802i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f3806m = string;
            }
            d();
        }

        @Override // androidx.vectordrawable.graphics.drawable.g.e
        public boolean a() {
            for (int i10 = 0; i10 < this.f3795b.size(); i10++) {
                if (((e) this.f3795b.get(i10)).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.vectordrawable.graphics.drawable.g.e
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i10 = 0; i10 < this.f3795b.size(); i10++) {
                zB |= ((e) this.f3795b.get(i10)).b(iArr);
            }
            return zB;
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayQ = k.q(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f3743b);
            e(typedArrayQ, xmlPullParser);
            typedArrayQ.recycle();
        }

        public String getGroupName() {
            return this.f3806m;
        }

        public Matrix getLocalMatrix() {
            return this.f3803j;
        }

        public float getPivotX() {
            return this.f3797d;
        }

        public float getPivotY() {
            return this.f3798e;
        }

        public float getRotation() {
            return this.f3796c;
        }

        public float getScaleX() {
            return this.f3799f;
        }

        public float getScaleY() {
            return this.f3800g;
        }

        public float getTranslateX() {
            return this.f3801h;
        }

        public float getTranslateY() {
            return this.f3802i;
        }

        public void setPivotX(float f10) {
            if (f10 != this.f3797d) {
                this.f3797d = f10;
                d();
            }
        }

        public void setPivotY(float f10) {
            if (f10 != this.f3798e) {
                this.f3798e = f10;
                d();
            }
        }

        public void setRotation(float f10) {
            if (f10 != this.f3796c) {
                this.f3796c = f10;
                d();
            }
        }

        public void setScaleX(float f10) {
            if (f10 != this.f3799f) {
                this.f3799f = f10;
                d();
            }
        }

        public void setScaleY(float f10) {
            if (f10 != this.f3800g) {
                this.f3800g = f10;
                d();
            }
        }

        public void setTranslateX(float f10) {
            if (f10 != this.f3801h) {
                this.f3801h = f10;
                d();
            }
        }

        public void setTranslateY(float f10) {
            if (f10 != this.f3802i) {
                this.f3802i = f10;
                d();
            }
        }

        public d() {
            super();
            this.f3794a = new Matrix();
            this.f3795b = new ArrayList();
            this.f3796c = 0.0f;
            this.f3797d = 0.0f;
            this.f3798e = 0.0f;
            this.f3799f = 1.0f;
            this.f3800g = 1.0f;
            this.f3801h = 0.0f;
            this.f3802i = 0.0f;
            this.f3803j = new Matrix();
            this.f3806m = null;
        }
    }
}
