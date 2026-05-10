package com.coui.appcompat.viewpager;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class COUIFakeDrag {
    private int mActualDraggedDistance;
    private final COUIScrollEventAdapter mCOUIScrollEventAdapter;
    private long mFakeDragBeginTime;
    private int mMaximumVelocity;
    private final RecyclerView mRecyclerView;
    private float mRequestedDragDistance;
    private VelocityTracker mVelocityTracker;
    private final COUIViewPager2 mViewPager;

    COUIFakeDrag(COUIViewPager2 cOUIViewPager2, COUIScrollEventAdapter cOUIScrollEventAdapter, RecyclerView recyclerView) {
        this.mViewPager = cOUIViewPager2;
        this.mCOUIScrollEventAdapter = cOUIScrollEventAdapter;
        this.mRecyclerView = recyclerView;
    }

    private void addFakeMotionEvent(long j10, int i10, float f10, float f11) {
        MotionEvent motionEventObtain = MotionEvent.obtain(this.mFakeDragBeginTime, j10, i10, f10, f11, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
    }

    private void beginFakeVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        } else {
            this.mVelocityTracker = VelocityTracker.obtain();
            this.mMaximumVelocity = ViewConfiguration.get(this.mViewPager.getContext()).getScaledMaximumFlingVelocity();
        }
    }

    boolean beginFakeDrag() {
        if (this.mCOUIScrollEventAdapter.isDragging()) {
            return false;
        }
        this.mActualDraggedDistance = 0;
        this.mRequestedDragDistance = 0;
        this.mFakeDragBeginTime = SystemClock.uptimeMillis();
        beginFakeVelocityTracker();
        this.mCOUIScrollEventAdapter.notifyBeginFakeDrag();
        if (!this.mCOUIScrollEventAdapter.isIdle()) {
            this.mRecyclerView.stopScroll();
        }
        addFakeMotionEvent(this.mFakeDragBeginTime, 0, 0.0f, 0.0f);
        return true;
    }

    boolean endFakeDrag() {
        if (!this.mCOUIScrollEventAdapter.isFakeDragging()) {
            return false;
        }
        this.mCOUIScrollEventAdapter.notifyEndFakeDrag();
        VelocityTracker velocityTracker = this.mVelocityTracker;
        velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
        if (this.mRecyclerView.fling((int) velocityTracker.getXVelocity(), (int) velocityTracker.getYVelocity())) {
            return true;
        }
        this.mViewPager.snapToPageOpen();
        return true;
    }

    boolean fakeDragBy(float f10) {
        if (!this.mCOUIScrollEventAdapter.isFakeDragging()) {
            return false;
        }
        float f11 = this.mRequestedDragDistance - f10;
        this.mRequestedDragDistance = f11;
        int iRound = Math.round(f11 - this.mActualDraggedDistance);
        this.mActualDraggedDistance += iRound;
        long jUptimeMillis = SystemClock.uptimeMillis();
        boolean z10 = this.mViewPager.getOrientation() == 0;
        int i10 = z10 ? iRound : 0;
        int i11 = z10 ? 0 : iRound;
        float f12 = z10 ? this.mRequestedDragDistance : 0.0f;
        float f13 = z10 ? 0.0f : this.mRequestedDragDistance;
        this.mRecyclerView.scrollBy(i10, i11);
        addFakeMotionEvent(jUptimeMillis, 2, f12, f13);
        return true;
    }

    boolean isFakeDragging() {
        return this.mCOUIScrollEventAdapter.isFakeDragging();
    }
}
