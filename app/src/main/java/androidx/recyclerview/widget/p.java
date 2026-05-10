package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class p extends RecyclerView.z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected PointF f3453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DisplayMetrics f3454d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f3456f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final LinearInterpolator f3451a = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final DecelerateInterpolator f3452b = new DecelerateInterpolator();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3455e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f3457g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f3458h = 0;

    public p(Context context) {
        this.f3454d = context.getResources().getDisplayMetrics();
    }

    private int a(int i10, int i11) {
        int i12 = i10 - i11;
        if (i10 * i12 <= 0) {
            return 0;
        }
        return i12;
    }

    private float b() {
        if (!this.f3455e) {
            this.f3456f = calculateSpeedPerPixel(this.f3454d);
            this.f3455e = true;
        }
        return this.f3456f;
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
        return 25.0f / displayMetrics.densityDpi;
    }

    protected int calculateTimeForDeceleration(int i10) {
        return (int) Math.ceil(((double) calculateTimeForScrolling(i10)) / 0.3356d);
    }

    protected int calculateTimeForScrolling(int i10) {
        return (int) Math.ceil(Math.abs(i10) * b());
    }

    protected int getHorizontalSnapPreference() {
        PointF pointF = this.f3453c;
        if (pointF != null) {
            float f10 = pointF.x;
            if (f10 != 0.0f) {
                return f10 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    protected int getVerticalSnapPreference() {
        PointF pointF = this.f3453c;
        if (pointF != null) {
            float f10 = pointF.y;
            if (f10 != 0.0f) {
                return f10 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void onSeekTargetStep(int i10, int i11, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
        if (getChildCount() == 0) {
            stop();
            return;
        }
        this.f3457g = a(this.f3457g, i10);
        int iA = a(this.f3458h, i11);
        this.f3458h = iA;
        if (this.f3457g == 0 && iA == 0) {
            updateActionForInterimTarget(aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void onStart() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void onStop() {
        this.f3458h = 0;
        this.f3457g = 0;
        this.f3453c = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z
    protected void onTargetFound(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
        int iCalculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
        int iCalculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
        int iCalculateTimeForDeceleration = calculateTimeForDeceleration((int) Math.sqrt((iCalculateDxToMakeVisible * iCalculateDxToMakeVisible) + (iCalculateDyToMakeVisible * iCalculateDyToMakeVisible)));
        if (iCalculateTimeForDeceleration > 0) {
            aVar.d(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iCalculateTimeForDeceleration, this.f3452b);
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
        this.f3453c = pointFComputeScrollVectorForPosition;
        this.f3457g = (int) (pointFComputeScrollVectorForPosition.x * 10000.0f);
        this.f3458h = (int) (pointFComputeScrollVectorForPosition.y * 10000.0f);
        aVar.d((int) (this.f3457g * 1.2f), (int) (this.f3458h * 1.2f), (int) (calculateTimeForScrolling(10000) * 1.2f), this.f3451a);
    }
}
