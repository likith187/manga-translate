package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class y extends RecyclerView.s {
    static final float MILLISECONDS_PER_INCH = 100.0f;
    private Scroller mGravityScroller;
    RecyclerView mRecyclerView;
    private final RecyclerView.u mScrollListener = new a();

    class a extends RecyclerView.u {

        /* JADX INFO: renamed from: a */
        boolean f3468a = false;

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            super.onScrollStateChanged(recyclerView, i10);
            if (i10 == 0 && this.f3468a) {
                this.f3468a = false;
                y.this.snapToTargetExistingView();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            if (i10 == 0 && i11 == 0) {
                return;
            }
            this.f3468a = true;
        }
    }

    class b extends p {
        b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.p
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return y.MILLISECONDS_PER_INCH / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.p, androidx.recyclerview.widget.RecyclerView.z
        protected void onTargetFound(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
            y yVar = y.this;
            RecyclerView recyclerView = yVar.mRecyclerView;
            if (recyclerView == null) {
                return;
            }
            int[] iArrCalculateDistanceToFinalSnap = yVar.calculateDistanceToFinalSnap(recyclerView.getLayoutManager(), view);
            int i10 = iArrCalculateDistanceToFinalSnap[0];
            int i11 = iArrCalculateDistanceToFinalSnap[1];
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
            if (iCalculateTimeForDeceleration > 0) {
                aVar.d(i10, i11, iCalculateTimeForDeceleration, this.f3452b);
            }
        }
    }

    private void a() {
        this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(null);
    }

    private void b() {
        if (this.mRecyclerView.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.mRecyclerView.addOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(this);
    }

    private boolean c(RecyclerView.p pVar, int i10, int i11) {
        RecyclerView.z zVarCreateScroller;
        int iFindTargetSnapPosition;
        if (!(pVar instanceof RecyclerView.z.b) || (zVarCreateScroller = createScroller(pVar)) == null || (iFindTargetSnapPosition = findTargetSnapPosition(pVar, i10, i11)) == -1) {
            return false;
        }
        zVarCreateScroller.setTargetPosition(iFindTargetSnapPosition);
        pVar.startSmoothScroll(zVarCreateScroller);
        return true;
    }

    public void attachToRecyclerView(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            a();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            b();
            this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
            snapToTargetExistingView();
        }
    }

    public abstract int[] calculateDistanceToFinalSnap(RecyclerView.p pVar, View view);

    public int[] calculateScrollDistance(int i10, int i11) {
        this.mGravityScroller.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY()};
    }

    protected abstract RecyclerView.z createScroller(RecyclerView.p pVar);

    @Deprecated
    protected p createSnapScroller(RecyclerView.p pVar) {
        if (pVar instanceof RecyclerView.z.b) {
            return new b(this.mRecyclerView.getContext());
        }
        return null;
    }

    public abstract View findSnapView(RecyclerView.p pVar);

    public abstract int findTargetSnapPosition(RecyclerView.p pVar, int i10, int i11);

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public boolean onFling(int i10, int i11) {
        RecyclerView.p layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null || this.mRecyclerView.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.mRecyclerView.getMinFlingVelocity();
        return (Math.abs(i11) > minFlingVelocity || Math.abs(i10) > minFlingVelocity) && c(layoutManager, i10, i11);
    }

    void snapToTargetExistingView() {
        RecyclerView.p layoutManager;
        View viewFindSnapView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewFindSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, viewFindSnapView);
        int i10 = iArrCalculateDistanceToFinalSnap[0];
        if (i10 == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(i10, iArrCalculateDistanceToFinalSnap[1]);
    }
}
