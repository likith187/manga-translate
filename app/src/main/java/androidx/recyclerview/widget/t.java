package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final RecyclerView.p f3461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Rect f3463c;

    class a extends t {
        a(RecyclerView.p pVar) {
            super(pVar, null);
        }

        @Override // androidx.recyclerview.widget.t
        public int d(View view) {
            return this.f3461a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.t
        public int e(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f3461a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.t
        public int f(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f3461a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.t
        public int g(View view) {
            return this.f3461a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.t
        public int h() {
            return this.f3461a.getWidth();
        }

        @Override // androidx.recyclerview.widget.t
        public int i() {
            return this.f3461a.getWidth() - this.f3461a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.t
        public int j() {
            return this.f3461a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.t
        public int l() {
            return this.f3461a.getWidthMode();
        }

        @Override // androidx.recyclerview.widget.t
        public int m() {
            return this.f3461a.getHeightMode();
        }

        @Override // androidx.recyclerview.widget.t
        public int n() {
            return this.f3461a.getPaddingLeft();
        }

        @Override // androidx.recyclerview.widget.t
        public int o() {
            return (this.f3461a.getWidth() - this.f3461a.getPaddingLeft()) - this.f3461a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.t
        public int q(View view) {
            this.f3461a.getTransformedBoundingBox(view, true, this.f3463c);
            return this.f3463c.right;
        }

        @Override // androidx.recyclerview.widget.t
        public int r(View view) {
            this.f3461a.getTransformedBoundingBox(view, true, this.f3463c);
            return this.f3463c.left;
        }

        @Override // androidx.recyclerview.widget.t
        public void s(int i10) {
            this.f3461a.offsetChildrenHorizontal(i10);
        }
    }

    class b extends t {
        b(RecyclerView.p pVar) {
            super(pVar, null);
        }

        @Override // androidx.recyclerview.widget.t
        public int d(View view) {
            return this.f3461a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.t
        public int e(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f3461a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.t
        public int f(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f3461a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.t
        public int g(View view) {
            return this.f3461a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.t
        public int h() {
            return this.f3461a.getHeight();
        }

        @Override // androidx.recyclerview.widget.t
        public int i() {
            return this.f3461a.getHeight() - this.f3461a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.t
        public int j() {
            return this.f3461a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.t
        public int l() {
            return this.f3461a.getHeightMode();
        }

        @Override // androidx.recyclerview.widget.t
        public int m() {
            return this.f3461a.getWidthMode();
        }

        @Override // androidx.recyclerview.widget.t
        public int n() {
            return this.f3461a.getPaddingTop();
        }

        @Override // androidx.recyclerview.widget.t
        public int o() {
            return (this.f3461a.getHeight() - this.f3461a.getPaddingTop()) - this.f3461a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.t
        public int q(View view) {
            this.f3461a.getTransformedBoundingBox(view, true, this.f3463c);
            return this.f3463c.bottom;
        }

        @Override // androidx.recyclerview.widget.t
        public int r(View view) {
            this.f3461a.getTransformedBoundingBox(view, true, this.f3463c);
            return this.f3463c.top;
        }

        @Override // androidx.recyclerview.widget.t
        public void s(int i10) {
            this.f3461a.offsetChildrenVertical(i10);
        }
    }

    /* synthetic */ t(RecyclerView.p pVar, a aVar) {
        this(pVar);
    }

    public static t a(RecyclerView.p pVar) {
        return new a(pVar);
    }

    public static t b(RecyclerView.p pVar, int i10) {
        if (i10 == 0) {
            return a(pVar);
        }
        if (i10 == 1) {
            return c(pVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static t c(RecyclerView.p pVar) {
        return new b(pVar);
    }

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f(View view);

    public abstract int g(View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public RecyclerView.p k() {
        return this.f3461a;
    }

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public abstract int o();

    public int p() {
        if (Integer.MIN_VALUE == this.f3462b) {
            return 0;
        }
        return o() - this.f3462b;
    }

    public abstract int q(View view);

    public abstract int r(View view);

    public abstract void s(int i10);

    public void t() {
        this.f3462b = o();
    }

    private t(RecyclerView.p pVar) {
        this.f3462b = Integer.MIN_VALUE;
        this.f3463c = new Rect();
        this.f3461a = pVar;
    }
}
