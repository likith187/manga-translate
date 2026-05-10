package com.google.android.material.carousel;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
abstract class c {

    /* JADX INFO: renamed from: a */
    final int f9212a;

    class a extends c {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ CarouselLayoutManager f9213b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i10, CarouselLayoutManager carouselLayoutManager) {
            super(i10, null);
            this.f9213b = carouselLayoutManager;
        }

        @Override // com.google.android.material.carousel.c
        public void a(RectF rectF, RectF rectF2, RectF rectF3) {
            float f10 = rectF2.top;
            float f11 = rectF3.top;
            if (f10 < f11 && rectF2.bottom > f11) {
                float f12 = f11 - f10;
                rectF.top += f12;
                rectF3.top += f12;
            }
            float f13 = rectF2.bottom;
            float f14 = rectF3.bottom;
            if (f13 <= f14 || rectF2.top >= f14) {
                return;
            }
            float f15 = f13 - f14;
            rectF.bottom = Math.max(rectF.bottom - f15, rectF.top);
            rectF2.bottom = Math.max(rectF2.bottom - f15, rectF2.top);
        }

        @Override // com.google.android.material.carousel.c
        public float e(RecyclerView.q qVar) {
            return ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        }

        @Override // com.google.android.material.carousel.c
        public RectF f(float f10, float f11, float f12, float f13) {
            return new RectF(0.0f, f12, f11, f10 - f12);
        }

        @Override // com.google.android.material.carousel.c
        int g() {
            return this.f9213b.getHeight();
        }

        @Override // com.google.android.material.carousel.c
        int h() {
            return g();
        }

        @Override // com.google.android.material.carousel.c
        int i() {
            return this.f9213b.getPaddingLeft();
        }

        @Override // com.google.android.material.carousel.c
        int j() {
            return this.f9213b.getWidth() - this.f9213b.getPaddingRight();
        }

        @Override // com.google.android.material.carousel.c
        int k() {
            return l();
        }

        @Override // com.google.android.material.carousel.c
        int l() {
            return 0;
        }

        @Override // com.google.android.material.carousel.c
        public void m(View view, int i10, int i11) {
            int i12 = i();
            this.f9213b.layoutDecoratedWithMargins(view, i12, i10, i12 + p(view), i11);
        }

        @Override // com.google.android.material.carousel.c
        public void n(RectF rectF, RectF rectF2, RectF rectF3) {
            if (rectF2.bottom <= rectF3.top) {
                float fFloor = ((float) Math.floor(rectF.bottom)) - 1.0f;
                rectF.bottom = fFloor;
                rectF.top = Math.min(rectF.top, fFloor);
            }
            if (rectF2.top >= rectF3.bottom) {
                float fCeil = ((float) Math.ceil(rectF.top)) + 1.0f;
                rectF.top = fCeil;
                rectF.bottom = Math.max(fCeil, rectF.bottom);
            }
        }

        @Override // com.google.android.material.carousel.c
        public void o(View view, Rect rect, float f10, float f11) {
            view.offsetTopAndBottom((int) (f11 - (rect.top + f10)));
        }

        int p(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f9213b.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin;
        }
    }

    class b extends c {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ CarouselLayoutManager f9214b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i10, CarouselLayoutManager carouselLayoutManager) {
            super(i10, null);
            this.f9214b = carouselLayoutManager;
        }

        @Override // com.google.android.material.carousel.c
        public void a(RectF rectF, RectF rectF2, RectF rectF3) {
            float f10 = rectF2.left;
            float f11 = rectF3.left;
            if (f10 < f11 && rectF2.right > f11) {
                float f12 = f11 - f10;
                rectF.left += f12;
                rectF2.left += f12;
            }
            float f13 = rectF2.right;
            float f14 = rectF3.right;
            if (f13 <= f14 || rectF2.left >= f14) {
                return;
            }
            float f15 = f13 - f14;
            rectF.right = Math.max(rectF.right - f15, rectF.left);
            rectF2.right = Math.max(rectF2.right - f15, rectF2.left);
        }

        @Override // com.google.android.material.carousel.c
        public float e(RecyclerView.q qVar) {
            return ((ViewGroup.MarginLayoutParams) qVar).rightMargin + ((ViewGroup.MarginLayoutParams) qVar).leftMargin;
        }

        @Override // com.google.android.material.carousel.c
        public RectF f(float f10, float f11, float f12, float f13) {
            return new RectF(f13, 0.0f, f11 - f13, f10);
        }

        @Override // com.google.android.material.carousel.c
        int g() {
            return this.f9214b.getHeight() - this.f9214b.getPaddingBottom();
        }

        @Override // com.google.android.material.carousel.c
        int h() {
            return this.f9214b.X() ? i() : j();
        }

        @Override // com.google.android.material.carousel.c
        int i() {
            return 0;
        }

        @Override // com.google.android.material.carousel.c
        int j() {
            return this.f9214b.getWidth();
        }

        @Override // com.google.android.material.carousel.c
        int k() {
            return this.f9214b.X() ? j() : i();
        }

        @Override // com.google.android.material.carousel.c
        int l() {
            return this.f9214b.getPaddingTop();
        }

        @Override // com.google.android.material.carousel.c
        public void m(View view, int i10, int i11) {
            int iL = l();
            this.f9214b.layoutDecoratedWithMargins(view, i10, iL, i11, iL + p(view));
        }

        @Override // com.google.android.material.carousel.c
        public void n(RectF rectF, RectF rectF2, RectF rectF3) {
            if (rectF2.right <= rectF3.left) {
                float fFloor = ((float) Math.floor(rectF.right)) - 1.0f;
                rectF.right = fFloor;
                rectF.left = Math.min(rectF.left, fFloor);
            }
            if (rectF2.left >= rectF3.right) {
                float fCeil = ((float) Math.ceil(rectF.left)) + 1.0f;
                rectF.left = fCeil;
                rectF.right = Math.max(fCeil, rectF.right);
            }
        }

        @Override // com.google.android.material.carousel.c
        public void o(View view, Rect rect, float f10, float f11) {
            view.offsetLeftAndRight((int) (f11 - (rect.left + f10)));
        }

        int p(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f9214b.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        }
    }

    /* synthetic */ c(int i10, a aVar) {
        this(i10);
    }

    private static c b(CarouselLayoutManager carouselLayoutManager) {
        return new b(0, carouselLayoutManager);
    }

    static c c(CarouselLayoutManager carouselLayoutManager, int i10) {
        if (i10 == 0) {
            return b(carouselLayoutManager);
        }
        if (i10 == 1) {
            return d(carouselLayoutManager);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    private static c d(CarouselLayoutManager carouselLayoutManager) {
        return new a(1, carouselLayoutManager);
    }

    abstract void a(RectF rectF, RectF rectF2, RectF rectF3);

    abstract float e(RecyclerView.q qVar);

    abstract RectF f(float f10, float f11, float f12, float f13);

    abstract int g();

    abstract int h();

    abstract int i();

    abstract int j();

    abstract int k();

    abstract int l();

    abstract void m(View view, int i10, int i11);

    abstract void n(RectF rectF, RectF rectF2, RectF rectF3);

    abstract void o(View view, Rect rect, float f10, float f11);

    private c(int i10) {
        this.f9212a = i10;
    }
}
