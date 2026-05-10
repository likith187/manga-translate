package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class u extends y {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;
    private t mHorizontalHelper;
    private t mVerticalHelper;

    class a extends p {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.p
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.p
        protected int calculateTimeForScrolling(int i10) {
            return Math.min(100, super.calculateTimeForScrolling(i10));
        }

        @Override // androidx.recyclerview.widget.p, androidx.recyclerview.widget.RecyclerView.z
        protected void onTargetFound(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
            u uVar = u.this;
            int[] iArrCalculateDistanceToFinalSnap = uVar.calculateDistanceToFinalSnap(uVar.mRecyclerView.getLayoutManager(), view);
            int i10 = iArrCalculateDistanceToFinalSnap[0];
            int i11 = iArrCalculateDistanceToFinalSnap[1];
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
            if (iCalculateTimeForDeceleration > 0) {
                aVar.d(i10, i11, iCalculateTimeForDeceleration, this.f3452b);
            }
        }
    }

    private int d(View view, t tVar) {
        return (tVar.g(view) + (tVar.e(view) / 2)) - (tVar.n() + (tVar.o() / 2));
    }

    private View e(RecyclerView.p pVar, t tVar) {
        int childCount = pVar.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int iN = tVar.n() + (tVar.o() / 2);
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = pVar.getChildAt(i11);
            int iAbs = Math.abs((tVar.g(childAt) + (tVar.e(childAt) / 2)) - iN);
            if (iAbs < i10) {
                view = childAt;
                i10 = iAbs;
            }
        }
        return view;
    }

    private t f(RecyclerView.p pVar) {
        t tVar = this.mHorizontalHelper;
        if (tVar == null || tVar.f3461a != pVar) {
            this.mHorizontalHelper = t.a(pVar);
        }
        return this.mHorizontalHelper;
    }

    private t g(RecyclerView.p pVar) {
        if (pVar.canScrollVertically()) {
            return h(pVar);
        }
        if (pVar.canScrollHorizontally()) {
            return f(pVar);
        }
        return null;
    }

    private t h(RecyclerView.p pVar) {
        t tVar = this.mVerticalHelper;
        if (tVar == null || tVar.f3461a != pVar) {
            this.mVerticalHelper = t.c(pVar);
        }
        return this.mVerticalHelper;
    }

    private boolean i(RecyclerView.p pVar, int i10, int i11) {
        return pVar.canScrollHorizontally() ? i10 > 0 : i11 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean j(RecyclerView.p pVar) {
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = pVar.getItemCount();
        if (!(pVar instanceof RecyclerView.z.b) || (pointFComputeScrollVectorForPosition = ((RecyclerView.z.b) pVar).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f;
    }

    @Override // androidx.recyclerview.widget.y
    public int[] calculateDistanceToFinalSnap(RecyclerView.p pVar, View view) {
        int[] iArr = new int[2];
        if (pVar.canScrollHorizontally()) {
            iArr[0] = d(view, f(pVar));
        } else {
            iArr[0] = 0;
        }
        if (pVar.canScrollVertically()) {
            iArr[1] = d(view, h(pVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.y
    protected RecyclerView.z createScroller(RecyclerView.p pVar) {
        if (pVar instanceof RecyclerView.z.b) {
            return new a(this.mRecyclerView.getContext());
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.y
    public View findSnapView(RecyclerView.p pVar) {
        if (pVar.canScrollVertically()) {
            return e(pVar, h(pVar));
        }
        if (pVar.canScrollHorizontally()) {
            return e(pVar, f(pVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.y
    public int findTargetSnapPosition(RecyclerView.p pVar, int i10, int i11) {
        t tVarG;
        int itemCount = pVar.getItemCount();
        if (itemCount == 0 || (tVarG = g(pVar)) == null) {
            return -1;
        }
        int childCount = pVar.getChildCount();
        View view = null;
        int i12 = Integer.MAX_VALUE;
        int i13 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = pVar.getChildAt(i14);
            if (childAt != null) {
                int iD = d(childAt, tVarG);
                if (iD <= 0 && iD > i13) {
                    view2 = childAt;
                    i13 = iD;
                }
                if (iD >= 0 && iD < i12) {
                    view = childAt;
                    i12 = iD;
                }
            }
        }
        boolean zI = i(pVar, i10, i11);
        if (zI && view != null) {
            return pVar.getPosition(view);
        }
        if (!zI && view2 != null) {
            return pVar.getPosition(view2);
        }
        if (zI) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = pVar.getPosition(view) + (j(pVar) == zI ? -1 : 1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }
}
