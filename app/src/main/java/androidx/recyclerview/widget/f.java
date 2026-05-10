package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends RecyclerView.z {
    private static final int CONSECUTIVE_UPDATES_MIN = 10;
    private static final boolean DEBUG = false;
    private static final float MILLISECONDS_PER_INCH = 25.0f;
    private static final float SCROLLING_TIME_DIVIDER = 0.3356f;
    public static final int SNAP_TO_ANY = 0;
    public static final int SNAP_TO_END = 1;
    public static final int SNAP_TO_START = -1;
    private static final String TAG = "LinearSmoothScroller";
    private static final float TARGET_SEEK_EXTRA_SCROLL_RATIO = 1.2f;
    private static final int TARGET_SEEK_SCROLL_DISTANCE_PX = 10000;
    private final DisplayMetrics mDisplayMetrics;
    private RecyclerView.p mLayoutManager;
    private float mMillisPerPixel;
    private boolean mPendingInitialRun;
    private COUIRecyclerView mRecyclerView;
    private boolean mRunning;
    private boolean mStarted;
    protected PointF mTargetVector;
    private View mTargetView;
    protected final LinearInterpolator mLinearInterpolator = new LinearInterpolator();
    protected final DecelerateInterpolator mDecelerateInterpolator = new DecelerateInterpolator();
    protected int mInterimTargetDx = 0;
    protected int mInterimTargetDy = 0;
    private boolean mHasCalculatedMillisPerPixel = false;
    private int mTargetPosition = -1;
    private final a mRecyclingAction = new a(0, 0);

    public static class a extends RecyclerView.z.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f3294h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f3295i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f3296j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f3297k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Interpolator f3298l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f3299m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f3300n;

        public a(int i10, int i11) {
            super(i10, i11);
            this.f3297k = -1;
            this.f3299m = false;
            this.f3300n = 0;
        }

        private void e() {
            if (this.f3298l != null && this.f3296j < 1) {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            if (this.f3296j < 1) {
                throw new IllegalStateException("Scroll duration must be a positive number");
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.z.a
        boolean a() {
            return this.f3297k >= 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.z.a
        public void b(int i10) {
            super.b(i10);
            this.f3297k = i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.z.a
        void c(RecyclerView recyclerView) {
            if (!(recyclerView instanceof COUIRecyclerView)) {
                super.c(recyclerView);
                return;
            }
            int i10 = this.f3297k;
            if (i10 >= 0) {
                this.f3297k = -1;
                recyclerView.jumpToPositionForSmoothScroller(i10);
                this.f3299m = false;
            } else {
                if (!this.f3299m) {
                    this.f3300n = 0;
                    return;
                }
                e();
                ((COUIRecyclerView) recyclerView).getViewFlinger().f(this.f3294h, this.f3295i, this.f3296j, this.f3298l);
                int i11 = this.f3300n + 1;
                this.f3300n = i11;
                if (i11 > 10) {
                    Log.e(f.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.f3299m = false;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.z.a
        public void d(int i10, int i11, int i12, Interpolator interpolator) {
            super.d(i10, i11, i12, interpolator);
            this.f3294h = i10;
            this.f3295i = i11;
            this.f3296j = i12;
            this.f3298l = interpolator;
            this.f3299m = true;
        }
    }

    public f(Context context) {
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
    }

    private int a(int i10, int i11) {
        int i12 = i10 - i11;
        if (i10 * i12 <= 0) {
            return 0;
        }
        return i12;
    }

    private float b() {
        if (!this.mHasCalculatedMillisPerPixel) {
            this.mMillisPerPixel = calculateSpeedPerPixel(this.mDisplayMetrics);
            this.mHasCalculatedMillisPerPixel = true;
        }
        return this.mMillisPerPixel;
    }

    public int calculateDtToFit(int i10, int i11, int i12, int i13, int i14) {
        if (i14 == -1) {
            return i12 - i10;
        }
        if (i14 != 0) {
            if (i14 == 1) {
                return i13 - i11;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i15 = i12 - i10;
        if (i15 > 0) {
            return i15;
        }
        int i16 = i13 - i11;
        if (i16 < 0) {
            return i16;
        }
        return 0;
    }

    public int calculateDxToMakeVisible(View view, int i10) {
        RecyclerView.p layoutManager = getLayoutManager();
        if (layoutManager == null || !layoutManager.canScrollHorizontally()) {
            return 0;
        }
        RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
        return calculateDtToFit(layoutManager.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) qVar).leftMargin, layoutManager.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) qVar).rightMargin, layoutManager.getPaddingLeft(), layoutManager.getWidth() - layoutManager.getPaddingRight(), i10);
    }

    public int calculateDyToMakeVisible(View view, int i10) {
        RecyclerView.p layoutManager = getLayoutManager();
        if (layoutManager == null || !layoutManager.canScrollVertically()) {
            return 0;
        }
        RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
        return calculateDtToFit(layoutManager.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) qVar).topMargin, layoutManager.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin, layoutManager.getPaddingTop(), layoutManager.getHeight() - layoutManager.getPaddingBottom(), i10);
    }

    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return MILLISECONDS_PER_INCH / displayMetrics.densityDpi;
    }

    protected int calculateTimeForDeceleration(int i10) {
        return (int) Math.ceil(calculateTimeForScrolling(i10) / SCROLLING_TIME_DIVIDER);
    }

    protected int calculateTimeForScrolling(int i10) {
        return (int) Math.ceil(Math.abs(i10) * b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    public View findViewByPosition(int i10) {
        return this.mRecyclerView.mLayout.findViewByPosition(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    public int getChildCount() {
        return this.mRecyclerView.mLayout.getChildCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    public int getChildPosition(View view) {
        return this.mRecyclerView.getChildLayoutPosition(view);
    }

    protected int getHorizontalSnapPreference() {
        PointF pointF = this.mTargetVector;
        if (pointF != null) {
            float f10 = pointF.x;
            if (f10 != 0.0f) {
                return f10 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    public RecyclerView.p getLayoutManager() {
        return this.mLayoutManager;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    public int getTargetPosition() {
        return this.mTargetPosition;
    }

    protected int getVerticalSnapPreference() {
        PointF pointF = this.mTargetVector;
        if (pointF != null) {
            float f10 = pointF.y;
            if (f10 != 0.0f) {
                return f10 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    public boolean isPendingInitialRun() {
        return this.mPendingInitialRun;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    void onAnimation(int i10, int i11) {
        PointF pointFComputeScrollVectorForPosition;
        COUIRecyclerView cOUIRecyclerView = this.mRecyclerView;
        int i12 = this.mTargetPosition;
        if (i12 == -1 || cOUIRecyclerView == null) {
            stopLinearScroller();
            return;
        }
        if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (pointFComputeScrollVectorForPosition = computeScrollVectorForPosition(i12)) != null) {
            float f10 = pointFComputeScrollVectorForPosition.x;
            if (f10 != 0.0f || pointFComputeScrollVectorForPosition.y != 0.0f) {
                cOUIRecyclerView.scrollStep((int) Math.signum(f10), (int) Math.signum(pointFComputeScrollVectorForPosition.y), null);
            }
        }
        this.mPendingInitialRun = false;
        View view = this.mTargetView;
        if (view != null) {
            if (getChildPosition(view) == this.mTargetPosition) {
                onTargetFound(this.mTargetView, cOUIRecyclerView.mState, this.mRecyclingAction);
                this.mRecyclingAction.c(cOUIRecyclerView);
                stopLinearScroller();
            } else {
                Log.e(TAG, "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
        }
        if (this.mRunning) {
            onSeekTargetStep(i10, i11, cOUIRecyclerView.mState, this.mRecyclingAction);
            boolean zA = this.mRecyclingAction.a();
            this.mRecyclingAction.c(cOUIRecyclerView);
            if (zA && this.mRunning) {
                this.mPendingInitialRun = true;
                cOUIRecyclerView.getViewFlinger().e();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void onChildAttachedToWindow(View view) {
        if (getChildPosition(view) == getTargetPosition()) {
            this.mTargetView = view;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void onSeekTargetStep(int i10, int i11, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
        if (getChildCount() == 0) {
            stop();
            return;
        }
        this.mInterimTargetDx = a(this.mInterimTargetDx, i10);
        int iA = a(this.mInterimTargetDy, i11);
        this.mInterimTargetDy = iA;
        if (this.mInterimTargetDx == 0 && iA == 0) {
            updateActionForInterimTarget(aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void onStart() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void onStop() {
        if (this.mRunning) {
            this.mInterimTargetDx = 0;
            this.mInterimTargetDy = 0;
            this.mTargetVector = null;
            this.mRunning = false;
            this.mRecyclerView.mState.f3117a = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected abstract void onTargetFound(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar);

    @Override // androidx.recyclerview.widget.RecyclerView.z
    public void setTargetPosition(int i10) {
        this.mTargetPosition = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    void start(RecyclerView recyclerView, RecyclerView.p pVar) {
        if (!(recyclerView instanceof COUIRecyclerView)) {
            super.start(recyclerView, pVar);
            return;
        }
        COUIRecyclerView cOUIRecyclerView = (COUIRecyclerView) recyclerView;
        cOUIRecyclerView.getViewFlinger().g();
        if (this.mStarted) {
            Log.w(TAG, "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        this.mRecyclerView = cOUIRecyclerView;
        this.mLayoutManager = pVar;
        int i10 = this.mTargetPosition;
        if (i10 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        cOUIRecyclerView.mState.f3117a = i10;
        this.mRunning = true;
        this.mPendingInitialRun = true;
        this.mTargetView = findViewByPosition(getTargetPosition());
        onStart();
        this.mRecyclerView.getViewFlinger().e();
        this.mStarted = true;
    }

    final void stopLinearScroller() {
        if (this.mRunning) {
            this.mRunning = false;
            onStop();
            this.mRecyclerView.mState.f3117a = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }

    protected void updateActionForInterimTarget(RecyclerView.z.a aVar) {
        PointF pointFComputeScrollVectorForPosition = computeScrollVectorForPosition(getTargetPosition());
        if (pointFComputeScrollVectorForPosition == null || (pointFComputeScrollVectorForPosition.x == 0.0f && pointFComputeScrollVectorForPosition.y == 0.0f)) {
            aVar.b(getTargetPosition());
            stop();
            return;
        }
        normalize(pointFComputeScrollVectorForPosition);
        this.mTargetVector = pointFComputeScrollVectorForPosition;
        this.mInterimTargetDx = (int) (pointFComputeScrollVectorForPosition.x * 10000.0f);
        this.mInterimTargetDy = (int) (pointFComputeScrollVectorForPosition.y * 10000.0f);
        aVar.d((int) (this.mInterimTargetDx * TARGET_SEEK_EXTRA_SCROLL_RATIO), (int) (this.mInterimTargetDy * TARGET_SEEK_EXTRA_SCROLL_RATIO), (int) (calculateTimeForScrolling(TARGET_SEEK_SCROLL_DISTANCE_PX) * TARGET_SEEK_EXTRA_SCROLL_RATIO), this.mLinearInterpolator);
    }
}
