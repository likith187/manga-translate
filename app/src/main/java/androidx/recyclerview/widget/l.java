package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.m0;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
class l extends RecyclerView.o implements RecyclerView.t {
    private static final int[] D = {16842919};
    private static final int[] E = new int[0];
    int A;
    private final Runnable B;
    private final RecyclerView.u C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final StateListDrawable f3398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Drawable f3399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3401f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final StateListDrawable f3402g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Drawable f3403h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f3404i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f3405j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f3406k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f3407l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f3408m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f3409n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f3410o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f3411p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RecyclerView f3414s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final ValueAnimator f3421z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f3412q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f3413r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f3415t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f3416u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f3417v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f3418w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int[] f3419x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int[] f3420y = new int[2];

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.k(500);
        }
    }

    class b extends RecyclerView.u {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            l.this.v(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    private class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3424a = false;

        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3424a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f3424a) {
                this.f3424a = false;
                return;
            }
            if (((Float) l.this.f3421z.getAnimatedValue()).floatValue() == 0.0f) {
                l lVar = l.this;
                lVar.A = 0;
                lVar.s(0);
            } else {
                l lVar2 = l.this;
                lVar2.A = 2;
                lVar2.p();
            }
        }
    }

    private class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            l.this.f3398c.setAlpha(iFloatValue);
            l.this.f3399d.setAlpha(iFloatValue);
            l.this.p();
        }
    }

    l(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i10, int i11, int i12) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f3421z = valueAnimatorOfFloat;
        this.A = 0;
        this.B = new a();
        this.C = new b();
        this.f3398c = stateListDrawable;
        this.f3399d = drawable;
        this.f3402g = stateListDrawable2;
        this.f3403h = drawable2;
        this.f3400e = Math.max(i10, stateListDrawable.getIntrinsicWidth());
        this.f3401f = Math.max(i10, drawable.getIntrinsicWidth());
        this.f3404i = Math.max(i10, stateListDrawable2.getIntrinsicWidth());
        this.f3405j = Math.max(i10, drawable2.getIntrinsicWidth());
        this.f3396a = i11;
        this.f3397b = i12;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new c());
        valueAnimatorOfFloat.addUpdateListener(new d());
        d(recyclerView);
    }

    private void e() {
        this.f3414s.removeCallbacks(this.B);
    }

    private void f() {
        this.f3414s.removeItemDecoration(this);
        this.f3414s.removeOnItemTouchListener(this);
        this.f3414s.removeOnScrollListener(this.C);
        e();
    }

    private void g(Canvas canvas) {
        int i10 = this.f3413r;
        int i11 = this.f3404i;
        int i12 = this.f3410o;
        int i13 = this.f3409n;
        this.f3402g.setBounds(0, 0, i13, i11);
        this.f3403h.setBounds(0, 0, this.f3412q, this.f3405j);
        canvas.translate(0.0f, i10 - i11);
        this.f3403h.draw(canvas);
        canvas.translate(i12 - (i13 / 2), 0.0f);
        this.f3402g.draw(canvas);
        canvas.translate(-r2, -r0);
    }

    private void h(Canvas canvas) {
        int i10 = this.f3412q;
        int i11 = this.f3400e;
        int i12 = i10 - i11;
        int i13 = this.f3407l;
        int i14 = this.f3406k;
        int i15 = i13 - (i14 / 2);
        this.f3398c.setBounds(0, 0, i11, i14);
        this.f3399d.setBounds(0, 0, this.f3401f, this.f3413r);
        if (!m()) {
            canvas.translate(i12, 0.0f);
            this.f3399d.draw(canvas);
            canvas.translate(0.0f, i15);
            this.f3398c.draw(canvas);
            canvas.translate(-i12, -i15);
            return;
        }
        this.f3399d.draw(canvas);
        canvas.translate(this.f3400e, i15);
        canvas.scale(-1.0f, 1.0f);
        this.f3398c.draw(canvas);
        canvas.scale(-1.0f, 1.0f);
        canvas.translate(-this.f3400e, -i15);
    }

    private int[] i() {
        int[] iArr = this.f3420y;
        int i10 = this.f3397b;
        iArr[0] = i10;
        iArr[1] = this.f3412q - i10;
        return iArr;
    }

    private int[] j() {
        int[] iArr = this.f3419x;
        int i10 = this.f3397b;
        iArr[0] = i10;
        iArr[1] = this.f3413r - i10;
        return iArr;
    }

    private void l(float f10) {
        int[] iArrI = i();
        float fMax = Math.max(iArrI[0], Math.min(iArrI[1], f10));
        if (Math.abs(this.f3410o - fMax) < 2.0f) {
            return;
        }
        int iR = r(this.f3411p, fMax, iArrI, this.f3414s.computeHorizontalScrollRange(), this.f3414s.computeHorizontalScrollOffset(), this.f3412q);
        if (iR != 0) {
            this.f3414s.scrollBy(iR, 0);
        }
        this.f3411p = fMax;
    }

    private boolean m() {
        return m0.v(this.f3414s) == 1;
    }

    private void q(int i10) {
        e();
        this.f3414s.postDelayed(this.B, i10);
    }

    private int r(float f10, float f11, int[] iArr, int i10, int i11, int i12) {
        int i13 = iArr[1] - iArr[0];
        if (i13 == 0) {
            return 0;
        }
        int i14 = i10 - i12;
        int i15 = (int) (((f11 - f10) / i13) * i14);
        int i16 = i11 + i15;
        if (i16 >= i14 || i16 < 0) {
            return 0;
        }
        return i15;
    }

    private void t() {
        this.f3414s.addItemDecoration(this);
        this.f3414s.addOnItemTouchListener(this);
        this.f3414s.addOnScrollListener(this.C);
    }

    private void w(float f10) {
        int[] iArrJ = j();
        float fMax = Math.max(iArrJ[0], Math.min(iArrJ[1], f10));
        if (Math.abs(this.f3407l - fMax) < 2.0f) {
            return;
        }
        int iR = r(this.f3408m, fMax, iArrJ, this.f3414s.computeVerticalScrollRange(), this.f3414s.computeVerticalScrollOffset(), this.f3413r);
        if (iR != 0) {
            this.f3414s.scrollBy(0, iR);
        }
        this.f3408m = fMax;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public boolean a(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i10 = this.f3417v;
        if (i10 == 1) {
            boolean zO = o(motionEvent.getX(), motionEvent.getY());
            boolean zN = n(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zO && !zN) {
                return false;
            }
            if (zN) {
                this.f3418w = 1;
                this.f3411p = (int) motionEvent.getX();
            } else if (zO) {
                this.f3418w = 2;
                this.f3408m = (int) motionEvent.getY();
            }
            s(2);
        } else if (i10 != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public void b(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f3417v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zO = o(motionEvent.getX(), motionEvent.getY());
            boolean zN = n(motionEvent.getX(), motionEvent.getY());
            if (zO || zN) {
                if (zN) {
                    this.f3418w = 1;
                    this.f3411p = (int) motionEvent.getX();
                } else if (zO) {
                    this.f3418w = 2;
                    this.f3408m = (int) motionEvent.getY();
                }
                s(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f3417v == 2) {
            this.f3408m = 0.0f;
            this.f3411p = 0.0f;
            s(1);
            this.f3418w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f3417v == 2) {
            u();
            if (this.f3418w == 1) {
                l(motionEvent.getX());
            }
            if (this.f3418w == 2) {
                w(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public void c(boolean z10) {
    }

    public void d(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f3414s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            f();
        }
        this.f3414s = recyclerView;
        if (recyclerView != null) {
            t();
        }
    }

    void k(int i10) {
        int i11 = this.A;
        if (i11 == 1) {
            this.f3421z.cancel();
        } else if (i11 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.f3421z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f3421z.setDuration(i10);
        this.f3421z.start();
    }

    boolean n(float f10, float f11) {
        if (f11 >= this.f3413r - this.f3404i) {
            int i10 = this.f3410o;
            int i11 = this.f3409n;
            if (f10 >= i10 - (i11 / 2) && f10 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    boolean o(float f10, float f11) {
        if (!m() ? f10 >= this.f3412q - this.f3400e : f10 <= this.f3400e) {
            int i10 = this.f3407l;
            int i11 = this.f3406k;
            if (f11 >= i10 - (i11 / 2) && f11 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
        if (this.f3412q != this.f3414s.getWidth() || this.f3413r != this.f3414s.getHeight()) {
            this.f3412q = this.f3414s.getWidth();
            this.f3413r = this.f3414s.getHeight();
            s(0);
        } else if (this.A != 0) {
            if (this.f3415t) {
                h(canvas);
            }
            if (this.f3416u) {
                g(canvas);
            }
        }
    }

    void p() {
        this.f3414s.invalidate();
    }

    void s(int i10) {
        if (i10 == 2 && this.f3417v != 2) {
            this.f3398c.setState(D);
            e();
        }
        if (i10 == 0) {
            p();
        } else {
            u();
        }
        if (this.f3417v == 2 && i10 != 2) {
            this.f3398c.setState(E);
            q(1200);
        } else if (i10 == 1) {
            q(1500);
        }
        this.f3417v = i10;
    }

    public void u() {
        int i10 = this.A;
        if (i10 != 0) {
            if (i10 != 3) {
                return;
            } else {
                this.f3421z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.f3421z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f3421z.setDuration(500L);
        this.f3421z.setStartDelay(0L);
        this.f3421z.start();
    }

    void v(int i10, int i11) {
        int iComputeVerticalScrollRange = this.f3414s.computeVerticalScrollRange();
        int i12 = this.f3413r;
        this.f3415t = iComputeVerticalScrollRange - i12 > 0 && i12 >= this.f3396a;
        int iComputeHorizontalScrollRange = this.f3414s.computeHorizontalScrollRange();
        int i13 = this.f3412q;
        boolean z10 = iComputeHorizontalScrollRange - i13 > 0 && i13 >= this.f3396a;
        this.f3416u = z10;
        boolean z11 = this.f3415t;
        if (!z11 && !z10) {
            if (this.f3417v != 0) {
                s(0);
                return;
            }
            return;
        }
        if (z11) {
            float f10 = i12;
            this.f3407l = (int) ((f10 * (i11 + (f10 / 2.0f))) / iComputeVerticalScrollRange);
            this.f3406k = Math.min(i12, (i12 * i12) / iComputeVerticalScrollRange);
        }
        if (this.f3416u) {
            float f11 = i13;
            this.f3410o = (int) ((f11 * (i10 + (f11 / 2.0f))) / iComputeHorizontalScrollRange);
            this.f3409n = Math.min(i13, (i13 * i13) / iComputeHorizontalScrollRange);
        }
        int i14 = this.f3417v;
        if (i14 == 0 || i14 == 1) {
            s(1);
        }
    }
}
