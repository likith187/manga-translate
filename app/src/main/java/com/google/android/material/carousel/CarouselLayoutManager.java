package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.p;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.carousel.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CarouselLayoutManager extends RecyclerView.p implements com.google.android.material.carousel.b, RecyclerView.z.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f9175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f9176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f9177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f9179e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.google.android.material.carousel.d f9180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g f9181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private f f9182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9183i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map f9184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.google.android.material.carousel.c f9185k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final View.OnLayoutChangeListener f9186l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9187m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f9188n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f9189o;

    class a extends p {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.p
        public int calculateDxToMakeVisible(View view, int i10) {
            if (CarouselLayoutManager.this.f9181g == null || !CarouselLayoutManager.this.d()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.A(carouselLayoutManager.getPosition(view));
        }

        @Override // androidx.recyclerview.widget.p
        public int calculateDyToMakeVisible(View view, int i10) {
            if (CarouselLayoutManager.this.f9181g == null || CarouselLayoutManager.this.d()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.A(carouselLayoutManager.getPosition(view));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.z
        public PointF computeScrollVectorForPosition(int i10) {
            return CarouselLayoutManager.this.computeScrollVectorForPosition(i10);
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final View f9191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f9192b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final float f9193c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final d f9194d;

        b(View view, float f10, float f11, d dVar) {
            this.f9191a = view;
            this.f9192b = f10;
            this.f9193c = f11;
            this.f9194d = dVar;
        }
    }

    private static class c extends RecyclerView.o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Paint f9195a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List f9196b;

        c() {
            Paint paint = new Paint();
            this.f9195a = paint;
            this.f9196b = Collections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        void d(List list) {
            this.f9196b = Collections.unmodifiableList(list);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
            super.onDrawOver(canvas, recyclerView, a0Var);
            this.f9195a.setStrokeWidth(recyclerView.getResources().getDimension(R$dimen.m3_carousel_debug_keyline_width));
            for (f.c cVar : this.f9196b) {
                this.f9195a.setColor(u.d.i(-65281, -16776961, cVar.f9232c));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).d()) {
                    canvas.drawLine(cVar.f9231b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).S(), cVar.f9231b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).N(), this.f9195a);
                } else {
                    canvas.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).P(), cVar.f9231b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).Q(), cVar.f9231b, this.f9195a);
                }
            }
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final f.c f9197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final f.c f9198b;

        d(f.c cVar, f.c cVar2) {
            c0.h.a(cVar.f9230a <= cVar2.f9230a);
            this.f9197a = cVar;
            this.f9198b = cVar2;
        }
    }

    public CarouselLayoutManager() {
        this(new i());
    }

    private static int B(int i10, int i11, int i12, int i13) {
        int i14 = i11 + i10;
        return i14 < i12 ? i12 - i11 : i14 > i13 ? i13 - i11 : i10;
    }

    private int C(g gVar) {
        boolean zX = X();
        f fVarH = zX ? gVar.h() : gVar.l();
        return (int) (R() - t((zX ? fVarH.h() : fVarH.a()).f9230a, fVarH.f() / 2.0f));
    }

    private void D(RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        g0(wVar);
        if (getChildCount() == 0) {
            w(wVar, this.f9183i - 1);
            v(wVar, a0Var, this.f9183i);
        } else {
            int position = getPosition(getChildAt(0));
            int position2 = getPosition(getChildAt(getChildCount() - 1));
            w(wVar, position - 1);
            v(wVar, a0Var, position2 + 1);
        }
        o0();
    }

    private View E() {
        return getChildAt(X() ? 0 : getChildCount() - 1);
    }

    private View F() {
        return getChildAt(X() ? getChildCount() - 1 : 0);
    }

    private int G() {
        return d() ? a() : c();
    }

    private float H(View view) {
        super.getDecoratedBoundsWithMargins(view, new Rect());
        return d() ? r0.centerX() : r0.centerY();
    }

    private int I() {
        int i10;
        int i11;
        if (getChildCount() <= 0) {
            return 0;
        }
        RecyclerView.q qVar = (RecyclerView.q) getChildAt(0).getLayoutParams();
        if (this.f9185k.f9212a == 0) {
            i10 = ((ViewGroup.MarginLayoutParams) qVar).leftMargin;
            i11 = ((ViewGroup.MarginLayoutParams) qVar).rightMargin;
        } else {
            i10 = ((ViewGroup.MarginLayoutParams) qVar).topMargin;
            i11 = ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        }
        return i10 + i11;
    }

    private f J(int i10) {
        f fVar;
        Map map = this.f9184j;
        return (map == null || (fVar = (f) map.get(Integer.valueOf(x.a.b(i10, 0, Math.max(0, getItemCount() + (-1)))))) == null) ? this.f9181g.g() : fVar;
    }

    private int K() {
        if (getClipToPadding() || !this.f9180f.f()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingTop() : getPaddingLeft();
    }

    private float L(float f10, d dVar) {
        f.c cVar = dVar.f9197a;
        float f11 = cVar.f9233d;
        f.c cVar2 = dVar.f9198b;
        return x3.a.b(f11, cVar2.f9233d, cVar.f9231b, cVar2.f9231b, f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int N() {
        return this.f9185k.g();
    }

    private int O() {
        return this.f9185k.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int P() {
        return this.f9185k.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int Q() {
        return this.f9185k.j();
    }

    private int R() {
        return this.f9185k.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int S() {
        return this.f9185k.l();
    }

    private int T() {
        if (getClipToPadding() || !this.f9180f.f()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingBottom() : getPaddingRight();
    }

    private int U(int i10, f fVar) {
        return (int) (X() ? ((G() - fVar.h().f9230a) - (i10 * fVar.f())) - (fVar.f() / 2.0f) : ((i10 * fVar.f()) - fVar.a().f9230a) + (fVar.f() / 2.0f));
    }

    private int V(int i10, f fVar) {
        int i11 = Integer.MAX_VALUE;
        for (f.c cVar : fVar.e()) {
            float f10 = (i10 * fVar.f()) + (fVar.f() / 2.0f);
            int iG = (X() ? (int) ((G() - cVar.f9230a) - f10) : (int) (f10 - cVar.f9230a)) - this.f9175a;
            if (Math.abs(i11) > Math.abs(iG)) {
                i11 = iG;
            }
        }
        return i11;
    }

    private static d W(List list, float f10, boolean z10) {
        float f11 = Float.MAX_VALUE;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        float f12 = -3.4028235E38f;
        float f13 = Float.MAX_VALUE;
        float f14 = Float.MAX_VALUE;
        for (int i14 = 0; i14 < list.size(); i14++) {
            f.c cVar = (f.c) list.get(i14);
            float f15 = z10 ? cVar.f9231b : cVar.f9230a;
            float fAbs = Math.abs(f15 - f10);
            if (f15 <= f10 && fAbs <= f11) {
                i10 = i14;
                f11 = fAbs;
            }
            if (f15 > f10 && fAbs <= f13) {
                i12 = i14;
                f13 = fAbs;
            }
            if (f15 <= f14) {
                i11 = i14;
                f14 = f15;
            }
            if (f15 > f12) {
                i13 = i14;
                f12 = f15;
            }
        }
        if (i10 == -1) {
            i10 = i11;
        }
        if (i12 == -1) {
            i12 = i13;
        }
        return new d((f.c) list.get(i10), (f.c) list.get(i12));
    }

    private boolean Y(float f10, d dVar) {
        float fT = t(f10, L(f10, dVar) / 2.0f);
        if (X()) {
            if (fT >= 0.0f) {
                return false;
            }
        } else if (fT <= G()) {
            return false;
        }
        return true;
    }

    private boolean Z(float f10, d dVar) {
        float fS = s(f10, L(f10, dVar) / 2.0f);
        if (X()) {
            if (fS <= G()) {
                return false;
            }
        } else if (fS >= 0.0f) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (i10 == i14 && i11 == i15 && i12 == i16 && i13 == i17) {
            return;
        }
        view.post(new Runnable() { // from class: z3.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f16635a.f0();
            }
        });
    }

    private void b0() {
        if (this.f9178d && Log.isLoggable("CarouselLayoutManager", 3)) {
            Log.d("CarouselLayoutManager", "internal representation of views on the screen");
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                Log.d("CarouselLayoutManager", "item position " + getPosition(childAt) + ", center:" + H(childAt) + ", child index:" + i10);
            }
            Log.d("CarouselLayoutManager", "==============");
        }
    }

    private b c0(RecyclerView.w wVar, float f10, int i10) {
        View viewO = wVar.o(i10);
        measureChildWithMargins(viewO, 0, 0);
        float fS = s(f10, this.f9182h.f() / 2.0f);
        d dVarW = W(this.f9182h.g(), fS, false);
        return new b(viewO, fS, x(viewO, fS, dVarW), dVarW);
    }

    private int convertFocusDirectionToLayoutDirection(int i10) {
        int orientation = getOrientation();
        if (i10 == 1) {
            return -1;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 17) {
            if (orientation == 0) {
                return X() ? 1 : -1;
            }
            return Integer.MIN_VALUE;
        }
        if (i10 == 33) {
            return orientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 == 66) {
            if (orientation == 0) {
                return X() ? -1 : 1;
            }
            return Integer.MIN_VALUE;
        }
        if (i10 == 130) {
            return orientation == 1 ? 1 : Integer.MIN_VALUE;
        }
        Log.d("CarouselLayoutManager", "Unknown focus request:" + i10);
        return Integer.MIN_VALUE;
    }

    private float d0(View view, float f10, float f11, Rect rect) {
        float fS = s(f10, f11);
        d dVarW = W(this.f9182h.g(), fS, false);
        float fX = x(view, fS, dVarW);
        super.getDecoratedBoundsWithMargins(view, rect);
        l0(view, fS, dVarW);
        this.f9185k.o(view, rect, f11, fX);
        return fX;
    }

    private void e0(RecyclerView.w wVar) {
        View viewO = wVar.o(0);
        measureChildWithMargins(viewO, 0, 0);
        f fVarG = this.f9180f.g(this, viewO);
        if (X()) {
            fVarG = f.n(fVarG, G());
        }
        this.f9181g = g.f(this, fVarG, I(), K(), T());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        this.f9181g = null;
        requestLayout();
    }

    private void g0(RecyclerView.w wVar) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            float fH = H(childAt);
            if (!Z(fH, W(this.f9182h.g(), fH, true))) {
                break;
            } else {
                removeAndRecycleView(childAt, wVar);
            }
        }
        while (getChildCount() - 1 >= 0) {
            View childAt2 = getChildAt(getChildCount() - 1);
            float fH2 = H(childAt2);
            if (!Y(fH2, W(this.f9182h.g(), fH2, true))) {
                return;
            } else {
                removeAndRecycleView(childAt2, wVar);
            }
        }
    }

    private void h0(RecyclerView recyclerView, int i10) {
        if (d()) {
            recyclerView.scrollBy(i10, 0);
        } else {
            recyclerView.scrollBy(0, i10);
        }
    }

    private void j0(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Carousel);
            i0(typedArrayObtainStyledAttributes.getInt(R$styleable.Carousel_carousel_alignment, 0));
            setOrientation(typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void l0(View view, float f10, d dVar) {
        if (view instanceof h) {
            f.c cVar = dVar.f9197a;
            float f11 = cVar.f9232c;
            f.c cVar2 = dVar.f9198b;
            float fB = x3.a.b(f11, cVar2.f9232c, cVar.f9230a, cVar2.f9230a, f10);
            float height = view.getHeight();
            float width = view.getWidth();
            RectF rectFF = this.f9185k.f(height, width, x3.a.b(0.0f, height / 2.0f, 0.0f, 1.0f, fB), x3.a.b(0.0f, width / 2.0f, 0.0f, 1.0f, fB));
            float fX = x(view, f10, dVar);
            RectF rectF = new RectF(fX - (rectFF.width() / 2.0f), fX - (rectFF.height() / 2.0f), fX + (rectFF.width() / 2.0f), (rectFF.height() / 2.0f) + fX);
            RectF rectF2 = new RectF(P(), S(), Q(), N());
            if (this.f9180f.f()) {
                this.f9185k.a(rectFF, rectF, rectF2);
            }
            this.f9185k.n(rectFF, rectF, rectF2);
            ((h) view).setMaskRectF(rectFF);
        }
    }

    private void m0(g gVar) {
        int i10 = this.f9177c;
        int i11 = this.f9176b;
        if (i10 <= i11) {
            this.f9182h = X() ? gVar.h() : gVar.l();
        } else {
            this.f9182h = gVar.j(this.f9175a, i11, i10);
        }
        this.f9179e.d(this.f9182h.g());
    }

    private void n0() {
        int itemCount = getItemCount();
        int i10 = this.f9187m;
        if (itemCount == i10 || this.f9181g == null) {
            return;
        }
        if (this.f9180f.h(this, i10)) {
            f0();
        }
        this.f9187m = itemCount;
    }

    private void o0() {
        if (!this.f9178d || getChildCount() < 1) {
            return;
        }
        int i10 = 0;
        while (i10 < getChildCount() - 1) {
            int position = getPosition(getChildAt(i10));
            int i11 = i10 + 1;
            int position2 = getPosition(getChildAt(i11));
            if (position > position2) {
                b0();
                throw new IllegalStateException("Detected invalid child order. Child at index [" + i10 + "] had adapter position [" + position + "] and child at index [" + i11 + "] had adapter position [" + position2 + "].");
            }
            i10 = i11;
        }
    }

    private void r(View view, int i10, b bVar) {
        float f10 = this.f9182h.f() / 2.0f;
        addView(view, i10);
        float f11 = bVar.f9193c;
        this.f9185k.m(view, (int) (f11 - f10), (int) (f11 + f10));
        l0(view, bVar.f9192b, bVar.f9194d);
    }

    private float s(float f10, float f11) {
        return X() ? f10 - f11 : f10 + f11;
    }

    private int scrollBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        if (this.f9181g == null) {
            e0(wVar);
        }
        int iB = B(i10, this.f9175a, this.f9176b, this.f9177c);
        this.f9175a += iB;
        m0(this.f9181g);
        float f10 = this.f9182h.f() / 2.0f;
        float fY = y(getPosition(getChildAt(0)));
        Rect rect = new Rect();
        float f11 = X() ? this.f9182h.h().f9231b : this.f9182h.a().f9231b;
        float f12 = Float.MAX_VALUE;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            float fAbs = Math.abs(f11 - d0(childAt, fY, f10, rect));
            if (childAt != null && fAbs < f12) {
                this.f9188n = getPosition(childAt);
                f12 = fAbs;
            }
            fY = s(fY, this.f9182h.f());
        }
        D(wVar, a0Var);
        return iB;
    }

    private float t(float f10, float f11) {
        return X() ? f10 + f11 : f10 - f11;
    }

    private void u(RecyclerView.w wVar, int i10, int i11) {
        if (i10 < 0 || i10 >= getItemCount()) {
            return;
        }
        b bVarC0 = c0(wVar, y(i10), i10);
        r(bVarC0.f9191a, i11, bVarC0);
    }

    private void v(RecyclerView.w wVar, RecyclerView.a0 a0Var, int i10) {
        float fY = y(i10);
        while (i10 < a0Var.b()) {
            b bVarC0 = c0(wVar, fY, i10);
            if (Y(bVarC0.f9193c, bVarC0.f9194d)) {
                return;
            }
            fY = s(fY, this.f9182h.f());
            if (!Z(bVarC0.f9193c, bVarC0.f9194d)) {
                r(bVarC0.f9191a, -1, bVarC0);
            }
            i10++;
        }
    }

    private void w(RecyclerView.w wVar, int i10) {
        float fY = y(i10);
        while (i10 >= 0) {
            b bVarC0 = c0(wVar, fY, i10);
            if (Z(bVarC0.f9193c, bVarC0.f9194d)) {
                return;
            }
            fY = t(fY, this.f9182h.f());
            if (!Y(bVarC0.f9193c, bVarC0.f9194d)) {
                r(bVarC0.f9191a, 0, bVarC0);
            }
            i10--;
        }
    }

    private float x(View view, float f10, d dVar) {
        f.c cVar = dVar.f9197a;
        float f11 = cVar.f9231b;
        f.c cVar2 = dVar.f9198b;
        float fB = x3.a.b(f11, cVar2.f9231b, cVar.f9230a, cVar2.f9230a, f10);
        if (dVar.f9198b != this.f9182h.c() && dVar.f9197a != this.f9182h.j()) {
            return fB;
        }
        float fE = this.f9185k.e((RecyclerView.q) view.getLayoutParams()) / this.f9182h.f();
        f.c cVar3 = dVar.f9198b;
        return fB + ((f10 - cVar3.f9230a) * ((1.0f - cVar3.f9232c) + fE));
    }

    private float y(int i10) {
        return s(R() - this.f9175a, this.f9182h.f() * i10);
    }

    private int z(RecyclerView.a0 a0Var, g gVar) {
        boolean zX = X();
        f fVarL = zX ? gVar.l() : gVar.h();
        f.c cVarA = zX ? fVarL.a() : fVarL.h();
        int iB = (int) (((((a0Var.b() - 1) * fVarL.f()) * (zX ? -1.0f : 1.0f)) - (cVarA.f9230a - R())) + (O() - cVarA.f9230a) + (zX ? -cVarA.f9236g : cVarA.f9237h));
        return zX ? Math.min(0, iB) : Math.max(0, iB);
    }

    int A(int i10) {
        return (int) (this.f9175a - U(i10, J(i10)));
    }

    int M(int i10, f fVar) {
        return U(i10, fVar) - this.f9175a;
    }

    boolean X() {
        return d() && getLayoutDirection() == 1;
    }

    @Override // com.google.android.material.carousel.b
    public int a() {
        return getWidth();
    }

    @Override // com.google.android.material.carousel.b
    public int b() {
        return this.f9189o;
    }

    @Override // com.google.android.material.carousel.b
    public int c() {
        return getHeight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollHorizontally() {
        return d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollVertically() {
        return !d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollExtent(RecyclerView.a0 a0Var) {
        if (getChildCount() == 0 || this.f9181g == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getWidth() * (this.f9181g.g().f() / computeHorizontalScrollRange(a0Var)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollOffset(RecyclerView.a0 a0Var) {
        return this.f9175a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollRange(RecyclerView.a0 a0Var) {
        return this.f9177c - this.f9176b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z.b
    public PointF computeScrollVectorForPosition(int i10) {
        if (this.f9181g == null) {
            return null;
        }
        int iM = M(i10, J(i10));
        return d() ? new PointF(iM, 0.0f) : new PointF(0.0f, iM);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollExtent(RecyclerView.a0 a0Var) {
        if (getChildCount() == 0 || this.f9181g == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getHeight() * (this.f9181g.g().f() / computeVerticalScrollRange(a0Var)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.a0 a0Var) {
        return this.f9175a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.a0 a0Var) {
        return this.f9177c - this.f9176b;
    }

    @Override // com.google.android.material.carousel.b
    public boolean d() {
        return this.f9185k.f9212a == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateDefaultLayoutParams() {
        return new RecyclerView.q(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        float fCenterY = rect.centerY();
        if (d()) {
            fCenterY = rect.centerX();
        }
        float fL = L(fCenterY, W(this.f9182h.g(), fCenterY, true));
        float fWidth = d() ? (rect.width() - fL) / 2.0f : 0.0f;
        float fHeight = d() ? 0.0f : (rect.height() - fL) / 2.0f;
        rect.set((int) (rect.left + fWidth), (int) (rect.top + fHeight), (int) (rect.right - fWidth), (int) (rect.bottom - fHeight));
    }

    public int getOrientation() {
        return this.f9185k.f9212a;
    }

    public void i0(int i10) {
        this.f9189o = i10;
        f0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public void k0(com.google.android.material.carousel.d dVar) {
        this.f9180f = dVar;
        f0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void measureChildWithMargins(View view, int i10, int i11) {
        if (!(view instanceof h)) {
            throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        }
        RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
        Rect rect = new Rect();
        calculateItemDecorationsForChild(view, rect);
        int i12 = i10 + rect.left + rect.right;
        int i13 = i11 + rect.top + rect.bottom;
        g gVar = this.f9181g;
        float f10 = (gVar == null || this.f9185k.f9212a != 0) ? ((ViewGroup.MarginLayoutParams) qVar).width : gVar.g().f();
        g gVar2 = this.f9181g;
        view.measure(RecyclerView.p.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin + i12, (int) f10, canScrollHorizontally()), RecyclerView.p.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin + i13, (int) ((gVar2 == null || this.f9185k.f9212a != 1) ? ((ViewGroup.MarginLayoutParams) qVar).height : gVar2.g().f()), canScrollVertically()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f9180f.e(recyclerView.getContext());
        f0();
        recyclerView.addOnLayoutChangeListener(this.f9186l);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.w wVar) {
        super.onDetachedFromWindow(recyclerView, wVar);
        recyclerView.removeOnLayoutChangeListener(this.f9186l);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View onFocusSearchFailed(View view, int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        int iConvertFocusDirectionToLayoutDirection;
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            if (getPosition(view) == 0) {
                return null;
            }
            u(wVar, getPosition(getChildAt(0)) - 1, 0);
            return F();
        }
        if (getPosition(view) == getItemCount() - 1) {
            return null;
        }
        u(wVar, getPosition(getChildAt(getChildCount() - 1)) + 1, -1);
        return E();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        n0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        n0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (a0Var.b() <= 0 || G() <= 0.0f) {
            removeAndRecycleAllViews(wVar);
            this.f9183i = 0;
            return;
        }
        boolean zX = X();
        boolean z10 = this.f9181g == null;
        if (z10) {
            e0(wVar);
        }
        int iC = C(this.f9181g);
        int iZ = z(a0Var, this.f9181g);
        this.f9176b = zX ? iZ : iC;
        if (zX) {
            iZ = iC;
        }
        this.f9177c = iZ;
        if (z10) {
            this.f9175a = iC;
            this.f9184j = this.f9181g.i(getItemCount(), this.f9176b, this.f9177c, X());
            int i10 = this.f9188n;
            if (i10 != -1) {
                this.f9175a = U(i10, J(i10));
            }
        }
        int i11 = this.f9175a;
        this.f9175a = i11 + B(0, i11, this.f9176b, this.f9177c);
        this.f9183i = x.a.b(this.f9183i, 0, a0Var.b());
        m0(this.f9181g);
        detachAndScrapAttachedViews(wVar);
        D(wVar, a0Var);
        this.f9187m = getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutCompleted(RecyclerView.a0 a0Var) {
        super.onLayoutCompleted(a0Var);
        if (getChildCount() == 0) {
            this.f9183i = 0;
        } else {
            this.f9183i = getPosition(getChildAt(0));
        }
        o0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
        int iV;
        if (this.f9181g == null || (iV = V(getPosition(view), J(getPosition(view)))) == 0) {
            return false;
        }
        h0(recyclerView, V(getPosition(view), this.f9181g.j(this.f9175a + B(iV, this.f9175a, this.f9176b, this.f9177c), this.f9176b, this.f9177c)));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollHorizontallyBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (canScrollHorizontally()) {
            return scrollBy(i10, wVar, a0Var);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void scrollToPosition(int i10) {
        this.f9188n = i10;
        if (this.f9181g == null) {
            return;
        }
        this.f9175a = U(i10, J(i10));
        this.f9183i = x.a.b(i10, 0, Math.max(0, getItemCount() - 1));
        m0(this.f9181g);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollVerticallyBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (canScrollVertically()) {
            return scrollBy(i10, wVar, a0Var);
        }
        return 0;
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        assertNotInLayoutOrScroll(null);
        com.google.android.material.carousel.c cVar = this.f9185k;
        if (cVar == null || i10 != cVar.f9212a) {
            this.f9185k = com.google.android.material.carousel.c.c(this, i10);
            f0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.setTargetPosition(i10);
        startSmoothScroll(aVar);
    }

    public CarouselLayoutManager(com.google.android.material.carousel.d dVar) {
        this(dVar, 0);
    }

    public CarouselLayoutManager(com.google.android.material.carousel.d dVar, int i10) {
        this.f9178d = false;
        this.f9179e = new c();
        this.f9183i = 0;
        this.f9186l = new View.OnLayoutChangeListener() { // from class: z3.a
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                this.f16634a.a0(view, i11, i12, i13, i14, i15, i16, i17, i18);
            }
        };
        this.f9188n = -1;
        this.f9189o = 0;
        k0(dVar);
        setOrientation(i10);
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f9178d = false;
        this.f9179e = new c();
        this.f9183i = 0;
        this.f9186l = new View.OnLayoutChangeListener() { // from class: z3.a
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i112, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                this.f16634a.a0(view, i112, i12, i13, i14, i15, i16, i17, i18);
            }
        };
        this.f9188n = -1;
        this.f9189o = 0;
        k0(new i());
        j0(context, attributeSet);
    }
}
