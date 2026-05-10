package com.coui.appcompat.viewpager;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.core.view.m0;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.f;
import androidx.recyclerview.widget.u;
import androidx.viewpager2.R$styleable;
import androidx.viewpager2.widget.ViewPager2;
import com.coui.appcompat.scroll.COUlFrameRateScrollSceneHelper;
import com.oplus.aiunit.core.ConfigPackage;
import d0.h;
import d0.k;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import x0.a;

/* JADX INFO: loaded from: classes.dex */
public class COUIViewPager2 extends ViewGroup {
    private static final int DEFAULT_VIEWPAGER_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD = 500;
    public static final int OFFSCREEN_PAGE_LIMIT_DEFAULT = -1;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static boolean sFeatureEnhancedA11yEnabled = true;
    AccessibilityProvider mAccessibilityProvider;
    int mCurrentItem;
    private RecyclerView.j mCurrentItemDataSetChangeObserver;
    boolean mCurrentItemDirty;
    private int mDuration;
    private COUICompositeOnPageChangeCallback mExternalPageChangeCallbacks;
    private COUIFakeDrag mFakeDragger;
    private COUlFrameRateScrollSceneHelper mFrameRateHelper;
    private Interpolator mInterpolator;
    private LinearLayoutManager mLayoutManager;
    private int mOffscreenPageLimit;
    private COUICompositeOnPageChangeCallback mPageChangeEventDispatcher;
    private COUIPageTransformerAdapter mPageTransformerAdapter;
    private u mPagerSnapHelper;
    private Parcelable mPendingAdapterState;
    private int mPendingCurrentItem;
    RecyclerViewImpl mRecyclerView;
    private RecyclerView.m mSavedItemAnimator;
    private boolean mSavedItemAnimatorPresent;
    COUIScrollEventAdapter mScrollEventAdapter;
    private final Rect mTmpChildRect;
    private final Rect mTmpContainerRect;
    private boolean mUserInputEnabled;

    /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$1 */
    class AnonymousClass1 extends DataSetChangeObserver {
        AnonymousClass1() {
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.j
        public void onChanged() {
            COUIViewPager2 cOUIViewPager2 = COUIViewPager2.this;
            cOUIViewPager2.mCurrentItemDirty = true;
            cOUIViewPager2.mScrollEventAdapter.notifyDataSetChangeHappened();
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$2 */
    class AnonymousClass2 extends ViewPager2.i {
        AnonymousClass2() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.i
        public void onPageScrollStateChanged(int i10) {
            if (i10 == 0) {
                COUIViewPager2.this.updateCurrentItem();
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.i
        public void onPageSelected(int i10) {
            COUIViewPager2 cOUIViewPager2 = COUIViewPager2.this;
            if (cOUIViewPager2.mCurrentItem != i10) {
                cOUIViewPager2.mCurrentItem = i10;
                cOUIViewPager2.mAccessibilityProvider.onSetNewCurrentItem();
            }
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$3 */
    class AnonymousClass3 extends ViewPager2.i {
        AnonymousClass3() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.i
        public void onPageSelected(int i10) {
            COUIViewPager2.this.clearFocus();
            if (COUIViewPager2.this.hasFocus()) {
                COUIViewPager2.this.mRecyclerView.requestFocus(2);
            }
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$4 */
    class AnonymousClass4 implements RecyclerView.r {
        AnonymousClass4() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onChildViewAttachedToWindow(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) qVar).width != -1 || ((ViewGroup.MarginLayoutParams) qVar).height != -1) {
                throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onChildViewDetachedFromWindow(View view) {
        }
    }

    private abstract class AccessibilityProvider {
        private AccessibilityProvider() {
        }

        boolean handlesGetAccessibilityClassName() {
            return false;
        }

        boolean handlesLmPerformAccessibilityAction(int i10) {
            return false;
        }

        boolean handlesPerformAccessibilityAction(int i10, Bundle bundle) {
            return false;
        }

        boolean handlesRvGetAccessibilityClassName() {
            return false;
        }

        void onAttachAdapter(RecyclerView.h hVar) {
        }

        void onDetachAdapter(RecyclerView.h hVar) {
        }

        String onGetAccessibilityClassName() {
            throw new IllegalStateException("Not implemented.");
        }

        void onInitialize(COUICompositeOnPageChangeCallback cOUICompositeOnPageChangeCallback, RecyclerView recyclerView) {
        }

        void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        void onLmInitializeAccessibilityNodeInfo(h hVar) {
        }

        boolean onLmPerformAccessibilityAction(int i10) {
            throw new IllegalStateException("Not implemented.");
        }

        boolean onPerformAccessibilityAction(int i10, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        void onRestorePendingState() {
        }

        CharSequence onRvGetAccessibilityClassName() {
            throw new IllegalStateException("Not implemented.");
        }

        void onRvInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        }

        void onSetLayoutDirection() {
        }

        void onSetNewCurrentItem() {
        }

        void onSetOrientation() {
        }

        void onSetUserInputEnabled() {
        }

        /* synthetic */ AccessibilityProvider(COUIViewPager2 cOUIViewPager2, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    class BasicAccessibilityProvider extends AccessibilityProvider {
        BasicAccessibilityProvider() {
            super();
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public boolean handlesLmPerformAccessibilityAction(int i10) {
            return (i10 == 8192 || i10 == 4096) && !COUIViewPager2.this.isUserInputEnabled();
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public boolean handlesRvGetAccessibilityClassName() {
            return true;
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onLmInitializeAccessibilityNodeInfo(h hVar) {
            if (COUIViewPager2.this.isUserInputEnabled()) {
                return;
            }
            hVar.a0(h.a.f11475r);
            hVar.a0(h.a.f11474q);
            hVar.C0(false);
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public boolean onLmPerformAccessibilityAction(int i10) {
            if (handlesLmPerformAccessibilityAction(i10)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public CharSequence onRvGetAccessibilityClassName() {
            if (handlesRvGetAccessibilityClassName()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    private class COUILinearSmoothScrollerImpl extends f {
        public COUILinearSmoothScrollerImpl(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.f, androidx.recyclerview.widget.RecyclerView.z
        protected void onTargetFound(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
            int iCalculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
            int iCalculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration((int) Math.sqrt((iCalculateDxToMakeVisible * iCalculateDxToMakeVisible) + (iCalculateDyToMakeVisible * iCalculateDyToMakeVisible)));
            if (iCalculateTimeForDeceleration > 0) {
                if (!(aVar instanceof f.a)) {
                    aVar.d(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, COUIViewPager2.this.mDuration, COUIViewPager2.this.mInterpolator);
                } else if (COUIViewPager2.this.mDuration == Integer.MIN_VALUE) {
                    ((f.a) aVar).d(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
                } else {
                    ((f.a) aVar).d(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, COUIViewPager2.this.mDuration, COUIViewPager2.this.mInterpolator);
                }
            }
        }
    }

    private static abstract class DataSetChangeObserver extends RecyclerView.j {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public abstract void onChanged();

        public final void onItemRangeChanged(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeInserted(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeMoved(int i10, int i11, int i12) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeRemoved(int i10, int i11) {
            onChanged();
        }

        /* synthetic */ DataSetChangeObserver(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public final void onItemRangeChanged(int i10, int i11, Object obj) {
            onChanged();
        }
    }

    private class LinearLayoutManagerImpl extends LinearLayoutManager {
        LinearLayoutManagerImpl(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void calculateExtraLayoutSpace(RecyclerView.a0 a0Var, int[] iArr) {
            int offscreenPageLimit = COUIViewPager2.this.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.calculateExtraLayoutSpace(a0Var, iArr);
                return;
            }
            int pageSize = COUIViewPager2.this.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public void onInitializeAccessibilityNodeInfo(RecyclerView.w wVar, RecyclerView.a0 a0Var, h hVar) {
            super.onInitializeAccessibilityNodeInfo(wVar, a0Var, hVar);
            COUIViewPager2.this.mAccessibilityProvider.onLmInitializeAccessibilityNodeInfo(hVar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public void onScrollStateChanged(int i10) {
            super.onScrollStateChanged(i10);
            if (i10 == 0) {
                COUIViewPager2.this.mFrameRateHelper.setFrameRate(false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public boolean performAccessibilityAction(RecyclerView.w wVar, RecyclerView.a0 a0Var, int i10, Bundle bundle) {
            return COUIViewPager2.this.mAccessibilityProvider.handlesLmPerformAccessibilityAction(i10) ? COUIViewPager2.this.mAccessibilityProvider.onLmPerformAccessibilityAction(i10) : super.performAccessibilityAction(wVar, a0Var, i10, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            return false;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
        public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i10) {
            COUILinearSmoothScrollerImpl cOUILinearSmoothScrollerImpl = COUIViewPager2.this.new COUILinearSmoothScrollerImpl(recyclerView.getContext());
            cOUILinearSmoothScrollerImpl.setTargetPosition(i10);
            startSmoothScroll(cOUILinearSmoothScrollerImpl);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p
        public void startSmoothScroll(RecyclerView.z zVar) {
            super.startSmoothScroll(zVar);
            COUIViewPager2.this.mFrameRateHelper.setFrameRate(true);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OffscreenPageLimit {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    class PageAwareAccessibilityProvider extends AccessibilityProvider {
        private final k mActionPageBackward;
        private final k mActionPageForward;
        private RecyclerView.j mAdapterDataObserver;

        /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$PageAwareAccessibilityProvider$1 */
        class AnonymousClass1 implements k {
            AnonymousClass1() {
            }

            @Override // d0.k
            public boolean perform(View view, k.a aVar) {
                PageAwareAccessibilityProvider.this.setCurrentItemFromAccessibilityCommand(((COUIViewPager2) view).getCurrentItem() + 1);
                return true;
            }
        }

        /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$PageAwareAccessibilityProvider$2 */
        class AnonymousClass2 implements k {
            AnonymousClass2() {
            }

            @Override // d0.k
            public boolean perform(View view, k.a aVar) {
                PageAwareAccessibilityProvider.this.setCurrentItemFromAccessibilityCommand(((COUIViewPager2) view).getCurrentItem() - 1);
                return true;
            }
        }

        /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$PageAwareAccessibilityProvider$3 */
        class AnonymousClass3 extends DataSetChangeObserver {
            AnonymousClass3() {
            }

            @Override // com.coui.appcompat.viewpager.COUIViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.j
            public void onChanged() {
                PageAwareAccessibilityProvider.this.updatePageAccessibilityActions();
            }
        }

        PageAwareAccessibilityProvider() {
            super();
            this.mActionPageForward = new k() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.PageAwareAccessibilityProvider.1
                AnonymousClass1() {
                }

                @Override // d0.k
                public boolean perform(View view, k.a aVar) {
                    PageAwareAccessibilityProvider.this.setCurrentItemFromAccessibilityCommand(((COUIViewPager2) view).getCurrentItem() + 1);
                    return true;
                }
            };
            this.mActionPageBackward = new k() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.PageAwareAccessibilityProvider.2
                AnonymousClass2() {
                }

                @Override // d0.k
                public boolean perform(View view, k.a aVar) {
                    PageAwareAccessibilityProvider.this.setCurrentItemFromAccessibilityCommand(((COUIViewPager2) view).getCurrentItem() - 1);
                    return true;
                }
            };
        }

        private void addCollectionInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            int itemCount2;
            if (COUIViewPager2.this.getAdapter() == null) {
                itemCount = 0;
                itemCount2 = 0;
            } else if (COUIViewPager2.this.getOrientation() == 1) {
                itemCount = COUIViewPager2.this.getAdapter().getItemCount();
                itemCount2 = 0;
            } else {
                itemCount2 = COUIViewPager2.this.getAdapter().getItemCount();
                itemCount = 0;
            }
            h.M0(accessibilityNodeInfo).j0(h.e.b(itemCount, itemCount2, false, 0));
        }

        private void addScrollActions(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            RecyclerView.h adapter = COUIViewPager2.this.getAdapter();
            if (adapter == null || (itemCount = adapter.getItemCount()) == 0 || !COUIViewPager2.this.isUserInputEnabled()) {
                return;
            }
            if (COUIViewPager2.this.mCurrentItem > 0) {
                accessibilityNodeInfo.addAction(ConfigPackage.FRAME_SIZE_6);
            }
            if (COUIViewPager2.this.mCurrentItem < itemCount - 1) {
                accessibilityNodeInfo.addAction(ConfigPackage.FRAME_SIZE_5);
            }
            accessibilityNodeInfo.setScrollable(true);
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public boolean handlesGetAccessibilityClassName() {
            return true;
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public boolean handlesPerformAccessibilityAction(int i10, Bundle bundle) {
            return i10 == 8192 || i10 == 4096;
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onAttachAdapter(RecyclerView.h hVar) {
            updatePageAccessibilityActions();
            if (hVar != null) {
                hVar.registerAdapterDataObserver(this.mAdapterDataObserver);
            }
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onDetachAdapter(RecyclerView.h hVar) {
            if (hVar != null) {
                hVar.unregisterAdapterDataObserver(this.mAdapterDataObserver);
            }
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public String onGetAccessibilityClassName() {
            if (handlesGetAccessibilityClassName()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onInitialize(COUICompositeOnPageChangeCallback cOUICompositeOnPageChangeCallback, RecyclerView recyclerView) {
            m0.t0(recyclerView, 2);
            this.mAdapterDataObserver = new DataSetChangeObserver() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.PageAwareAccessibilityProvider.3
                AnonymousClass3() {
                }

                @Override // com.coui.appcompat.viewpager.COUIViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.j
                public void onChanged() {
                    PageAwareAccessibilityProvider.this.updatePageAccessibilityActions();
                }
            };
            if (m0.t(COUIViewPager2.this) == 0) {
                m0.t0(COUIViewPager2.this, 1);
            }
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            addCollectionInfo(accessibilityNodeInfo);
            addScrollActions(accessibilityNodeInfo);
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public boolean onPerformAccessibilityAction(int i10, Bundle bundle) {
            if (!handlesPerformAccessibilityAction(i10, bundle)) {
                throw new IllegalStateException();
            }
            setCurrentItemFromAccessibilityCommand(i10 == 8192 ? COUIViewPager2.this.getCurrentItem() - 1 : COUIViewPager2.this.getCurrentItem() + 1);
            return true;
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onRestorePendingState() {
            updatePageAccessibilityActions();
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onRvInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(COUIViewPager2.this);
            accessibilityEvent.setClassName(onGetAccessibilityClassName());
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onSetLayoutDirection() {
            updatePageAccessibilityActions();
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onSetNewCurrentItem() {
            updatePageAccessibilityActions();
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onSetOrientation() {
            updatePageAccessibilityActions();
        }

        @Override // com.coui.appcompat.viewpager.COUIViewPager2.AccessibilityProvider
        public void onSetUserInputEnabled() {
            updatePageAccessibilityActions();
        }

        void setCurrentItemFromAccessibilityCommand(int i10) {
            if (COUIViewPager2.this.isUserInputEnabled()) {
                COUIViewPager2.this.setCurrentItemInternal(i10, true);
            }
        }

        void updatePageAccessibilityActions() {
            int itemCount;
            COUIViewPager2 cOUIViewPager2 = COUIViewPager2.this;
            int i10 = R.id.accessibilityActionPageLeft;
            m0.c0(cOUIViewPager2, R.id.accessibilityActionPageLeft);
            m0.c0(cOUIViewPager2, R.id.accessibilityActionPageRight);
            m0.c0(cOUIViewPager2, R.id.accessibilityActionPageUp);
            m0.c0(cOUIViewPager2, R.id.accessibilityActionPageDown);
            if (COUIViewPager2.this.getAdapter() == null || (itemCount = COUIViewPager2.this.getAdapter().getItemCount()) == 0 || !COUIViewPager2.this.isUserInputEnabled()) {
                return;
            }
            if (COUIViewPager2.this.getOrientation() != 0) {
                if (COUIViewPager2.this.mCurrentItem < itemCount - 1) {
                    m0.e0(cOUIViewPager2, new h.a(R.id.accessibilityActionPageDown, null), null, this.mActionPageForward);
                }
                if (COUIViewPager2.this.mCurrentItem > 0) {
                    m0.e0(cOUIViewPager2, new h.a(R.id.accessibilityActionPageUp, null), null, this.mActionPageBackward);
                    return;
                }
                return;
            }
            boolean zIsRtl = COUIViewPager2.this.isRtl();
            int i11 = zIsRtl ? 16908360 : 16908361;
            if (zIsRtl) {
                i10 = 16908361;
            }
            if (COUIViewPager2.this.mCurrentItem < itemCount - 1) {
                m0.e0(cOUIViewPager2, new h.a(i11, null), null, this.mActionPageForward);
            }
            if (COUIViewPager2.this.mCurrentItem > 0) {
                m0.e0(cOUIViewPager2, new h.a(i10, null), null, this.mActionPageBackward);
            }
        }
    }

    private class PagerSnapHelperImpl extends u {
        private static final int MAX_SCROLL_ON_FLING_DURATION = 100;
        private static final float MILLISECONDS_PER_INCH = 100.0f;

        /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$PagerSnapHelperImpl$1 */
        class AnonymousClass1 extends COUILinearSmoothScrollerImpl {
            AnonymousClass1(Context context) {
                super(context);
            }

            @Override // androidx.recyclerview.widget.f
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return PagerSnapHelperImpl.MILLISECONDS_PER_INCH / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.f
            protected int calculateTimeForScrolling(int i10) {
                return Math.min(100, super.calculateTimeForScrolling(i10));
            }

            @Override // com.coui.appcompat.viewpager.COUIViewPager2.COUILinearSmoothScrollerImpl, androidx.recyclerview.widget.f, androidx.recyclerview.widget.RecyclerView.z
            protected void onTargetFound(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
                PagerSnapHelperImpl pagerSnapHelperImpl = PagerSnapHelperImpl.this;
                int[] iArrCalculateDistanceToFinalSnap = pagerSnapHelperImpl.calculateDistanceToFinalSnap(COUIViewPager2.this.mRecyclerView.getLayoutManager(), view);
                int i10 = iArrCalculateDistanceToFinalSnap[0];
                int i11 = iArrCalculateDistanceToFinalSnap[1];
                int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
                if (iCalculateTimeForDeceleration > 0) {
                    aVar.d(i10, i11, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
                }
            }
        }

        PagerSnapHelperImpl() {
        }

        @Override // androidx.recyclerview.widget.u, androidx.recyclerview.widget.y
        protected RecyclerView.z createScroller(RecyclerView.p pVar) {
            if (pVar instanceof RecyclerView.z.b) {
                return new COUILinearSmoothScrollerImpl(COUIViewPager2.this.mRecyclerView.getContext()) { // from class: com.coui.appcompat.viewpager.COUIViewPager2.PagerSnapHelperImpl.1
                    AnonymousClass1(Context context) {
                        super(context);
                    }

                    @Override // androidx.recyclerview.widget.f
                    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                        return PagerSnapHelperImpl.MILLISECONDS_PER_INCH / displayMetrics.densityDpi;
                    }

                    @Override // androidx.recyclerview.widget.f
                    protected int calculateTimeForScrolling(int i10) {
                        return Math.min(100, super.calculateTimeForScrolling(i10));
                    }

                    @Override // com.coui.appcompat.viewpager.COUIViewPager2.COUILinearSmoothScrollerImpl, androidx.recyclerview.widget.f, androidx.recyclerview.widget.RecyclerView.z
                    protected void onTargetFound(View view, RecyclerView.a0 a0Var, RecyclerView.z.a aVar) {
                        PagerSnapHelperImpl pagerSnapHelperImpl = PagerSnapHelperImpl.this;
                        int[] iArrCalculateDistanceToFinalSnap = pagerSnapHelperImpl.calculateDistanceToFinalSnap(COUIViewPager2.this.mRecyclerView.getLayoutManager(), view);
                        int i10 = iArrCalculateDistanceToFinalSnap[0];
                        int i11 = iArrCalculateDistanceToFinalSnap[1];
                        int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
                        if (iCalculateTimeForDeceleration > 0) {
                            aVar.d(i10, i11, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
                        }
                    }
                };
            }
            return null;
        }

        @Override // androidx.recyclerview.widget.u, androidx.recyclerview.widget.y
        public View findSnapView(RecyclerView.p pVar) {
            if (COUIViewPager2.this.isFakeDragging()) {
                return null;
            }
            return super.findSnapView(pVar);
        }
    }

    class RecyclerViewImpl extends COUIRecyclerView {
        RecyclerViewImpl(Context context) {
            super(context);
            super.setDispatchEventWhileOverScrolling(true);
            setDispatchEventWhileScrollingThreshold(500);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public CharSequence getAccessibilityClassName() {
            return COUIViewPager2.this.mAccessibilityProvider.handlesRvGetAccessibilityClassName() ? COUIViewPager2.this.mAccessibilityProvider.onRvGetAccessibilityClassName() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(COUIViewPager2.this.mCurrentItem);
            accessibilityEvent.setToIndex(COUIViewPager2.this.mCurrentItem);
            COUIViewPager2.this.mAccessibilityProvider.onRvInitializeAccessibilityEvent(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.COUIRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return COUIViewPager2.this.isUserInputEnabled() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.COUIRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return COUIViewPager2.this.isUserInputEnabled() && super.onTouchEvent(motionEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollState {
    }

    private static class SmoothScrollToPosition implements Runnable {
        private final int mPosition;
        private final RecyclerView mRecyclerView;

        SmoothScrollToPosition(int i10, RecyclerView recyclerView) {
            this.mPosition = i10;
            this.mRecyclerView = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRecyclerView.smoothScrollToPosition(this.mPosition);
        }
    }

    public COUIViewPager2(Context context) {
        super(context);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new COUICompositeOnPageChangeCallback(3);
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new DataSetChangeObserver() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.1
            AnonymousClass1() {
            }

            @Override // com.coui.appcompat.viewpager.COUIViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.j
            public void onChanged() {
                COUIViewPager2 cOUIViewPager2 = COUIViewPager2.this;
                cOUIViewPager2.mCurrentItemDirty = true;
                cOUIViewPager2.mScrollEventAdapter.notifyDataSetChangeHappened();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        this.mInterpolator = new LinearInterpolator();
        this.mDuration = 500;
        initialize(context, null);
    }

    private RecyclerView.r enforceChildFillListener() {
        return new RecyclerView.r() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.4
            AnonymousClass4() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.r
            public void onChildViewAttachedToWindow(View view) {
                RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) qVar).width != -1 || ((ViewGroup.MarginLayoutParams) qVar).height != -1) {
                    throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.r
            public void onChildViewDetachedFromWindow(View view) {
            }
        };
    }

    private void initialize(Context context, AttributeSet attributeSet) {
        this.mAccessibilityProvider = sFeatureEnhancedA11yEnabled ? new PageAwareAccessibilityProvider() : new BasicAccessibilityProvider();
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.mRecyclerView = recyclerViewImpl;
        recyclerViewImpl.setId(m0.i());
        this.mRecyclerView.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl(context);
        this.mLayoutManager = linearLayoutManagerImpl;
        this.mRecyclerView.setLayoutManager(linearLayoutManagerImpl);
        this.mRecyclerView.setScrollingTouchSlop(1);
        setOrientation(context, attributeSet);
        this.mRecyclerView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.mRecyclerView.addOnChildAttachStateChangeListener(enforceChildFillListener());
        COUIScrollEventAdapter cOUIScrollEventAdapter = new COUIScrollEventAdapter(this);
        this.mScrollEventAdapter = cOUIScrollEventAdapter;
        this.mFakeDragger = new COUIFakeDrag(this, cOUIScrollEventAdapter, this.mRecyclerView);
        PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
        this.mPagerSnapHelper = pagerSnapHelperImpl;
        pagerSnapHelperImpl.attachToRecyclerView(this.mRecyclerView);
        this.mRecyclerView.addOnScrollListener(this.mScrollEventAdapter);
        COUICompositeOnPageChangeCallback cOUICompositeOnPageChangeCallback = new COUICompositeOnPageChangeCallback(3);
        this.mPageChangeEventDispatcher = cOUICompositeOnPageChangeCallback;
        this.mScrollEventAdapter.setOnPageChangeCallback(cOUICompositeOnPageChangeCallback);
        AnonymousClass2 anonymousClass2 = new ViewPager2.i() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.2
            AnonymousClass2() {
            }

            @Override // androidx.viewpager2.widget.ViewPager2.i
            public void onPageScrollStateChanged(int i10) {
                if (i10 == 0) {
                    COUIViewPager2.this.updateCurrentItem();
                }
            }

            @Override // androidx.viewpager2.widget.ViewPager2.i
            public void onPageSelected(int i10) {
                COUIViewPager2 cOUIViewPager2 = COUIViewPager2.this;
                if (cOUIViewPager2.mCurrentItem != i10) {
                    cOUIViewPager2.mCurrentItem = i10;
                    cOUIViewPager2.mAccessibilityProvider.onSetNewCurrentItem();
                }
            }
        };
        AnonymousClass3 anonymousClass3 = new ViewPager2.i() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.3
            AnonymousClass3() {
            }

            @Override // androidx.viewpager2.widget.ViewPager2.i
            public void onPageSelected(int i10) {
                COUIViewPager2.this.clearFocus();
                if (COUIViewPager2.this.hasFocus()) {
                    COUIViewPager2.this.mRecyclerView.requestFocus(2);
                }
            }
        };
        this.mPageChangeEventDispatcher.addOnPageChangeCallback(anonymousClass2);
        this.mPageChangeEventDispatcher.addOnPageChangeCallback(anonymousClass3);
        this.mAccessibilityProvider.onInitialize(this.mPageChangeEventDispatcher, this.mRecyclerView);
        this.mPageChangeEventDispatcher.addOnPageChangeCallback(this.mExternalPageChangeCallbacks);
        COUIPageTransformerAdapter cOUIPageTransformerAdapter = new COUIPageTransformerAdapter(this.mLayoutManager);
        this.mPageTransformerAdapter = cOUIPageTransformerAdapter;
        this.mPageChangeEventDispatcher.addOnPageChangeCallback(cOUIPageTransformerAdapter);
        RecyclerViewImpl recyclerViewImpl2 = this.mRecyclerView;
        attachViewToParent(recyclerViewImpl2, 0, recyclerViewImpl2.getLayoutParams());
        this.mFrameRateHelper = new COUlFrameRateScrollSceneHelper(true);
    }

    private void registerCurrentItemDataSetTracker(RecyclerView.h hVar) {
        if (hVar != null) {
            hVar.registerAdapterDataObserver(this.mCurrentItemDataSetChangeObserver);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void restorePendingState() {
        RecyclerView.h adapter;
        if (this.mPendingCurrentItem == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.mPendingAdapterState;
        if (parcelable != null) {
            if (adapter instanceof a) {
                ((a) adapter).restoreState(parcelable);
            }
            this.mPendingAdapterState = null;
        }
        int iMax = Math.max(0, Math.min(this.mPendingCurrentItem, adapter.getItemCount() - 1));
        this.mCurrentItem = iMax;
        this.mPendingCurrentItem = -1;
        this.mRecyclerView.scrollToPosition(iMax);
        this.mAccessibilityProvider.onRestorePendingState();
    }

    private void setOrientation(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ViewPager2);
        saveAttributeDataForStyleable(context, R$styleable.ViewPager2, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(R$styleable.ViewPager2_android_orientation, 0));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void unregisterCurrentItemDataSetTracker(RecyclerView.h hVar) {
        if (hVar != null) {
            hVar.unregisterAdapterDataObserver(this.mCurrentItemDataSetChangeObserver);
        }
    }

    public void addItemDecoration(RecyclerView.o oVar) {
        this.mRecyclerView.addItemDecoration(oVar);
    }

    public boolean beginFakeDrag() {
        return this.mFakeDragger.beginFakeDrag();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        return this.mRecyclerView.canScrollHorizontally(i10);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        return this.mRecyclerView.canScrollVertically(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i10 = ((SavedState) parcelable).mRecyclerViewId;
            sparseArray.put(this.mRecyclerView.getId(), sparseArray.get(i10));
            sparseArray.remove(i10);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        restorePendingState();
    }

    public void enableFrameRate(boolean z10) {
        this.mFrameRateHelper.enableFrameRate(z10);
    }

    public boolean endFakeDrag() {
        return this.mFakeDragger.endFakeDrag();
    }

    public boolean fakeDragBy(@SuppressLint({"SupportAnnotationUsage"}) float f10) {
        return this.mFakeDragger.fakeDragBy(f10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return this.mAccessibilityProvider.handlesGetAccessibilityClassName() ? this.mAccessibilityProvider.onGetAccessibilityClassName() : super.getAccessibilityClassName();
    }

    public RecyclerView.h getAdapter() {
        return this.mRecyclerView.getAdapter();
    }

    public int getCurrentItem() {
        return this.mCurrentItem;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public RecyclerView.o getItemDecorationAt(int i10) {
        return this.mRecyclerView.getItemDecorationAt(i10);
    }

    public int getItemDecorationCount() {
        return this.mRecyclerView.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    @SuppressLint({"WrongConstant"})
    public int getOrientation() {
        return this.mLayoutManager.getOrientation();
    }

    int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        if (getOrientation() == 0) {
            height = recyclerViewImpl.getWidth() - recyclerViewImpl.getPaddingLeft();
            paddingBottom = recyclerViewImpl.getPaddingRight();
        } else {
            height = recyclerViewImpl.getHeight() - recyclerViewImpl.getPaddingTop();
            paddingBottom = recyclerViewImpl.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.mScrollEventAdapter.getScrollState();
    }

    public void invalidateItemDecorations() {
        this.mRecyclerView.invalidateItemDecorations();
    }

    public boolean isFakeDragging() {
        return this.mFakeDragger.isFakeDragging();
    }

    public boolean isRtl() {
        return this.mLayoutManager.getLayoutDirection() == 1;
    }

    public boolean isUserInputEnabled() {
        return this.mUserInputEnabled;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.mAccessibilityProvider.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredWidth = this.mRecyclerView.getMeasuredWidth();
        int measuredHeight = this.mRecyclerView.getMeasuredHeight();
        this.mTmpContainerRect.left = getPaddingLeft();
        this.mTmpContainerRect.right = (i12 - i10) - getPaddingRight();
        this.mTmpContainerRect.top = getPaddingTop();
        this.mTmpContainerRect.bottom = (i13 - i11) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.mTmpContainerRect, this.mTmpChildRect);
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        Rect rect = this.mTmpChildRect;
        recyclerViewImpl.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.mCurrentItemDirty) {
            updateCurrentItem();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        measureChild(this.mRecyclerView, i10, i11);
        int measuredWidth = this.mRecyclerView.getMeasuredWidth();
        int measuredHeight = this.mRecyclerView.getMeasuredHeight();
        int measuredState = this.mRecyclerView.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, measuredState), View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mPendingCurrentItem = savedState.mCurrentItem;
        this.mPendingAdapterState = savedState.mAdapterState;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mRecyclerViewId = this.mRecyclerView.getId();
        int i10 = this.mPendingCurrentItem;
        if (i10 == -1) {
            i10 = this.mCurrentItem;
        }
        savedState.mCurrentItem = i10;
        Parcelable parcelable = this.mPendingAdapterState;
        if (parcelable != null) {
            savedState.mAdapterState = parcelable;
        } else {
            Object adapter = this.mRecyclerView.getAdapter();
            if (adapter instanceof a) {
                savedState.mAdapterState = ((a) adapter).saveState();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 == 0) {
            snapToPage();
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i10, Bundle bundle) {
        return this.mAccessibilityProvider.handlesPerformAccessibilityAction(i10, bundle) ? this.mAccessibilityProvider.onPerformAccessibilityAction(i10, bundle) : super.performAccessibilityAction(i10, bundle);
    }

    public void registerOnPageChangeCallback(ViewPager2.i iVar) {
        this.mExternalPageChangeCallbacks.addOnPageChangeCallback(iVar);
    }

    public void removeItemDecoration(RecyclerView.o oVar) {
        this.mRecyclerView.removeItemDecoration(oVar);
    }

    public void removeItemDecorationAt(int i10) {
        this.mRecyclerView.removeItemDecorationAt(i10);
    }

    public void requestTransform() {
        if (this.mPageTransformerAdapter.getPageTransformer() == null) {
            return;
        }
        double relativeScrollPosition = this.mScrollEventAdapter.getRelativeScrollPosition();
        int i10 = (int) relativeScrollPosition;
        float f10 = (float) (relativeScrollPosition - ((double) i10));
        this.mPageTransformerAdapter.onPageScrolled(i10, f10, Math.round(getPageSize() * f10));
    }

    public void setAdapter(RecyclerView.h hVar) {
        RecyclerView.h adapter = this.mRecyclerView.getAdapter();
        this.mAccessibilityProvider.onDetachAdapter(adapter);
        unregisterCurrentItemDataSetTracker(adapter);
        this.mRecyclerView.setAdapter(hVar);
        this.mCurrentItem = 0;
        restorePendingState();
        this.mAccessibilityProvider.onAttachAdapter(hVar);
        registerCurrentItemDataSetTracker(hVar);
    }

    public void setCurrentItem(int i10) {
        setCurrentItem(i10, true);
    }

    void setCurrentItemInternal(int i10, boolean z10) {
        RecyclerView.h adapter = getAdapter();
        if (adapter == null) {
            if (this.mPendingCurrentItem != -1) {
                this.mPendingCurrentItem = Math.max(i10, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i10, 0), adapter.getItemCount() - 1);
        if (iMin == this.mCurrentItem && this.mScrollEventAdapter.isIdle()) {
            return;
        }
        int i11 = this.mCurrentItem;
        if (iMin == i11 && z10) {
            return;
        }
        double relativeScrollPosition = i11;
        this.mCurrentItem = iMin;
        this.mAccessibilityProvider.onSetNewCurrentItem();
        if (!this.mScrollEventAdapter.isIdle()) {
            relativeScrollPosition = this.mScrollEventAdapter.getRelativeScrollPosition();
        }
        this.mScrollEventAdapter.notifyProgrammaticScroll(iMin, z10);
        if (!z10) {
            this.mRecyclerView.scrollToPosition(iMin);
            return;
        }
        double d10 = iMin;
        if (Math.abs(d10 - relativeScrollPosition) <= 3.0d) {
            this.mRecyclerView.smoothScrollToPosition(iMin);
            return;
        }
        this.mRecyclerView.scrollToPosition(d10 > relativeScrollPosition ? iMin - 3 : iMin + 3);
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        recyclerViewImpl.post(new SmoothScrollToPosition(iMin, recyclerViewImpl));
    }

    public void setDispatchEventWhileOverScrolling(boolean z10) {
        this.mRecyclerView.setDispatchEventWhileOverScrolling(z10);
    }

    public void setDispatchEventWhileScrolling(boolean z10) {
        RecyclerViewImpl recyclerViewImpl = this.mRecyclerView;
        if (recyclerViewImpl != null) {
            recyclerViewImpl.setDispatchEventWhileScrolling(z10);
        }
    }

    public void setDuration(int i10) {
        this.mDuration = i10;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        super.setLayoutDirection(i10);
        this.mAccessibilityProvider.onSetLayoutDirection();
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1 && i10 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.mOffscreenPageLimit = i10;
        this.mRecyclerView.requestLayout();
    }

    public void setOverScrollEnable(boolean z10) {
        this.mRecyclerView.setOverScrollEnable(z10);
    }

    public void setPageTransformer(ViewPager2.k kVar) {
        if (kVar != null) {
            if (!this.mSavedItemAnimatorPresent) {
                this.mSavedItemAnimator = this.mRecyclerView.getItemAnimator();
                this.mSavedItemAnimatorPresent = true;
            }
            this.mRecyclerView.setItemAnimator(null);
        } else if (this.mSavedItemAnimatorPresent) {
            this.mRecyclerView.setItemAnimator(this.mSavedItemAnimator);
            this.mSavedItemAnimator = null;
            this.mSavedItemAnimatorPresent = false;
        }
        if (kVar == this.mPageTransformerAdapter.getPageTransformer()) {
            return;
        }
        this.mPageTransformerAdapter.setPageTransformer(kVar);
        requestTransform();
    }

    public void setUserInputEnabled(boolean z10) {
        this.mUserInputEnabled = z10;
        this.mAccessibilityProvider.onSetUserInputEnabled();
    }

    void snapToPage() {
        View viewFindSnapView = this.mPagerSnapHelper.findSnapView(this.mLayoutManager);
        if (viewFindSnapView == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = this.mPagerSnapHelper.calculateDistanceToFinalSnap(this.mLayoutManager, viewFindSnapView);
        int i10 = iArrCalculateDistanceToFinalSnap[0];
        if (i10 == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(i10, iArrCalculateDistanceToFinalSnap[1]);
    }

    public void snapToPageOpen() {
        snapToPage();
    }

    public void unregisterOnPageChangeCallback(ViewPager2.i iVar) {
        this.mExternalPageChangeCallbacks.removeOnPageChangeCallback(iVar);
    }

    void updateCurrentItem() {
        u uVar = this.mPagerSnapHelper;
        if (uVar == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View viewFindSnapView = uVar.findSnapView(this.mLayoutManager);
        if (viewFindSnapView == null) {
            return;
        }
        int position = this.mLayoutManager.getPosition(viewFindSnapView);
        if (position != this.mCurrentItem && getScrollState() == 0) {
            this.mPageChangeEventDispatcher.onPageSelected(position);
        }
        this.mCurrentItemDirty = false;
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.SavedState.1
            AnonymousClass1() {
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }
        };
        Parcelable mAdapterState;
        int mCurrentItem;
        int mRecyclerViewId;

        /* JADX INFO: renamed from: com.coui.appcompat.viewpager.COUIViewPager2$SavedState$1 */
        class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            AnonymousClass1() {
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readValues(parcel, classLoader);
        }

        private void readValues(Parcel parcel, ClassLoader classLoader) {
            this.mRecyclerViewId = parcel.readInt();
            this.mCurrentItem = parcel.readInt();
            this.mAdapterState = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mRecyclerViewId);
            parcel.writeInt(this.mCurrentItem);
            parcel.writeParcelable(this.mAdapterState, i10);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            readValues(parcel, null);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void addItemDecoration(RecyclerView.o oVar, int i10) {
        this.mRecyclerView.addItemDecoration(oVar, i10);
    }

    public void setCurrentItem(int i10, boolean z10) {
        if (isFakeDragging()) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        setCurrentItemInternal(i10, z10);
    }

    public void setOrientation(int i10) {
        this.mLayoutManager.setOrientation(i10);
        this.mAccessibilityProvider.onSetOrientation();
    }

    public COUIViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new COUICompositeOnPageChangeCallback(3);
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new DataSetChangeObserver() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.1
            AnonymousClass1() {
            }

            @Override // com.coui.appcompat.viewpager.COUIViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.j
            public void onChanged() {
                COUIViewPager2 cOUIViewPager2 = COUIViewPager2.this;
                cOUIViewPager2.mCurrentItemDirty = true;
                cOUIViewPager2.mScrollEventAdapter.notifyDataSetChangeHappened();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        this.mInterpolator = new LinearInterpolator();
        this.mDuration = 500;
        initialize(context, attributeSet);
    }

    public COUIViewPager2(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new COUICompositeOnPageChangeCallback(3);
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new DataSetChangeObserver() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.1
            AnonymousClass1() {
            }

            @Override // com.coui.appcompat.viewpager.COUIViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.j
            public void onChanged() {
                COUIViewPager2 cOUIViewPager2 = COUIViewPager2.this;
                cOUIViewPager2.mCurrentItemDirty = true;
                cOUIViewPager2.mScrollEventAdapter.notifyDataSetChangeHappened();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        this.mInterpolator = new LinearInterpolator();
        this.mDuration = 500;
        initialize(context, attributeSet);
    }

    public COUIViewPager2(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new COUICompositeOnPageChangeCallback(3);
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new DataSetChangeObserver() { // from class: com.coui.appcompat.viewpager.COUIViewPager2.1
            AnonymousClass1() {
            }

            @Override // com.coui.appcompat.viewpager.COUIViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.j
            public void onChanged() {
                COUIViewPager2 cOUIViewPager2 = COUIViewPager2.this;
                cOUIViewPager2.mCurrentItemDirty = true;
                cOUIViewPager2.mScrollEventAdapter.notifyDataSetChangeHappened();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        this.mInterpolator = new LinearInterpolator();
        this.mDuration = 500;
        initialize(context, attributeSet);
    }
}
