package com.coui.appcompat.scroll;

import android.content.Context;
import android.graphics.PointF;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.t;

/* JADX INFO: loaded from: classes.dex */
public class COUIFlingLocateHelper {
    private static final int CENTER_ALIGN = 2;
    private static final int INVALID_ALIGN = 0;
    private static final int INVALID_POSITION = -1;
    private static final float ONE = 1.0f;
    private static final int START_ALIGN = 1;
    private static final String TAG = "COUIFlingLocateHelper";
    private Context mContext;
    private t mHorizontalHelper;
    private RecyclerView.p mLayoutManager;
    private OnCalculatePreChildDistanceListener mOnCalculatePreChildDistanceListener;
    private COUIRecyclerView mRecyclerView;
    private int mHorizontalItemAlign = 0;
    private boolean mEnableSnapToCenter = true;
    private Interpolator mCustomInterpolator = null;
    private int mCustomDuration = 0;
    private RecyclerView.u mAlignScrollListener = new RecyclerView.u() { // from class: com.coui.appcompat.scroll.COUIFlingLocateHelper.1
        boolean mScrolled = false;

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            super.onScrollStateChanged(recyclerView, i10);
            if (i10 == 0 && this.mScrolled) {
                this.mScrolled = false;
                COUIFlingLocateHelper.this.snapToTargetExistingView();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            if (i10 == 0 && i11 == 0) {
                return;
            }
            this.mScrolled = true;
        }
    };

    public interface OnCalculatePreChildDistanceListener {
        int onCalculatePreChildDistance();

        int onCalculateTargetPosition(int i10, int i11);
    }

    private float computeDistancePerChild(RecyclerView.p pVar, t tVar) {
        int childCount = pVar.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        int i10 = Integer.MIN_VALUE;
        int i11 = Integer.MAX_VALUE;
        View view2 = null;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = pVar.getChildAt(i12);
            int position = pVar.getPosition(childAt);
            if (position != -1 && position != pVar.getItemCount() - 1 && position != 0) {
                if (position < i11) {
                    view = childAt;
                    i11 = position;
                }
                if (position > i10) {
                    view2 = childAt;
                    i10 = position;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int iMax = Math.max(tVar.d(view), tVar.d(view2)) - Math.min(tVar.g(view), tVar.g(view2));
        if (iMax == 0) {
            return 1.0f;
        }
        return (iMax * 1.0f) / ((i10 - i11) + 1);
    }

    private View findCenterView(RecyclerView.p pVar, t tVar) {
        int childCount = pVar.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int iN = tVar.n() + (tVar.o() / 2);
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = pVar.getChildAt(i11);
            int iAbs = Math.abs((pVar.getDecoratedLeft(childAt) + (pVar.getDecoratedMeasuredWidth(childAt) / 2)) - iN);
            if (iAbs < i10) {
                view = childAt;
                i10 = iAbs;
            }
        }
        return view;
    }

    private View findStartView(RecyclerView.p pVar, t tVar) {
        int childCount = pVar.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        if (pVar instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) pVar;
            boolean z10 = linearLayoutManager.findFirstCompletelyVisibleItemPosition() == pVar.getItemCount() - 1;
            boolean z11 = linearLayoutManager.findLastCompletelyVisibleItemPosition() == pVar.getItemCount() - 1;
            if (z10 || z11) {
                return null;
            }
        }
        int i10 = isRtlMode(this.mContext) ? tVar.i() : tVar.n();
        int i11 = Integer.MAX_VALUE;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = pVar.getChildAt(i12);
            int iAbs = Math.abs((isRtlMode(this.mContext) ? tVar.d(childAt) : tVar.g(childAt)) - i10);
            if (iAbs < i11) {
                view = childAt;
                i11 = iAbs;
            }
        }
        return view;
    }

    private t getHorizontalHelper(RecyclerView.p pVar) {
        t tVar = this.mHorizontalHelper;
        if (tVar == null || tVar.k() != pVar) {
            this.mHorizontalHelper = t.a(pVar);
        }
        return this.mHorizontalHelper;
    }

    private RecyclerView.p getLayoutManager() {
        RecyclerView.p pVar = this.mLayoutManager;
        if (pVar == null || pVar != this.mRecyclerView.getLayoutManager()) {
            this.mLayoutManager = this.mRecyclerView.getLayoutManager();
        }
        return this.mLayoutManager;
    }

    private boolean isRtlMode(Context context) {
        return context != null && context.getResources().getConfiguration().getLayoutDirection() == 1;
    }

    private void smoothScrollBy(int i10, int i11) {
        int i12;
        Interpolator interpolator = this.mCustomInterpolator;
        if (interpolator == null || (i12 = this.mCustomDuration) == 0) {
            this.mRecyclerView.smoothScrollBy(i10, i11);
        } else {
            this.mRecyclerView.smoothScrollBy(i10, i11, interpolator, i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void snapToTargetExistingView() {
        RecyclerView.p layoutManager;
        View viewFindSnapView;
        int iG;
        int iN;
        if ((!this.mEnableSnapToCenter && this.mHorizontalItemAlign == 2) || (layoutManager = getLayoutManager()) == null || (viewFindSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int i10 = this.mHorizontalItemAlign;
        if (i10 == 2) {
            int iN2 = getHorizontalHelper(layoutManager).n() + (getHorizontalHelper(layoutManager).o() / 2);
            int itemCount = layoutManager.getItemCount() - 1;
            if (layoutManager.getPosition(viewFindSnapView) == 0) {
                iN2 = isRtlMode(this.mContext) ? getHorizontalHelper(layoutManager).i() - (getHorizontalHelper(layoutManager).e(viewFindSnapView) / 2) : getHorizontalHelper(layoutManager).n() + (getHorizontalHelper(layoutManager).e(viewFindSnapView) / 2);
            }
            if (layoutManager.getPosition(viewFindSnapView) == itemCount) {
                iN2 = isRtlMode(this.mContext) ? getHorizontalHelper(layoutManager).n() + (getHorizontalHelper(layoutManager).e(viewFindSnapView) / 2) : getHorizontalHelper(layoutManager).i() - (getHorizontalHelper(layoutManager).e(viewFindSnapView) / 2);
            }
            int iG2 = (getHorizontalHelper(layoutManager).g(viewFindSnapView) + (getHorizontalHelper(layoutManager).e(viewFindSnapView) / 2)) - iN2;
            if (Math.abs(iG2) > 1.0f) {
                smoothScrollBy(iG2, 0);
                return;
            }
            return;
        }
        if (i10 == 1) {
            if (isRtlMode(this.mContext)) {
                iG = getHorizontalHelper(layoutManager).d(viewFindSnapView);
                iN = getHorizontalHelper(layoutManager).i();
            } else {
                iG = getHorizontalHelper(layoutManager).g(viewFindSnapView);
                iN = getHorizontalHelper(layoutManager).n();
            }
            int i11 = iG - iN;
            if (Math.abs(i11) > 1.0f) {
                smoothScrollBy(i11, 0);
            }
        }
    }

    public void attachToRecyclerView(COUIRecyclerView cOUIRecyclerView) {
        this.mRecyclerView = cOUIRecyclerView;
        this.mContext = cOUIRecyclerView.getContext();
    }

    public void cancelHorizontalItemAlign() {
        this.mHorizontalItemAlign = 0;
        this.mRecyclerView.removeOnScrollListener(this.mAlignScrollListener);
    }

    public View findSnapView(RecyclerView.p pVar) {
        if (pVar.canScrollHorizontally()) {
            int i10 = this.mHorizontalItemAlign;
            if (i10 == 2) {
                return findCenterView(pVar, getHorizontalHelper(pVar));
            }
            if (i10 == 1) {
                return findStartView(pVar, getHorizontalHelper(pVar));
            }
        }
        return null;
    }

    public int getHorizontalItemAlign() {
        return this.mHorizontalItemAlign;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getTargetViewDistance(int i10) {
        View viewFindSnapView;
        float fOnCalculatePreChildDistance;
        int iRound;
        int iG;
        RecyclerView.p layoutManager = getLayoutManager();
        int itemCount = layoutManager.getItemCount();
        if (itemCount == 0 || (viewFindSnapView = findSnapView(layoutManager)) == null) {
            return -1;
        }
        int position = layoutManager.getPosition(viewFindSnapView);
        int i11 = itemCount - 1;
        PointF pointFComputeScrollVectorForPosition = ((RecyclerView.z.b) layoutManager).computeScrollVectorForPosition(i11);
        if (pointFComputeScrollVectorForPosition == null) {
            return -1;
        }
        if (layoutManager.canScrollHorizontally()) {
            fOnCalculatePreChildDistance = this.mOnCalculatePreChildDistanceListener != null ? r7.onCalculatePreChildDistance() : computeDistancePerChild(layoutManager, getHorizontalHelper(layoutManager));
            iRound = Math.round(i10 / fOnCalculatePreChildDistance);
            if (pointFComputeScrollVectorForPosition.x < 0.0f) {
                iRound = -iRound;
            }
        } else {
            fOnCalculatePreChildDistance = 1.0f;
            iRound = 0;
        }
        OnCalculatePreChildDistanceListener onCalculatePreChildDistanceListener = this.mOnCalculatePreChildDistanceListener;
        int iOnCalculateTargetPosition = onCalculatePreChildDistanceListener != null ? onCalculatePreChildDistanceListener.onCalculateTargetPosition(position, iRound) : iRound + position;
        if (iOnCalculateTargetPosition != position && iOnCalculateTargetPosition >= 0 && iOnCalculateTargetPosition < itemCount) {
            int i12 = this.mHorizontalItemAlign;
            if (i12 == 2) {
                View childAt = (layoutManager.getPosition(viewFindSnapView) != 0 || layoutManager.getChildCount() == 0) ? null : layoutManager.getChildAt(layoutManager.getChildCount() - 1);
                if (layoutManager.getPosition(viewFindSnapView) == i11 && layoutManager.getChildCount() != 0) {
                    childAt = layoutManager.getChildAt(0);
                }
                int iN = getHorizontalHelper(layoutManager).n() + (getHorizontalHelper(layoutManager).o() / 2);
                if (childAt != null) {
                    iG = getHorizontalHelper(layoutManager).g(childAt) + (getHorizontalHelper(layoutManager).e(childAt) / 2) + (isRtlMode(this.mContext) ? -((int) ((iOnCalculateTargetPosition - layoutManager.getPosition(childAt)) * fOnCalculatePreChildDistance)) : (int) ((iOnCalculateTargetPosition - layoutManager.getPosition(childAt)) * fOnCalculatePreChildDistance));
                } else {
                    iG = getHorizontalHelper(layoutManager).g(viewFindSnapView) + (getHorizontalHelper(layoutManager).e(viewFindSnapView) / 2) + (isRtlMode(this.mContext) ? -((int) ((iOnCalculateTargetPosition - layoutManager.getPosition(viewFindSnapView)) * fOnCalculatePreChildDistance)) : (int) ((iOnCalculateTargetPosition - layoutManager.getPosition(viewFindSnapView)) * fOnCalculatePreChildDistance));
                }
                return iG - iN;
            }
            if (i12 == 1) {
                int i13 = iOnCalculateTargetPosition - position;
                return ((isRtlMode(this.mContext) ? getHorizontalHelper(layoutManager).d(viewFindSnapView) : getHorizontalHelper(layoutManager).g(viewFindSnapView)) + (isRtlMode(this.mContext) ? -((int) (i13 * fOnCalculatePreChildDistance)) : (int) (i13 * fOnCalculatePreChildDistance))) - (isRtlMode(this.mContext) ? getHorizontalHelper(layoutManager).i() : getHorizontalHelper(layoutManager).n());
            }
        }
        return -1;
    }

    public void setCustomSmooth(Interpolator interpolator, int i10) {
        this.mCustomInterpolator = interpolator;
        this.mCustomDuration = i10;
    }

    public void setEnableSnapToCenter(boolean z10) {
        this.mEnableSnapToCenter = z10;
    }

    public void setHorizontalItemAlign(int i10) {
        this.mHorizontalItemAlign = i10;
        this.mRecyclerView.addOnScrollListener(this.mAlignScrollListener);
    }

    public void setOnCalculatePreChildDistanceListener(OnCalculatePreChildDistanceListener onCalculatePreChildDistanceListener) {
        this.mOnCalculatePreChildDistanceListener = onCalculatePreChildDistanceListener;
    }

    public void trySnapToTargetExistingView() {
        if (this.mHorizontalItemAlign != 0) {
            snapToTargetExistingView();
        }
    }
}
