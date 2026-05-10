package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.view.f0;
import androidx.core.view.m0;
import androidx.core.view.p0;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.R$attr;
import androidx.recyclerview.R$dimen;
import androidx.recyclerview.R$styleable;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.a0;
import androidx.recyclerview.widget.i;
import androidx.recyclerview.widget.m;
import androidx.recyclerview.widget.v;
import androidx.recyclerview.widget.z;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.protocol.AIProtocol;
import d0.h;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements f0, androidx.core.view.v {
    static final boolean DEBUG = false;
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static final Interpolator sQuinticInterpolator;
    androidx.recyclerview.widget.v mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    h mAdapter;
    androidx.recyclerview.widget.a mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private k mChildDrawingOrderCallback;
    androidx.recyclerview.widget.i mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private l mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    androidx.recyclerview.widget.m mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private t mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    m mItemAnimator;
    private m.a mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<o> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    p mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final y mObserver;
    private List<r> mOnChildAttachStateListeners;
    private s mOnFlingListener;
    private final ArrayList<t> mOnItemTouchListeners;
    final List<d0> mPendingAccessibilityImportanceChange;
    SavedState mPendingSavedState;
    boolean mPostedAnimatorRunner;
    m.b mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final w mRecycler;
    x mRecyclerListener;
    final List<x> mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private u mScrollListener;
    private List<u> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private androidx.core.view.w mScrollingChildHelper;
    final a0 mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final c0 mViewFlinger;
    private final a0.b mViewInfoProcessCallback;
    final androidx.recyclerview.widget.a0 mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST = false;
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    static final boolean POST_UPDATES_ON_ANIMATION = true;
    static final boolean ALLOW_THREAD_GAP_WORK = true;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD = false;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.mIsAttached) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.mLayoutSuppressed) {
                recyclerView2.mLayoutWasDefered = true;
            } else {
                recyclerView2.consumePendingUpdateOperations();
            }
        }
    }

    public static class a0 {

        /* JADX INFO: renamed from: b */
        private SparseArray f3118b;

        /* JADX INFO: renamed from: m */
        int f3129m;

        /* JADX INFO: renamed from: n */
        long f3130n;

        /* JADX INFO: renamed from: o */
        int f3131o;

        /* JADX INFO: renamed from: p */
        int f3132p;

        /* JADX INFO: renamed from: q */
        int f3133q;

        /* JADX INFO: renamed from: a */
        int f3117a = -1;

        /* JADX INFO: renamed from: c */
        int f3119c = 0;

        /* JADX INFO: renamed from: d */
        int f3120d = 0;

        /* JADX INFO: renamed from: e */
        int f3121e = 1;

        /* JADX INFO: renamed from: f */
        int f3122f = 0;

        /* JADX INFO: renamed from: g */
        boolean f3123g = false;

        /* JADX INFO: renamed from: h */
        boolean f3124h = false;

        /* JADX INFO: renamed from: i */
        boolean f3125i = false;

        /* JADX INFO: renamed from: j */
        boolean f3126j = false;

        /* JADX INFO: renamed from: k */
        boolean f3127k = false;

        /* JADX INFO: renamed from: l */
        boolean f3128l = false;

        void a(int i10) {
            if ((this.f3121e & i10) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i10) + " but it is " + Integer.toBinaryString(this.f3121e));
        }

        public int b() {
            return this.f3124h ? this.f3119c - this.f3120d : this.f3122f;
        }

        public int c() {
            return this.f3117a;
        }

        public boolean d() {
            return this.f3117a != -1;
        }

        public boolean e() {
            return this.f3124h;
        }

        void f(h hVar) {
            this.f3121e = 1;
            this.f3122f = hVar.getItemCount();
            this.f3124h = false;
            this.f3125i = false;
            this.f3126j = false;
        }

        public boolean g() {
            return this.f3128l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f3117a + ", mData=" + this.f3118b + ", mItemCount=" + this.f3122f + ", mIsMeasuring=" + this.f3126j + ", mPreviousLayoutItemCount=" + this.f3119c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f3120d + ", mStructureChanged=" + this.f3123g + ", mInPreLayout=" + this.f3124h + ", mRunSimpleAnimations=" + this.f3127k + ", mRunPredictiveAnimations=" + this.f3128l + AbstractJsonLexerKt.END_OBJ;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m mVar = RecyclerView.this.mItemAnimator;
            if (mVar != null) {
                mVar.u();
            }
            RecyclerView.this.mPostedAnimatorRunner = false;
        }
    }

    public static abstract class b0 {
    }

    class c implements Interpolator {
        c() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    class c0 implements Runnable {

        /* JADX INFO: renamed from: a */
        private int f3135a;

        /* JADX INFO: renamed from: b */
        private int f3136b;

        /* JADX INFO: renamed from: c */
        OverScroller f3137c;

        /* JADX INFO: renamed from: f */
        Interpolator f3138f;

        /* JADX INFO: renamed from: h */
        private boolean f3139h;

        /* JADX INFO: renamed from: i */
        private boolean f3140i;

        c0() {
            Interpolator interpolator = RecyclerView.sQuinticInterpolator;
            this.f3138f = interpolator;
            this.f3139h = false;
            this.f3140i = false;
            this.f3137c = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private int a(int i10, int i11) {
            int iAbs = Math.abs(i10);
            int iAbs2 = Math.abs(i11);
            boolean z10 = iAbs > iAbs2;
            RecyclerView recyclerView = RecyclerView.this;
            int width = z10 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z10) {
                iAbs = iAbs2;
            }
            return Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }

        private void c() {
            RecyclerView.this.removeCallbacks(this);
            m0.a0(RecyclerView.this, this);
        }

        public void b(int i10, int i11) {
            RecyclerView.this.setScrollState(2);
            this.f3136b = 0;
            this.f3135a = 0;
            Interpolator interpolator = this.f3138f;
            Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
            if (interpolator != interpolator2) {
                this.f3138f = interpolator2;
                this.f3137c = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f3137c.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            d();
        }

        void d() {
            if (this.f3139h) {
                this.f3140i = true;
            } else {
                c();
            }
        }

        public void e(int i10, int i11, int i12, Interpolator interpolator) {
            if (i12 == Integer.MIN_VALUE) {
                i12 = a(i10, i11);
            }
            int i13 = i12;
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            if (this.f3138f != interpolator) {
                this.f3138f = interpolator;
                this.f3137c = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f3136b = 0;
            this.f3135a = 0;
            RecyclerView.this.setScrollState(2);
            this.f3137c.startScroll(0, 0, i10, i11, i13);
            d();
        }

        public void f() {
            RecyclerView.this.removeCallbacks(this);
            this.f3137c.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout == null) {
                f();
                return;
            }
            this.f3140i = false;
            this.f3139h = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.f3137c;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i12 = currX - this.f3135a;
                int i13 = currY - this.f3136b;
                this.f3135a = currX;
                this.f3136b = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.dispatchNestedPreScroll(i12, i13, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.mReusableIntPair;
                    i12 -= iArr2[0];
                    i13 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.considerReleasingGlowsOnScroll(i12, i13);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.mAdapter != null) {
                    int[] iArr3 = recyclerView3.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.scrollStep(i12, i13, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.mReusableIntPair;
                    i11 = iArr4[0];
                    i10 = iArr4[1];
                    i12 -= i11;
                    i13 -= i10;
                    z zVar = recyclerView4.mLayout.mSmoothScroller;
                    if (zVar != null && !zVar.isPendingInitialRun() && zVar.isRunning()) {
                        int iB = RecyclerView.this.mState.b();
                        if (iB == 0) {
                            zVar.stop();
                        } else if (zVar.getTargetPosition() >= iB) {
                            zVar.setTargetPosition(iB - 1);
                            zVar.onAnimation(i11, i10);
                        } else {
                            zVar.onAnimation(i11, i10);
                        }
                    }
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.mReusableIntPair;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i11, i10, i12, i13, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.mReusableIntPair;
                int i14 = i12 - iArr6[0];
                int i15 = i13 - iArr6[1];
                if (i11 != 0 || i10 != 0) {
                    recyclerView6.dispatchOnScrolled(i11, i10);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z10 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i14 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i15 != 0));
                z zVar2 = RecyclerView.this.mLayout.mSmoothScroller;
                if ((zVar2 == null || !zVar2.isPendingInitialRun()) && z10) {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i16 = i14 < 0 ? -currVelocity : i14 > 0 ? currVelocity : 0;
                        if (i15 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i15 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.absorbGlows(i16, currVelocity);
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        RecyclerView.this.mPrefetchRegistry.b();
                    }
                } else {
                    d();
                    RecyclerView recyclerView7 = RecyclerView.this;
                    androidx.recyclerview.widget.m mVar = recyclerView7.mGapWorker;
                    if (mVar != null) {
                        mVar.f(recyclerView7, i11, i10);
                    }
                }
            }
            z zVar3 = RecyclerView.this.mLayout.mSmoothScroller;
            if (zVar3 != null && zVar3.isPendingInitialRun()) {
                zVar3.onAnimation(0, 0);
            }
            this.f3139h = false;
            if (this.f3140i) {
                c();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.stopNestedScroll(1);
            }
        }
    }

    class d implements a0.b {
        d() {
        }

        @Override // androidx.recyclerview.widget.a0.b
        public void a(d0 d0Var) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mLayout.removeAndRecycleView(d0Var.itemView, recyclerView.mRecycler);
        }

        @Override // androidx.recyclerview.widget.a0.b
        public void b(d0 d0Var, m.b bVar, m.b bVar2) {
            RecyclerView.this.animateAppearance(d0Var, bVar, bVar2);
        }

        @Override // androidx.recyclerview.widget.a0.b
        public void c(d0 d0Var, m.b bVar, m.b bVar2) {
            RecyclerView.this.mRecycler.J(d0Var);
            RecyclerView.this.animateDisappearance(d0Var, bVar, bVar2);
        }

        @Override // androidx.recyclerview.widget.a0.b
        public void d(d0 d0Var, m.b bVar, m.b bVar2) {
            d0Var.setIsRecyclable(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mDataSetHasChangedAfterLayout) {
                if (recyclerView.mItemAnimator.b(d0Var, d0Var, bVar, bVar2)) {
                    RecyclerView.this.postAnimationRunner();
                }
            } else if (recyclerView.mItemAnimator.d(d0Var, bVar, bVar2)) {
                RecyclerView.this.postAnimationRunner();
            }
        }
    }

    public static abstract class d0 {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        h mBindingAdapter;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        d0 mShadowedHolder = null;
        d0 mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        w mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public d0(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        private void a() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((1024 & this.mFlags) == 0) {
                a();
                this.mPayloads.add(obj);
            }
        }

        void addFlags(int i10) {
            this.mFlags = i10 | this.mFlags;
        }

        void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && m0.L(this.itemView);
        }

        void flagRemovedAndOffsetPosition(int i10, int i11, boolean z10) {
            addFlags(8);
            offsetPosition(i11, z10);
            this.mPosition = i10;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionInRecyclerView(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final h getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            h adapter;
            int adapterPositionInRecyclerView;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = this.mOwnerRecyclerView.getAdapterPositionInRecyclerView(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.mBindingAdapter, this, adapterPositionInRecyclerView);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i10 = this.mPreLayoutPosition;
            return i10 == -1 ? this.mPosition : i10;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i10 = this.mPreLayoutPosition;
            return i10 == -1 ? this.mPosition : i10;
        }

        List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        boolean hasAnyOfTheFlags(int i10) {
            return (this.mFlags & i10) != 0;
        }

        boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !m0.L(this.itemView);
        }

        boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        boolean isScrap() {
            return this.mScrapContainer != null;
        }

        boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        void offsetPosition(int i10, boolean z10) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z10) {
                this.mPreLayoutPosition += i10;
            }
            this.mPosition += i10;
            if (this.itemView.getLayoutParams() != null) {
                ((q) this.itemView.getLayoutParams()).f3165c = true;
            }
        }

        void onEnteredHiddenState(RecyclerView recyclerView) {
            int i10 = this.mPendingAccessibilityState;
            if (i10 != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i10;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = m0.t(this.itemView);
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        void setFlags(int i10, int i11) {
            this.mFlags = (i10 & i11) | (this.mFlags & (~i11));
        }

        public final void setIsRecyclable(boolean z10) {
            int i10 = this.mIsRecyclableCount;
            int i11 = z10 ? i10 - 1 : i10 + 1;
            this.mIsRecyclableCount = i11;
            if (i11 < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z10 && i11 == 1) {
                this.mFlags |= 16;
            } else if (z10 && i11 == 0) {
                this.mFlags &= -17;
            }
        }

        void setScrapContainer(w wVar, boolean z10) {
            this.mScrapContainer = wVar;
            this.mInChangeScrap = z10;
        }

        boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        void unScrap() {
            this.mScrapContainer.J(this);
        }

        boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    class e implements i.b {
        e() {
        }

        @Override // androidx.recyclerview.widget.i.b
        public View a(int i10) {
            return RecyclerView.this.getChildAt(i10);
        }

        @Override // androidx.recyclerview.widget.i.b
        public void b(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.i.b
        public d0 c(View view) {
            return RecyclerView.getChildViewHolderInt(view);
        }

        @Override // androidx.recyclerview.widget.i.b
        public void d(int i10) {
            d0 childViewHolderInt;
            View viewA = a(i10);
            if (viewA != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(viewA)) != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.addFlags(COUIToolTips.ALIGN_TOP);
            }
            RecyclerView.this.detachViewFromParent(i10);
        }

        @Override // androidx.recyclerview.widget.i.b
        public void e(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.i.b
        public void f(View view, int i10) {
            RecyclerView.this.addView(view, i10);
            RecyclerView.this.dispatchChildAttached(view);
        }

        @Override // androidx.recyclerview.widget.i.b
        public int g() {
            return RecyclerView.this.getChildCount();
        }

        @Override // androidx.recyclerview.widget.i.b
        public void h(int i10) {
            View childAt = RecyclerView.this.getChildAt(i10);
            if (childAt != null) {
                RecyclerView.this.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i10);
        }

        @Override // androidx.recyclerview.widget.i.b
        public void i() {
            int iG = g();
            for (int i10 = 0; i10 < iG; i10++) {
                View viewA = a(i10);
                RecyclerView.this.dispatchChildDetached(viewA);
                viewA.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.i.b
        public void j(View view, int i10, ViewGroup.LayoutParams layoutParams) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.clearTmpDetachFlag();
            }
            RecyclerView.this.attachViewToParent(view, i10, layoutParams);
        }

        @Override // androidx.recyclerview.widget.i.b
        public int k(View view) {
            return RecyclerView.this.indexOfChild(view);
        }
    }

    class f implements a.InterfaceC0038a {
        f() {
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0038a
        public void a(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForMove(i10, i11);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0038a
        public void b(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0038a
        public d0 c(int i10) {
            d0 d0VarFindViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i10, true);
            if (d0VarFindViewHolderForPosition == null || RecyclerView.this.mChildHelper.n(d0VarFindViewHolderForPosition.itemView)) {
                return null;
            }
            return d0VarFindViewHolderForPosition;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0038a
        public void d(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForRemove(i10, i11, false);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0038a
        public void e(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForInsert(i10, i11);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0038a
        public void f(int i10, int i11) {
            RecyclerView.this.offsetPositionRecordsForRemove(i10, i11, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mItemsAddedOrRemoved = true;
            recyclerView.mState.f3120d += i11;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0038a
        public void g(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0038a
        public void h(int i10, int i11, Object obj) {
            RecyclerView.this.viewRangeUpdate(i10, i11, obj);
            RecyclerView.this.mItemsChanged = true;
        }

        void i(a.b bVar) {
            int i10 = bVar.f3253a;
            if (i10 == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.onItemsAdded(recyclerView, bVar.f3254b, bVar.f3256d);
                return;
            }
            if (i10 == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.mLayout.onItemsRemoved(recyclerView2, bVar.f3254b, bVar.f3256d);
            } else if (i10 == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.mLayout.onItemsUpdated(recyclerView3, bVar.f3254b, bVar.f3256d, bVar.f3255c);
            } else {
                if (i10 != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.mLayout.onItemsMoved(recyclerView4, bVar.f3254b, bVar.f3256d, 1);
            }
        }
    }

    static /* synthetic */ class g {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f3145a;

        static {
            int[] iArr = new int[h.a.values().length];
            f3145a = iArr;
            try {
                iArr[h.a.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3145a[h.a.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class h {
        private final i mObservable = new i();
        private boolean mHasStableIds = false;
        private a mStateRestorationPolicy = a.ALLOW;

        public enum a {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        public final void bindViewHolder(d0 d0Var, int i10) {
            boolean z10 = d0Var.mBindingAdapter == null;
            if (z10) {
                d0Var.mPosition = i10;
                if (hasStableIds()) {
                    d0Var.mItemId = getItemId(i10);
                }
                d0Var.setFlags(1, 519);
                z.i.a(RecyclerView.TRACE_BIND_VIEW_TAG);
            }
            d0Var.mBindingAdapter = this;
            onBindViewHolder(d0Var, i10, d0Var.getUnmodifiedPayloads());
            if (z10) {
                d0Var.clearPayload();
                ViewGroup.LayoutParams layoutParams = d0Var.itemView.getLayoutParams();
                if (layoutParams instanceof q) {
                    ((q) layoutParams).f3165c = true;
                }
                z.i.b();
            }
        }

        boolean canRestoreState() {
            int i10 = g.f3145a[this.mStateRestorationPolicy.ordinal()];
            if (i10 != 1) {
                return i10 != 2 || getItemCount() > 0;
            }
            return false;
        }

        public final d0 createViewHolder(ViewGroup viewGroup, int i10) {
            try {
                z.i.a(RecyclerView.TRACE_CREATE_VIEW_TAG);
                d0 d0VarOnCreateViewHolder = onCreateViewHolder(viewGroup, i10);
                if (d0VarOnCreateViewHolder.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                d0VarOnCreateViewHolder.mItemViewType = i10;
                return d0VarOnCreateViewHolder;
            } finally {
                z.i.b();
            }
        }

        public int findRelativeAdapterPositionIn(h hVar, d0 d0Var, int i10) {
            if (hVar == this) {
                return i10;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i10) {
            return -1L;
        }

        public int getItemViewType(int i10) {
            return 0;
        }

        public final a getStateRestorationPolicy() {
            return this.mStateRestorationPolicy;
        }

        public final boolean hasObservers() {
            return this.mObservable.a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.b();
        }

        public final void notifyItemChanged(int i10) {
            this.mObservable.d(i10, 1);
        }

        public final void notifyItemInserted(int i10) {
            this.mObservable.f(i10, 1);
        }

        public final void notifyItemMoved(int i10, int i11) {
            this.mObservable.c(i10, i11);
        }

        public final void notifyItemRangeChanged(int i10, int i11) {
            this.mObservable.d(i10, i11);
        }

        public final void notifyItemRangeInserted(int i10, int i11) {
            this.mObservable.f(i10, i11);
        }

        public final void notifyItemRangeRemoved(int i10, int i11) {
            this.mObservable.g(i10, i11);
        }

        public final void notifyItemRemoved(int i10) {
            this.mObservable.g(i10, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(d0 d0Var, int i10);

        public void onBindViewHolder(d0 d0Var, int i10, List<Object> list) {
            onBindViewHolder(d0Var, i10);
        }

        public abstract d0 onCreateViewHolder(ViewGroup viewGroup, int i10);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(d0 d0Var) {
            return false;
        }

        public void onViewAttachedToWindow(d0 d0Var) {
        }

        public void onViewDetachedFromWindow(d0 d0Var) {
        }

        public void onViewRecycled(d0 d0Var) {
        }

        public void registerAdapterDataObserver(j jVar) {
            this.mObservable.registerObserver(jVar);
        }

        public void setHasStableIds(boolean z10) {
            if (hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = z10;
        }

        public void setStateRestorationPolicy(a aVar) {
            this.mStateRestorationPolicy = aVar;
            this.mObservable.h();
        }

        public void unregisterAdapterDataObserver(j jVar) {
            this.mObservable.unregisterObserver(jVar);
        }

        public final void notifyItemChanged(int i10, Object obj) {
            this.mObservable.e(i10, 1, obj);
        }

        public final void notifyItemRangeChanged(int i10, int i11, Object obj) {
            this.mObservable.e(i10, i11, obj);
        }
    }

    static class i extends Observable {
        i() {
        }

        public boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        public void c(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i10, i11, 1);
            }
        }

        public void d(int i10, int i11) {
            e(i10, i11, null);
        }

        public void e(int i10, int i11, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i10, i11, obj);
            }
        }

        public void f(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i10, i11);
            }
        }

        public void g(int i10, int i11) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i10, i11);
            }
        }

        public void h() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }
    }

    public static abstract class j {
        public abstract void onChanged();

        public abstract void onItemRangeChanged(int i10, int i11, Object obj);

        public abstract void onItemRangeInserted(int i10, int i11);

        public abstract void onItemRangeMoved(int i10, int i11, int i12);

        public abstract void onItemRangeRemoved(int i10, int i11);

        public void onStateRestorationPolicyChanged() {
        }
    }

    public interface k {
    }

    public static class l {
        protected EdgeEffect a(RecyclerView recyclerView, int i10) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class m {

        /* JADX INFO: renamed from: a */
        private a f3146a = null;

        /* JADX INFO: renamed from: b */
        private ArrayList f3147b = new ArrayList();

        /* JADX INFO: renamed from: c */
        private long f3148c = 120;

        /* JADX INFO: renamed from: d */
        private long f3149d = 120;

        /* JADX INFO: renamed from: e */
        private long f3150e = 250;

        /* JADX INFO: renamed from: f */
        private long f3151f = 250;

        interface a {
            void a(d0 d0Var);
        }

        public static class b {

            /* JADX INFO: renamed from: a */
            public int f3152a;

            /* JADX INFO: renamed from: b */
            public int f3153b;

            /* JADX INFO: renamed from: c */
            public int f3154c;

            /* JADX INFO: renamed from: d */
            public int f3155d;

            public b a(d0 d0Var) {
                return b(d0Var, 0);
            }

            public b b(d0 d0Var, int i10) {
                View view = d0Var.itemView;
                this.f3152a = view.getLeft();
                this.f3153b = view.getTop();
                this.f3154c = view.getRight();
                this.f3155d = view.getBottom();
                return this;
            }
        }

        static int e(d0 d0Var) {
            int i10 = d0Var.mFlags;
            int i11 = i10 & 14;
            if (d0Var.isInvalid()) {
                return 4;
            }
            if ((i10 & 4) != 0) {
                return i11;
            }
            int oldPosition = d0Var.getOldPosition();
            int absoluteAdapterPosition = d0Var.getAbsoluteAdapterPosition();
            return (oldPosition == -1 || absoluteAdapterPosition == -1 || oldPosition == absoluteAdapterPosition) ? i11 : i11 | ConfigPackage.FRAME_SIZE_3;
        }

        public abstract boolean a(d0 d0Var, b bVar, b bVar2);

        public abstract boolean b(d0 d0Var, d0 d0Var2, b bVar, b bVar2);

        public abstract boolean c(d0 d0Var, b bVar, b bVar2);

        public abstract boolean d(d0 d0Var, b bVar, b bVar2);

        public abstract boolean f(d0 d0Var);

        public boolean g(d0 d0Var, List list) {
            return f(d0Var);
        }

        public final void h(d0 d0Var) {
            r(d0Var);
            a aVar = this.f3146a;
            if (aVar != null) {
                aVar.a(d0Var);
            }
        }

        public final void i() {
            if (this.f3147b.size() <= 0) {
                this.f3147b.clear();
            } else {
                androidx.appcompat.app.t.a(this.f3147b.get(0));
                throw null;
            }
        }

        public abstract void j(d0 d0Var);

        public abstract void k();

        public long l() {
            return this.f3148c;
        }

        public long m() {
            return this.f3151f;
        }

        public long n() {
            return this.f3150e;
        }

        public long o() {
            return this.f3149d;
        }

        public abstract boolean p();

        public b q() {
            return new b();
        }

        public void r(d0 d0Var) {
        }

        public b s(a0 a0Var, d0 d0Var) {
            return q().a(d0Var);
        }

        public b t(a0 a0Var, d0 d0Var, int i10, List list) {
            return q().a(d0Var);
        }

        public abstract void u();

        public void v(long j10) {
            this.f3151f = j10;
        }

        void w(a aVar) {
            this.f3146a = aVar;
        }
    }

    private class n implements m.a {
        n() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m.a
        public void a(d0 d0Var) {
            d0Var.setIsRecyclable(true);
            if (d0Var.mShadowedHolder != null && d0Var.mShadowingHolder == null) {
                d0Var.mShadowedHolder = null;
            }
            d0Var.mShadowingHolder = null;
            if (d0Var.shouldBeKeptAsChild() || RecyclerView.this.removeAnimatingView(d0Var.itemView) || !d0Var.isTmpDetached()) {
                return;
            }
            RecyclerView.this.removeDetachedView(d0Var.itemView, false);
        }
    }

    public static abstract class o {
        @Deprecated
        public void getItemOffsets(Rect rect, int i10, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        @Deprecated
        public void onDraw(Canvas canvas, RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        }

        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, a0 a0Var) {
            getItemOffsets(rect, ((q) view.getLayoutParams()).a(), recyclerView);
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, a0 a0Var) {
            onDraw(canvas, recyclerView);
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, a0 a0Var) {
            onDrawOver(canvas, recyclerView);
        }
    }

    public static abstract class p {
        boolean mAutoMeasure;
        androidx.recyclerview.widget.i mChildHelper;
        private int mHeight;
        private int mHeightMode;
        androidx.recyclerview.widget.z mHorizontalBoundCheck;
        private final z.b mHorizontalBoundCheckCallback;
        boolean mIsAttachedToWindow;
        private boolean mItemPrefetchEnabled;
        private boolean mMeasurementCacheEnabled;
        int mPrefetchMaxCountObserved;
        boolean mPrefetchMaxObservedInInitialPrefetch;
        RecyclerView mRecyclerView;
        boolean mRequestedSimpleAnimations;
        z mSmoothScroller;
        androidx.recyclerview.widget.z mVerticalBoundCheck;
        private final z.b mVerticalBoundCheckCallback;
        private int mWidth;
        private int mWidthMode;

        class a implements z.b {
            a() {
            }

            @Override // androidx.recyclerview.widget.z.b
            public View a(int i10) {
                return p.this.getChildAt(i10);
            }

            @Override // androidx.recyclerview.widget.z.b
            public int b() {
                return p.this.getWidth() - p.this.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.z.b
            public int c(View view) {
                return p.this.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.z.b
            public int d() {
                return p.this.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.z.b
            public int e(View view) {
                return p.this.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).rightMargin;
            }
        }

        class b implements z.b {
            b() {
            }

            @Override // androidx.recyclerview.widget.z.b
            public View a(int i10) {
                return p.this.getChildAt(i10);
            }

            @Override // androidx.recyclerview.widget.z.b
            public int b() {
                return p.this.getHeight() - p.this.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.z.b
            public int c(View view) {
                return p.this.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.z.b
            public int d() {
                return p.this.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.z.b
            public int e(View view) {
                return p.this.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).bottomMargin;
            }
        }

        public interface c {
            void a(int i10, int i11);
        }

        public static class d {

            /* JADX INFO: renamed from: a */
            public int f3159a;

            /* JADX INFO: renamed from: b */
            public int f3160b;

            /* JADX INFO: renamed from: c */
            public boolean f3161c;

            /* JADX INFO: renamed from: d */
            public boolean f3162d;
        }

        public p() {
            a aVar = new a();
            this.mHorizontalBoundCheckCallback = aVar;
            b bVar = new b();
            this.mVerticalBoundCheckCallback = bVar;
            this.mHorizontalBoundCheck = new androidx.recyclerview.widget.z(aVar);
            this.mVerticalBoundCheck = new androidx.recyclerview.widget.z(bVar);
            this.mRequestedSimpleAnimations = false;
            this.mIsAttachedToWindow = false;
            this.mAutoMeasure = false;
            this.mMeasurementCacheEnabled = true;
            this.mItemPrefetchEnabled = true;
        }

        public static int chooseSize(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i11, i12) : size : Math.min(size, Math.max(i11, i12));
        }

        private void e(View view, int i10, boolean z10) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z10 || childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.b(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.p(childViewHolderInt);
            }
            q qVar = (q) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.c(view, i10, view.getLayoutParams(), false);
            } else if (view.getParent() == this.mRecyclerView) {
                int iM = this.mChildHelper.m(view);
                if (i10 == -1) {
                    i10 = this.mChildHelper.g();
                }
                if (iM == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view) + this.mRecyclerView.exceptionLabel());
                }
                if (iM != i10) {
                    this.mRecyclerView.mLayout.moveView(iM, i10);
                }
            } else {
                this.mChildHelper.a(view, i10, false);
                qVar.f3165c = true;
                z zVar = this.mSmoothScroller;
                if (zVar != null && zVar.isRunning()) {
                    this.mSmoothScroller.onChildAttachedToWindow(view);
                }
            }
            if (qVar.f3166d) {
                childViewHolderInt.itemView.invalidate();
                qVar.f3166d = false;
            }
        }

        private void f(int i10, View view) {
            this.mChildHelper.d(i10);
        }

        private int[] g(View view, Rect rect) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i10 = left - paddingLeft;
            int iMin = Math.min(0, i10);
            int i11 = top - paddingTop;
            int iMin2 = Math.min(0, i11);
            int i12 = iWidth - width;
            int iMax = Math.max(0, i12);
            int iMax2 = Math.max(0, iHeight - height);
            if (getLayoutDirection() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i10, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i12);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i11, iMax2);
            }
            return new int[]{iMax, iMin2};
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x000c A[PHI: r3
          0x000c: PHI (r3v5 int) = (r3v0 int), (r3v2 int), (r3v0 int) binds: [B:24:0x0010, B:28:0x0016, B:21:0x000a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x000e  */
        @java.lang.Deprecated
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static int getChildMeasureSpec(int r1, int r2, int r3, boolean r4) {
            /*
                int r1 = r1 - r2
                r2 = 0
                int r1 = java.lang.Math.max(r2, r1)
                r0 = 1073741824(0x40000000, float:2.0)
                if (r4 == 0) goto L10
                if (r3 < 0) goto Le
            Lc:
                r2 = r0
                goto L1e
            Le:
                r3 = r2
                goto L1e
            L10:
                if (r3 < 0) goto L13
                goto Lc
            L13:
                r4 = -1
                if (r3 != r4) goto L18
                r3 = r1
                goto Lc
            L18:
                r4 = -2
                if (r3 != r4) goto Le
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1
            L1e:
                int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.p.getChildMeasureSpec(int, int, int, boolean):int");
        }

        public static d getProperties(Context context, AttributeSet attributeSet, int i10, int i11) {
            d dVar = new d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerView, i10, i11);
            dVar.f3159a = typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 1);
            dVar.f3160b = typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_spanCount, 1);
            dVar.f3161c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_reverseLayout, false);
            dVar.f3162d = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        private boolean h(RecyclerView recyclerView, int i10, int i11) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(focusedChild, rect);
            return rect.left - i10 < width && rect.right - i10 > paddingLeft && rect.top - i11 < height && rect.bottom - i11 > paddingTop;
        }

        private static boolean i(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (i12 > 0 && i10 != i12) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i10;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i10;
            }
            return true;
        }

        private void j(w wVar, int i10, View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.shouldIgnore()) {
                return;
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
                removeViewAt(i10);
                wVar.C(childViewHolderInt);
            } else {
                detachViewAt(i10);
                wVar.D(view);
                this.mRecyclerView.mViewInfoStore.k(childViewHolderInt);
            }
        }

        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        public void addView(View view) {
            addView(view, -1);
        }

        public void assertInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertInLayoutOrScroll(str);
            }
        }

        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public void attachView(View view, int i10, q qVar) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.b(childViewHolderInt);
            } else {
                this.mRecyclerView.mViewInfoStore.p(childViewHolderInt);
            }
            this.mChildHelper.c(view, i10, qVar, childViewHolderInt.isRemoved());
        }

        public void calculateItemDecorationsForChild(View view, Rect rect) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public abstract boolean canScrollHorizontally();

        public abstract boolean canScrollVertically();

        public boolean checkLayoutParams(q qVar) {
            return qVar != null;
        }

        public void collectAdjacentPrefetchPositions(int i10, int i11, a0 a0Var, c cVar) {
        }

        public void collectInitialPrefetchPositions(int i10, c cVar) {
        }

        public abstract int computeHorizontalScrollExtent(a0 a0Var);

        public abstract int computeHorizontalScrollOffset(a0 a0Var);

        public abstract int computeHorizontalScrollRange(a0 a0Var);

        public abstract int computeVerticalScrollExtent(a0 a0Var);

        public abstract int computeVerticalScrollOffset(a0 a0Var);

        public abstract int computeVerticalScrollRange(a0 a0Var);

        public void detachAndScrapAttachedViews(w wVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                j(wVar, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(View view, w wVar) {
            j(wVar, this.mChildHelper.m(view), view);
        }

        public void detachAndScrapViewAt(int i10, w wVar) {
            j(wVar, i10, getChildAt(i10));
        }

        public void detachView(View view) {
            int iM = this.mChildHelper.m(view);
            if (iM >= 0) {
                f(iM, view);
            }
        }

        public void detachViewAt(int i10) {
            f(i10, getChildAt(i10));
        }

        void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        void dispatchDetachedFromWindow(RecyclerView recyclerView, w wVar) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, wVar);
        }

        public void endAnimation(View view) {
            m mVar = this.mRecyclerView.mItemAnimator;
            if (mVar != null) {
                mVar.j(RecyclerView.getChildViewHolderInt(view));
            }
        }

        public View findContainingItemView(View view) {
            View viewFindContainingItemView;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (viewFindContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.n(viewFindContainingItemView)) {
                return null;
            }
            return viewFindContainingItemView;
        }

        public View findViewByPosition(int i10) {
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i10 && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.e() || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract q generateDefaultLayoutParams();

        public q generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof q ? new q((q) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new q((ViewGroup.MarginLayoutParams) layoutParams) : new q(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(View view) {
            return ((q) view.getLayoutParams()).f3164b.bottom;
        }

        public View getChildAt(int i10) {
            androidx.recyclerview.widget.i iVar = this.mChildHelper;
            if (iVar != null) {
                return iVar.f(i10);
            }
            return null;
        }

        public int getChildCount() {
            androidx.recyclerview.widget.i iVar = this.mChildHelper;
            if (iVar != null) {
                return iVar.g();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        public int getColumnCountForAccessibility(w wVar, a0 a0Var) {
            return -1;
        }

        public int getDecoratedBottom(View view) {
            return view.getBottom() + getBottomDecorationHeight(view);
        }

        public void getDecoratedBoundsWithMargins(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public int getDecoratedLeft(View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(View view) {
            Rect rect = ((q) view.getLayoutParams()).f3164b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(View view) {
            Rect rect = ((q) view.getLayoutParams()).f3164b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(View view) {
            return view.getRight() + getRightDecorationWidth(view);
        }

        public int getDecoratedTop(View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.mRecyclerView;
            h adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public int getItemViewType(View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public int getLayoutDirection() {
            return m0.v(this.mRecyclerView);
        }

        public int getLeftDecorationWidth(View view) {
            return ((q) view.getLayoutParams()).f3164b.left;
        }

        public int getMinimumHeight() {
            return m0.x(this.mRecyclerView);
        }

        public int getMinimumWidth() {
            return m0.y(this.mRecyclerView);
        }

        public int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int getPaddingEnd() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return m0.z(recyclerView);
            }
            return 0;
        }

        public int getPaddingLeft() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int getPaddingRight() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int getPaddingStart() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return m0.A(recyclerView);
            }
            return 0;
        }

        public int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getPosition(View view) {
            return ((q) view.getLayoutParams()).a();
        }

        public int getRightDecorationWidth(View view) {
            return ((q) view.getLayoutParams()).f3164b.right;
        }

        public int getRowCountForAccessibility(w wVar, a0 a0Var) {
            return -1;
        }

        public int getSelectionModeForAccessibility(w wVar, a0 a0Var) {
            return 0;
        }

        public int getTopDecorationHeight(View view) {
            return ((q) view.getLayoutParams()).f3164b.top;
        }

        public void getTransformedBoundingBox(View view, boolean z10, Rect rect) {
            Matrix matrix;
            if (z10) {
                Rect rect2 = ((q) view.getLayoutParams()).f3164b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        boolean hasFlexibleChildInBothOrientations() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i10).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasFocus() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.hasFocus();
        }

        public void ignoreView(View view) {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.mRecyclerView;
            if (parent != recyclerView || recyclerView.indexOfChild(view) == -1) {
                throw new IllegalArgumentException("View should be fully attached to be ignored" + this.mRecyclerView.exceptionLabel());
            }
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.addFlags(128);
            this.mRecyclerView.mViewInfoStore.q(childViewHolderInt);
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public abstract boolean isAutoMeasureEnabled();

        public boolean isFocused() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.isFocused();
        }

        public final boolean isItemPrefetchEnabled() {
            return this.mItemPrefetchEnabled;
        }

        public boolean isLayoutHierarchical(w wVar, a0 a0Var) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            z zVar = this.mSmoothScroller;
            return zVar != null && zVar.isRunning();
        }

        public boolean isViewPartiallyVisible(View view, boolean z10, boolean z11) {
            boolean z12 = this.mHorizontalBoundCheck.b(view, 24579) && this.mVerticalBoundCheck.b(view, 24579);
            return z10 ? z12 : !z12;
        }

        public void layoutDecorated(View view, int i10, int i11, int i12, int i13) {
            Rect rect = ((q) view.getLayoutParams()).f3164b;
            view.layout(i10 + rect.left, i11 + rect.top, i12 - rect.right, i13 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(View view, int i10, int i11, int i12, int i13) {
            q qVar = (q) view.getLayoutParams();
            Rect rect = qVar.f3164b;
            view.layout(i10 + rect.left + ((ViewGroup.MarginLayoutParams) qVar).leftMargin, i11 + rect.top + ((ViewGroup.MarginLayoutParams) qVar).topMargin, (i12 - rect.right) - ((ViewGroup.MarginLayoutParams) qVar).rightMargin, (i13 - rect.bottom) - ((ViewGroup.MarginLayoutParams) qVar).bottomMargin);
        }

        public void measureChild(View view, int i10, int i11) {
            q qVar = (q) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i12 = i10 + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
            int i13 = i11 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + i12, ((ViewGroup.MarginLayoutParams) qVar).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + i13, ((ViewGroup.MarginLayoutParams) qVar).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, qVar)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void measureChildWithMargins(View view, int i10, int i11) {
            q qVar = (q) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i12 = i10 + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
            int i13 = i11 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin + i12, ((ViewGroup.MarginLayoutParams) qVar).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin + i13, ((ViewGroup.MarginLayoutParams) qVar).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, qVar)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void moveView(int i10, int i11) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                detachViewAt(i10);
                attachView(childAt, i11);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i10 + this.mRecyclerView.toString());
            }
        }

        public void offsetChildrenHorizontal(int i10) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i10);
            }
        }

        public void offsetChildrenVertical(int i10) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i10);
            }
        }

        public void onAdapterChanged(h hVar, h hVar2) {
        }

        public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i10, int i11) {
            return false;
        }

        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        public abstract View onFocusSearchFailed(View view, int i10, w wVar, a0 a0Var);

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        }

        void onInitializeAccessibilityNodeInfo(d0.h hVar) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, hVar);
        }

        void onInitializeAccessibilityNodeInfoForItem(View view, d0.h hVar) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.n(childViewHolderInt.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, hVar);
        }

        public View onInterceptFocusSearch(View view, int i10) {
            return null;
        }

        public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        }

        public void onItemsChanged(RecyclerView recyclerView) {
        }

        public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        }

        public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        }

        public abstract void onLayoutChildren(w wVar, a0 a0Var);

        public void onLayoutCompleted(a0 a0Var) {
        }

        public void onMeasure(w wVar, a0 a0Var, int i10, int i11) {
            this.mRecyclerView.defaultOnMeasure(i10, i11);
        }

        @Deprecated
        public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int i10) {
        }

        void onSmoothScrollerStopped(z zVar) {
            if (this.mSmoothScroller == zVar) {
                this.mSmoothScroller = null;
            }
        }

        boolean performAccessibilityAction(int i10, Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i10, bundle);
        }

        public boolean performAccessibilityActionForItem(w wVar, a0 a0Var, View view, int i10, Bundle bundle) {
            return false;
        }

        public void postOnAnimation(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                m0.a0(recyclerView, runnable);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.q(childCount);
            }
        }

        public void removeAndRecycleAllViews(w wVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, wVar);
                }
            }
        }

        void removeAndRecycleScrapInt(w wVar) {
            int iJ = wVar.j();
            for (int i10 = iJ - 1; i10 >= 0; i10--) {
                View viewN = wVar.n(i10);
                d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(viewN);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(viewN, false);
                    }
                    m mVar = this.mRecyclerView.mItemAnimator;
                    if (mVar != null) {
                        mVar.j(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    wVar.y(viewN);
                }
            }
            wVar.e();
            if (iJ > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(View view, w wVar) {
            removeView(view);
            wVar.B(view);
        }

        public void removeAndRecycleViewAt(int i10, w wVar) {
            View childAt = getChildAt(i10);
            removeViewAt(i10);
            wVar.B(childAt);
        }

        public boolean removeCallbacks(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void removeDetachedView(View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        public void removeView(View view) {
            this.mChildHelper.p(view);
        }

        public void removeViewAt(int i10) {
            if (getChildAt(i10) != null) {
                this.mChildHelper.q(i10);
            }
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z10, false);
        }

        public void requestLayout() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        public abstract int scrollHorizontallyBy(int i10, w wVar, a0 a0Var);

        public abstract void scrollToPosition(int i10);

        public abstract int scrollVerticallyBy(int i10, w wVar, a0 a0Var);

        @Deprecated
        public void setAutoMeasureEnabled(boolean z10) {
            this.mAutoMeasure = z10;
        }

        void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void setItemPrefetchEnabled(boolean z10) {
            if (z10 != this.mItemPrefetchEnabled) {
                this.mItemPrefetchEnabled = z10;
                this.mPrefetchMaxCountObserved = 0;
                RecyclerView recyclerView = this.mRecyclerView;
                if (recyclerView != null) {
                    recyclerView.mRecycler.K();
                }
            }
        }

        void setMeasureSpecs(int i10, int i11) {
            this.mWidth = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            this.mWidthMode = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.mHeightMode = mode2;
            if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.mHeight = 0;
        }

        public void setMeasuredDimension(Rect rect, int i10, int i11) {
            setMeasuredDimension(chooseSize(i10, rect.width() + getPaddingLeft() + getPaddingRight(), getMinimumWidth()), chooseSize(i11, rect.height() + getPaddingTop() + getPaddingBottom(), getMinimumHeight()));
        }

        void setMeasuredDimensionFromChildren(int i10, int i11) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i10, i11);
                return;
            }
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MAX_VALUE;
            int i14 = Integer.MIN_VALUE;
            int i15 = Integer.MAX_VALUE;
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt = getChildAt(i16);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i17 = rect.left;
                if (i17 < i15) {
                    i15 = i17;
                }
                int i18 = rect.right;
                if (i18 > i12) {
                    i12 = i18;
                }
                int i19 = rect.top;
                if (i19 < i13) {
                    i13 = i19;
                }
                int i20 = rect.bottom;
                if (i20 > i14) {
                    i14 = i20;
                }
            }
            this.mRecyclerView.mTempRect.set(i15, i13, i12, i14);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i10, i11);
        }

        public void setMeasurementCacheEnabled(boolean z10) {
            this.mMeasurementCacheEnabled = z10;
        }

        void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        boolean shouldMeasureChild(View view, int i10, int i11, q qVar) {
            return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && i(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) qVar).width) && i(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) qVar).height)) ? false : true;
        }

        boolean shouldMeasureTwice() {
            return false;
        }

        boolean shouldReMeasureChild(View view, int i10, int i11, q qVar) {
            return (this.mMeasurementCacheEnabled && i(view.getMeasuredWidth(), i10, ((ViewGroup.MarginLayoutParams) qVar).width) && i(view.getMeasuredHeight(), i11, ((ViewGroup.MarginLayoutParams) qVar).height)) ? false : true;
        }

        public abstract void smoothScrollToPosition(RecyclerView recyclerView, a0 a0Var, int i10);

        public void startSmoothScroll(z zVar) {
            z zVar2 = this.mSmoothScroller;
            if (zVar2 != null && zVar != zVar2 && zVar2.isRunning()) {
                this.mSmoothScroller.stop();
            }
            this.mSmoothScroller = zVar;
            zVar.start(this.mRecyclerView, this);
        }

        public void stopIgnoringView(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.stopIgnoring();
            childViewHolderInt.resetInternal();
            childViewHolderInt.addFlags(4);
        }

        void stopSmoothScroller() {
            z zVar = this.mSmoothScroller;
            if (zVar != null) {
                zVar.stop();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        public void addDisappearingView(View view, int i10) {
            e(view, i10, true);
        }

        public void addView(View view, int i10) {
            e(view, i10, false);
        }

        public void onDetachedFromWindow(RecyclerView recyclerView, w wVar) {
            onDetachedFromWindow(recyclerView);
        }

        public void onInitializeAccessibilityEvent(w wVar, a0 a0Var, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z10 = true;
            if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
                z10 = false;
            }
            accessibilityEvent.setScrollable(z10);
            h hVar = this.mRecyclerView.mAdapter;
            if (hVar != null) {
                accessibilityEvent.setItemCount(hVar.getItemCount());
            }
        }

        public void onInitializeAccessibilityNodeInfo(w wVar, a0 a0Var, d0.h hVar) {
            if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
                hVar.a(ConfigPackage.FRAME_SIZE_6);
                hVar.C0(true);
            }
            if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
                hVar.a(ConfigPackage.FRAME_SIZE_5);
                hVar.C0(true);
            }
            hVar.j0(h.e.b(getRowCountForAccessibility(wVar, a0Var), getColumnCountForAccessibility(wVar, a0Var), isLayoutHierarchical(wVar, a0Var), getSelectionModeForAccessibility(wVar, a0Var)));
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
            onItemsUpdated(recyclerView, i10, i11);
        }

        public boolean onRequestChildFocus(RecyclerView recyclerView, a0 a0Var, View view, View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        public boolean performAccessibilityAction(w wVar, a0 a0Var, int i10, Bundle bundle) {
            int height;
            int width;
            int i11;
            int i12;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                return false;
            }
            if (i10 == 4096) {
                height = recyclerView.canScrollVertically(1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
                if (this.mRecyclerView.canScrollHorizontally(1)) {
                    width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                    i11 = height;
                    i12 = width;
                }
                i11 = height;
                i12 = 0;
            } else if (i10 != 8192) {
                i12 = 0;
                i11 = 0;
            } else {
                height = recyclerView.canScrollVertically(-1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    width = -((getWidth() - getPaddingLeft()) - getPaddingRight());
                    i11 = height;
                    i12 = width;
                }
                i11 = height;
                i12 = 0;
            }
            if (i11 == 0 && i12 == 0) {
                return false;
            }
            this.mRecyclerView.smoothScrollBy(i12, i11, null, Integer.MIN_VALUE, true);
            return true;
        }

        boolean performAccessibilityActionForItem(View view, int i10, Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i10, bundle);
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            int[] iArrG = g(view, rect);
            int i10 = iArrG[0];
            int i11 = iArrG[1];
            if ((z11 && !h(recyclerView, i10, i11)) || (i10 == 0 && i11 == 0)) {
                return false;
            }
            if (z10) {
                recyclerView.scrollBy(i10, i11);
            } else {
                recyclerView.smoothScrollBy(i10, i11);
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x001a  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static int getChildMeasureSpec(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                int r4 = r4 - r6
                r6 = 0
                int r4 = java.lang.Math.max(r6, r4)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r8 == 0) goto L1d
                if (r7 < 0) goto L12
            L10:
                r5 = r3
                goto L30
            L12:
                if (r7 != r1) goto L1a
                if (r5 == r2) goto L22
                if (r5 == 0) goto L1a
                if (r5 == r3) goto L22
            L1a:
                r5 = r6
                r7 = r5
                goto L30
            L1d:
                if (r7 < 0) goto L20
                goto L10
            L20:
                if (r7 != r1) goto L24
            L22:
                r7 = r4
                goto L30
            L24:
                if (r7 != r0) goto L1a
                if (r5 == r2) goto L2e
                if (r5 != r3) goto L2b
                goto L2e
            L2b:
                r7 = r4
                r5 = r6
                goto L30
            L2e:
                r7 = r4
                r5 = r2
            L30:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.p.getChildMeasureSpec(int, int, int, int, boolean):int");
        }

        public void onInitializeAccessibilityNodeInfoForItem(w wVar, a0 a0Var, View view, d0.h hVar) {
        }

        public void attachView(View view, int i10) {
            attachView(view, i10, (q) view.getLayoutParams());
        }

        public q generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new q(context, attributeSet);
        }

        public void setMeasuredDimension(int i10, int i11) {
            this.mRecyclerView.setMeasuredDimension(i10, i11);
        }

        public void attachView(View view) {
            attachView(view, -1);
        }
    }

    public interface r {
        void onChildViewAttachedToWindow(View view);

        void onChildViewDetachedFromWindow(View view);
    }

    public static abstract class s {
        public abstract boolean onFling(int i10, int i11);
    }

    public interface t {
        boolean a(RecyclerView recyclerView, MotionEvent motionEvent);

        void b(RecyclerView recyclerView, MotionEvent motionEvent);

        void c(boolean z10);
    }

    public static abstract class u {
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
        }

        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        }
    }

    public static class v {

        /* JADX INFO: renamed from: a */
        SparseArray f3167a = new SparseArray();

        /* JADX INFO: renamed from: b */
        private int f3168b = 0;

        static class a {

            /* JADX INFO: renamed from: a */
            final ArrayList f3169a = new ArrayList();

            /* JADX INFO: renamed from: b */
            int f3170b = 5;

            /* JADX INFO: renamed from: c */
            long f3171c = 0;

            /* JADX INFO: renamed from: d */
            long f3172d = 0;

            a() {
            }
        }

        private a g(int i10) {
            a aVar = (a) this.f3167a.get(i10);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f3167a.put(i10, aVar2);
            return aVar2;
        }

        void a() {
            this.f3168b++;
        }

        public void b() {
            for (int i10 = 0; i10 < this.f3167a.size(); i10++) {
                ((a) this.f3167a.valueAt(i10)).f3169a.clear();
            }
        }

        void c() {
            this.f3168b--;
        }

        void d(int i10, long j10) {
            a aVarG = g(i10);
            aVarG.f3172d = j(aVarG.f3172d, j10);
        }

        void e(int i10, long j10) {
            a aVarG = g(i10);
            aVarG.f3171c = j(aVarG.f3171c, j10);
        }

        public d0 f(int i10) {
            a aVar = (a) this.f3167a.get(i10);
            if (aVar == null || aVar.f3169a.isEmpty()) {
                return null;
            }
            ArrayList arrayList = aVar.f3169a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!((d0) arrayList.get(size)).isAttachedToTransitionOverlay()) {
                    return (d0) arrayList.remove(size);
                }
            }
            return null;
        }

        void h(h hVar, h hVar2, boolean z10) {
            if (hVar != null) {
                c();
            }
            if (!z10 && this.f3168b == 0) {
                b();
            }
            if (hVar2 != null) {
                a();
            }
        }

        public void i(d0 d0Var) {
            int itemViewType = d0Var.getItemViewType();
            ArrayList arrayList = g(itemViewType).f3169a;
            if (((a) this.f3167a.get(itemViewType)).f3170b <= arrayList.size()) {
                return;
            }
            d0Var.resetInternal();
            arrayList.add(d0Var);
        }

        long j(long j10, long j11) {
            return j10 == 0 ? j11 : ((j10 / 4) * 3) + (j11 / 4);
        }

        boolean k(int i10, long j10, long j11) {
            long j12 = g(i10).f3172d;
            return j12 == 0 || j10 + j12 < j11;
        }

        boolean l(int i10, long j10, long j11) {
            long j12 = g(i10).f3171c;
            return j12 == 0 || j10 + j12 < j11;
        }
    }

    public final class w {

        /* JADX INFO: renamed from: a */
        final ArrayList f3173a;

        /* JADX INFO: renamed from: b */
        ArrayList f3174b;

        /* JADX INFO: renamed from: c */
        final ArrayList f3175c;

        /* JADX INFO: renamed from: d */
        private final List f3176d;

        /* JADX INFO: renamed from: e */
        private int f3177e;

        /* JADX INFO: renamed from: f */
        int f3178f;

        /* JADX INFO: renamed from: g */
        v f3179g;

        public w() {
            ArrayList arrayList = new ArrayList();
            this.f3173a = arrayList;
            this.f3174b = null;
            this.f3175c = new ArrayList();
            this.f3176d = Collections.unmodifiableList(arrayList);
            this.f3177e = 2;
            this.f3178f = 2;
        }

        private boolean H(d0 d0Var, int i10, int i11, long j10) {
            d0Var.mBindingAdapter = null;
            d0Var.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = d0Var.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j10 != RecyclerView.FOREVER_NS && !this.f3179g.k(itemViewType, nanoTime, j10)) {
                return false;
            }
            RecyclerView.this.mAdapter.bindViewHolder(d0Var, i10);
            this.f3179g.d(d0Var.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
            b(d0Var);
            if (!RecyclerView.this.mState.e()) {
                return true;
            }
            d0Var.mPreLayoutPosition = i11;
            return true;
        }

        private void b(d0 d0Var) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = d0Var.itemView;
                if (m0.t(view) == 0) {
                    m0.t0(view, 1);
                }
                androidx.recyclerview.widget.v vVar = RecyclerView.this.mAccessibilityDelegate;
                if (vVar == null) {
                    return;
                }
                androidx.core.view.a itemDelegate = vVar.getItemDelegate();
                if (itemDelegate instanceof v.a) {
                    ((v.a) itemDelegate).d(view);
                }
                m0.j0(view, itemDelegate);
            }
        }

        private void q(ViewGroup viewGroup, boolean z10) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    q((ViewGroup) childAt, true);
                }
            }
            if (z10) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        private void r(d0 d0Var) {
            View view = d0Var.itemView;
            if (view instanceof ViewGroup) {
                q((ViewGroup) view, false);
            }
        }

        void A(int i10) {
            a((d0) this.f3175c.get(i10), true);
            this.f3175c.remove(i10);
        }

        public void B(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            C(childViewHolderInt);
            if (RecyclerView.this.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
                return;
            }
            RecyclerView.this.mItemAnimator.j(childViewHolderInt);
        }

        void C(d0 d0Var) {
            boolean z10;
            boolean z11 = true;
            if (d0Var.isScrap() || d0Var.itemView.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(d0Var.isScrap());
                sb.append(" isAttached:");
                sb.append(d0Var.itemView.getParent() != null);
                sb.append(RecyclerView.this.exceptionLabel());
                throw new IllegalArgumentException(sb.toString());
            }
            if (d0Var.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + d0Var + RecyclerView.this.exceptionLabel());
            }
            if (d0Var.shouldIgnore()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.exceptionLabel());
            }
            boolean zDoesTransientStatePreventRecycling = d0Var.doesTransientStatePreventRecycling();
            h hVar = RecyclerView.this.mAdapter;
            if ((hVar != null && zDoesTransientStatePreventRecycling && hVar.onFailedToRecycleView(d0Var)) || d0Var.isRecyclable()) {
                if (this.f3178f <= 0 || d0Var.hasAnyOfTheFlags(526)) {
                    z10 = false;
                } else {
                    int size = this.f3175c.size();
                    if (size >= this.f3178f && size > 0) {
                        A(0);
                        size--;
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !RecyclerView.this.mPrefetchRegistry.d(d0Var.mPosition)) {
                        int i10 = size - 1;
                        while (i10 >= 0) {
                            if (!RecyclerView.this.mPrefetchRegistry.d(((d0) this.f3175c.get(i10)).mPosition)) {
                                break;
                            } else {
                                i10--;
                            }
                        }
                        size = i10 + 1;
                    }
                    this.f3175c.add(size, d0Var);
                    z10 = true;
                }
                if (z10) {
                    z11 = false;
                } else {
                    a(d0Var, true);
                }
                z = z10;
            } else {
                z11 = false;
            }
            RecyclerView.this.mViewInfoStore.q(d0Var);
            if (z || z11 || !zDoesTransientStatePreventRecycling) {
                return;
            }
            d0Var.mBindingAdapter = null;
            d0Var.mOwnerRecyclerView = null;
        }

        void D(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f3174b == null) {
                    this.f3174b = new ArrayList();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.f3174b.add(childViewHolderInt);
                return;
            }
            if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || RecyclerView.this.mAdapter.hasStableIds()) {
                childViewHolderInt.setScrapContainer(this, false);
                this.f3173a.add(childViewHolderInt);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.exceptionLabel());
            }
        }

        void E(v vVar) {
            v vVar2 = this.f3179g;
            if (vVar2 != null) {
                vVar2.c();
            }
            this.f3179g = vVar;
            if (vVar == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f3179g.a();
        }

        void F(b0 b0Var) {
        }

        public void G(int i10) {
            this.f3177e = i10;
            K();
        }

        /* JADX WARN: Removed duplicated region for block: B:117:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:128:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x00f5 A[PHI: r1 r4
          0x00f5: PHI (r1v12 androidx.recyclerview.widget.RecyclerView$d0) = (r1v11 androidx.recyclerview.widget.RecyclerView$d0), (r1v30 androidx.recyclerview.widget.RecyclerView$d0) binds: [B:127:0x005d, B:144:0x00ad] A[DONT_GENERATE, DONT_INLINE]
          0x00f5: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:127:0x005d, B:144:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:167:0x014e  */
        /* JADX WARN: Removed duplicated region for block: B:173:0x017a  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x01aa  */
        /* JADX WARN: Removed duplicated region for block: B:185:0x01b8  */
        /* JADX WARN: Removed duplicated region for block: B:191:0x01d4 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:193:0x01d7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        androidx.recyclerview.widget.RecyclerView.d0 I(int r17, boolean r18, long r19) {
            /*
                Method dump skipped, instruction units count: 531
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.w.I(int, boolean, long):androidx.recyclerview.widget.RecyclerView$d0");
        }

        void J(d0 d0Var) {
            if (d0Var.mInChangeScrap) {
                this.f3174b.remove(d0Var);
            } else {
                this.f3173a.remove(d0Var);
            }
            d0Var.mScrapContainer = null;
            d0Var.mInChangeScrap = false;
            d0Var.clearReturnedFromScrapFlag();
        }

        void K() {
            p pVar = RecyclerView.this.mLayout;
            this.f3178f = this.f3177e + (pVar != null ? pVar.mPrefetchMaxCountObserved : 0);
            for (int size = this.f3175c.size() - 1; size >= 0 && this.f3175c.size() > this.f3178f; size--) {
                A(size);
            }
        }

        boolean L(d0 d0Var) {
            if (d0Var.isRemoved()) {
                return RecyclerView.this.mState.e();
            }
            int i10 = d0Var.mPosition;
            if (i10 >= 0 && i10 < RecyclerView.this.mAdapter.getItemCount()) {
                if (RecyclerView.this.mState.e() || RecyclerView.this.mAdapter.getItemViewType(d0Var.mPosition) == d0Var.getItemViewType()) {
                    return !RecyclerView.this.mAdapter.hasStableIds() || d0Var.getItemId() == RecyclerView.this.mAdapter.getItemId(d0Var.mPosition);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + d0Var + RecyclerView.this.exceptionLabel());
        }

        void M(int i10, int i11) {
            int i12;
            int i13 = i11 + i10;
            for (int size = this.f3175c.size() - 1; size >= 0; size--) {
                d0 d0Var = (d0) this.f3175c.get(size);
                if (d0Var != null && (i12 = d0Var.mPosition) >= i10 && i12 < i13) {
                    d0Var.addFlags(2);
                    A(size);
                }
            }
        }

        void a(d0 d0Var, boolean z10) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(d0Var);
            View view = d0Var.itemView;
            androidx.recyclerview.widget.v vVar = RecyclerView.this.mAccessibilityDelegate;
            if (vVar != null) {
                androidx.core.view.a itemDelegate = vVar.getItemDelegate();
                m0.j0(view, itemDelegate instanceof v.a ? ((v.a) itemDelegate).c(view) : null);
            }
            if (z10) {
                g(d0Var);
            }
            d0Var.mBindingAdapter = null;
            d0Var.mOwnerRecyclerView = null;
            i().i(d0Var);
        }

        public void c() {
            this.f3173a.clear();
            z();
        }

        void d() {
            int size = this.f3175c.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((d0) this.f3175c.get(i10)).clearOldPosition();
            }
            int size2 = this.f3173a.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ((d0) this.f3173a.get(i11)).clearOldPosition();
            }
            ArrayList arrayList = this.f3174b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i12 = 0; i12 < size3; i12++) {
                    ((d0) this.f3174b.get(i12)).clearOldPosition();
                }
            }
        }

        void e() {
            this.f3173a.clear();
            ArrayList arrayList = this.f3174b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public int f(int i10) {
            if (i10 >= 0 && i10 < RecyclerView.this.mState.b()) {
                return !RecyclerView.this.mState.e() ? i10 : RecyclerView.this.mAdapterHelper.m(i10);
            }
            throw new IndexOutOfBoundsException("invalid position " + i10 + ". State item count is " + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
        }

        void g(d0 d0Var) {
            RecyclerView.this.getClass();
            if (RecyclerView.this.mRecyclerListeners.size() > 0) {
                androidx.appcompat.app.t.a(RecyclerView.this.mRecyclerListeners.get(0));
                throw null;
            }
            h hVar = RecyclerView.this.mAdapter;
            if (hVar != null) {
                hVar.onViewRecycled(d0Var);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.q(d0Var);
            }
        }

        d0 h(int i10) {
            int size;
            int iM;
            ArrayList arrayList = this.f3174b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    d0 d0Var = (d0) this.f3174b.get(i11);
                    if (!d0Var.wasReturnedFromScrap() && d0Var.getLayoutPosition() == i10) {
                        d0Var.addFlags(32);
                        return d0Var;
                    }
                }
                if (RecyclerView.this.mAdapter.hasStableIds() && (iM = RecyclerView.this.mAdapterHelper.m(i10)) > 0 && iM < RecyclerView.this.mAdapter.getItemCount()) {
                    long itemId = RecyclerView.this.mAdapter.getItemId(iM);
                    for (int i12 = 0; i12 < size; i12++) {
                        d0 d0Var2 = (d0) this.f3174b.get(i12);
                        if (!d0Var2.wasReturnedFromScrap() && d0Var2.getItemId() == itemId) {
                            d0Var2.addFlags(32);
                            return d0Var2;
                        }
                    }
                }
            }
            return null;
        }

        v i() {
            if (this.f3179g == null) {
                this.f3179g = new v();
            }
            return this.f3179g;
        }

        int j() {
            return this.f3173a.size();
        }

        public List k() {
            return this.f3176d;
        }

        d0 l(long j10, int i10, boolean z10) {
            for (int size = this.f3173a.size() - 1; size >= 0; size--) {
                d0 d0Var = (d0) this.f3173a.get(size);
                if (d0Var.getItemId() == j10 && !d0Var.wasReturnedFromScrap()) {
                    if (i10 == d0Var.getItemViewType()) {
                        d0Var.addFlags(32);
                        if (d0Var.isRemoved() && !RecyclerView.this.mState.e()) {
                            d0Var.setFlags(2, 14);
                        }
                        return d0Var;
                    }
                    if (!z10) {
                        this.f3173a.remove(size);
                        RecyclerView.this.removeDetachedView(d0Var.itemView, false);
                        y(d0Var.itemView);
                    }
                }
            }
            int size2 = this.f3175c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                d0 d0Var2 = (d0) this.f3175c.get(size2);
                if (d0Var2.getItemId() == j10 && !d0Var2.isAttachedToTransitionOverlay()) {
                    if (i10 == d0Var2.getItemViewType()) {
                        if (!z10) {
                            this.f3175c.remove(size2);
                        }
                        return d0Var2;
                    }
                    if (!z10) {
                        A(size2);
                        return null;
                    }
                }
            }
        }

        d0 m(int i10, boolean z10) {
            View viewE;
            int size = this.f3173a.size();
            for (int i11 = 0; i11 < size; i11++) {
                d0 d0Var = (d0) this.f3173a.get(i11);
                if (!d0Var.wasReturnedFromScrap() && d0Var.getLayoutPosition() == i10 && !d0Var.isInvalid() && (RecyclerView.this.mState.f3124h || !d0Var.isRemoved())) {
                    d0Var.addFlags(32);
                    return d0Var;
                }
            }
            if (z10 || (viewE = RecyclerView.this.mChildHelper.e(i10)) == null) {
                int size2 = this.f3175c.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    d0 d0Var2 = (d0) this.f3175c.get(i12);
                    if (!d0Var2.isInvalid() && d0Var2.getLayoutPosition() == i10 && !d0Var2.isAttachedToTransitionOverlay()) {
                        if (!z10) {
                            this.f3175c.remove(i12);
                        }
                        return d0Var2;
                    }
                }
                return null;
            }
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(viewE);
            RecyclerView.this.mChildHelper.s(viewE);
            int iM = RecyclerView.this.mChildHelper.m(viewE);
            if (iM != -1) {
                RecyclerView.this.mChildHelper.d(iM);
                D(viewE);
                childViewHolderInt.addFlags(8224);
                return childViewHolderInt;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + RecyclerView.this.exceptionLabel());
        }

        View n(int i10) {
            return ((d0) this.f3173a.get(i10)).itemView;
        }

        public View o(int i10) {
            return p(i10, false);
        }

        View p(int i10, boolean z10) {
            return I(i10, z10, RecyclerView.FOREVER_NS).itemView;
        }

        void s() {
            int size = this.f3175c.size();
            for (int i10 = 0; i10 < size; i10++) {
                q qVar = (q) ((d0) this.f3175c.get(i10)).itemView.getLayoutParams();
                if (qVar != null) {
                    qVar.f3165c = true;
                }
            }
        }

        void t() {
            int size = this.f3175c.size();
            for (int i10 = 0; i10 < size; i10++) {
                d0 d0Var = (d0) this.f3175c.get(i10);
                if (d0Var != null) {
                    d0Var.addFlags(6);
                    d0Var.addChangePayload(null);
                }
            }
            h hVar = RecyclerView.this.mAdapter;
            if (hVar == null || !hVar.hasStableIds()) {
                z();
            }
        }

        void u(int i10, int i11) {
            int size = this.f3175c.size();
            for (int i12 = 0; i12 < size; i12++) {
                d0 d0Var = (d0) this.f3175c.get(i12);
                if (d0Var != null && d0Var.mPosition >= i10) {
                    d0Var.offsetPosition(i11, false);
                }
            }
        }

        void v(int i10, int i11) {
            int i12;
            int i13;
            int i14;
            int i15;
            if (i10 < i11) {
                i12 = -1;
                i14 = i10;
                i13 = i11;
            } else {
                i12 = 1;
                i13 = i10;
                i14 = i11;
            }
            int size = this.f3175c.size();
            for (int i16 = 0; i16 < size; i16++) {
                d0 d0Var = (d0) this.f3175c.get(i16);
                if (d0Var != null && (i15 = d0Var.mPosition) >= i14 && i15 <= i13) {
                    if (i15 == i10) {
                        d0Var.offsetPosition(i11 - i10, false);
                    } else {
                        d0Var.offsetPosition(i12, false);
                    }
                }
            }
        }

        void w(int i10, int i11, boolean z10) {
            int i12 = i10 + i11;
            for (int size = this.f3175c.size() - 1; size >= 0; size--) {
                d0 d0Var = (d0) this.f3175c.get(size);
                if (d0Var != null) {
                    int i13 = d0Var.mPosition;
                    if (i13 >= i12) {
                        d0Var.offsetPosition(-i11, z10);
                    } else if (i13 >= i10) {
                        d0Var.addFlags(8);
                        A(size);
                    }
                }
            }
        }

        void x(h hVar, h hVar2, boolean z10) {
            c();
            i().h(hVar, hVar2, z10);
        }

        void y(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.mScrapContainer = null;
            childViewHolderInt.mInChangeScrap = false;
            childViewHolderInt.clearReturnedFromScrapFlag();
            C(childViewHolderInt);
        }

        void z() {
            for (int size = this.f3175c.size() - 1; size >= 0; size--) {
                A(size);
            }
            this.f3175c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.b();
            }
        }
    }

    public interface x {
    }

    private class y extends j {
        y() {
        }

        void a() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                    m0.a0(recyclerView, recyclerView.mUpdateChildViewsRunnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.mAdapterUpdateDuringMeasure = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onChanged() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mState.f3123g = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (RecyclerView.this.mAdapterHelper.p()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.r(i10, i11, obj)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeInserted(int i10, int i11) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.s(i10, i11)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeMoved(int i10, int i11, int i12) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.t(i10, i11, i12)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeRemoved(int i10, int i11) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.u(i10, i11)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onStateRestorationPolicyChanged() {
            h hVar;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mPendingSavedState == null || (hVar = recyclerView.mAdapter) == null || !hVar.canRestoreState()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    public static abstract class z {
        private p mLayoutManager;
        private boolean mPendingInitialRun;
        private RecyclerView mRecyclerView;
        private boolean mRunning;
        private boolean mStarted;
        private View mTargetView;
        private int mTargetPosition = -1;
        private final a mRecyclingAction = new a(0, 0);

        public static class a {

            /* JADX INFO: renamed from: a */
            private int f3182a;

            /* JADX INFO: renamed from: b */
            private int f3183b;

            /* JADX INFO: renamed from: c */
            private int f3184c;

            /* JADX INFO: renamed from: d */
            private int f3185d;

            /* JADX INFO: renamed from: e */
            private Interpolator f3186e;

            /* JADX INFO: renamed from: f */
            private boolean f3187f;

            /* JADX INFO: renamed from: g */
            private int f3188g;

            public a(int i10, int i11) {
                this(i10, i11, Integer.MIN_VALUE, null);
            }

            private void e() {
                if (this.f3186e != null && this.f3184c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f3184c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            boolean a() {
                return this.f3185d >= 0;
            }

            public void b(int i10) {
                this.f3185d = i10;
            }

            void c(RecyclerView recyclerView) {
                int i10 = this.f3185d;
                if (i10 >= 0) {
                    this.f3185d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i10);
                    this.f3187f = false;
                } else {
                    if (!this.f3187f) {
                        this.f3188g = 0;
                        return;
                    }
                    e();
                    recyclerView.mViewFlinger.e(this.f3182a, this.f3183b, this.f3184c, this.f3186e);
                    int i11 = this.f3188g + 1;
                    this.f3188g = i11;
                    if (i11 > 10) {
                        Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f3187f = false;
                }
            }

            public void d(int i10, int i11, int i12, Interpolator interpolator) {
                this.f3182a = i10;
                this.f3183b = i11;
                this.f3184c = i12;
                this.f3186e = interpolator;
                this.f3187f = true;
            }

            public a(int i10, int i11, int i12, Interpolator interpolator) {
                this.f3185d = -1;
                this.f3187f = false;
                this.f3188g = 0;
                this.f3182a = i10;
                this.f3183b = i11;
                this.f3184c = i12;
                this.f3186e = interpolator;
            }
        }

        public interface b {
            PointF computeScrollVectorForPosition(int i10);
        }

        public PointF computeScrollVectorForPosition(int i10) {
            Object layoutManager = getLayoutManager();
            if (layoutManager instanceof b) {
                return ((b) layoutManager).computeScrollVectorForPosition(i10);
            }
            Log.w(RecyclerView.TAG, "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        public View findViewByPosition(int i10) {
            return this.mRecyclerView.mLayout.findViewByPosition(i10);
        }

        public int getChildCount() {
            return this.mRecyclerView.mLayout.getChildCount();
        }

        public int getChildPosition(View view) {
            return this.mRecyclerView.getChildLayoutPosition(view);
        }

        public p getLayoutManager() {
            return this.mLayoutManager;
        }

        public int getTargetPosition() {
            return this.mTargetPosition;
        }

        @Deprecated
        public void instantScrollToPosition(int i10) {
            this.mRecyclerView.scrollToPosition(i10);
        }

        public boolean isPendingInitialRun() {
            return this.mPendingInitialRun;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        protected void normalize(PointF pointF) {
            float f10 = pointF.x;
            float f11 = pointF.y;
            float fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
            pointF.x /= fSqrt;
            pointF.y /= fSqrt;
        }

        void onAnimation(int i10, int i11) {
            PointF pointFComputeScrollVectorForPosition;
            RecyclerView recyclerView = this.mRecyclerView;
            if (this.mTargetPosition == -1 || recyclerView == null) {
                stop();
            }
            if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (pointFComputeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null) {
                float f10 = pointFComputeScrollVectorForPosition.x;
                if (f10 != 0.0f || pointFComputeScrollVectorForPosition.y != 0.0f) {
                    recyclerView.scrollStep((int) Math.signum(f10), (int) Math.signum(pointFComputeScrollVectorForPosition.y), null);
                }
            }
            this.mPendingInitialRun = false;
            View view = this.mTargetView;
            if (view != null) {
                if (getChildPosition(view) == this.mTargetPosition) {
                    onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                    this.mRecyclingAction.c(recyclerView);
                    stop();
                } else {
                    Log.e(RecyclerView.TAG, "Passed over target position while smooth scrolling.");
                    this.mTargetView = null;
                }
            }
            if (this.mRunning) {
                onSeekTargetStep(i10, i11, recyclerView.mState, this.mRecyclingAction);
                boolean zA = this.mRecyclingAction.a();
                this.mRecyclingAction.c(recyclerView);
                if (zA && this.mRunning) {
                    this.mPendingInitialRun = true;
                    recyclerView.mViewFlinger.d();
                }
            }
        }

        protected void onChildAttachedToWindow(View view) {
            if (getChildPosition(view) == getTargetPosition()) {
                this.mTargetView = view;
            }
        }

        protected abstract void onSeekTargetStep(int i10, int i11, a0 a0Var, a aVar);

        protected abstract void onStart();

        protected abstract void onStop();

        protected abstract void onTargetFound(View view, a0 a0Var, a aVar);

        public void setTargetPosition(int i10) {
            this.mTargetPosition = i10;
        }

        void start(RecyclerView recyclerView, p pVar) {
            recyclerView.mViewFlinger.f();
            if (this.mStarted) {
                Log.w(RecyclerView.TAG, "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.mRecyclerView = recyclerView;
            this.mLayoutManager = pVar;
            int i10 = this.mTargetPosition;
            if (i10 == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.mState.f3117a = i10;
            this.mRunning = true;
            this.mPendingInitialRun = true;
            this.mTargetView = findViewByPosition(getTargetPosition());
            onStart();
            this.mRecyclerView.mViewFlinger.d();
            this.mStarted = true;
        }

        protected final void stop() {
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
    }

    static {
        Class cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new c();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    private void A() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            m0.Z(this);
        }
    }

    private void B(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof q) {
            q qVar = (q) layoutParams;
            if (!qVar.f3165c) {
                Rect rect = qVar.f3164b;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void C() {
        a0 a0Var = this.mState;
        a0Var.f3130n = -1L;
        a0Var.f3129m = -1;
        a0Var.f3131o = -1;
    }

    private void D() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        A();
    }

    private void E() {
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        d0 d0VarFindContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (d0VarFindContainingViewHolder == null) {
            C();
            return;
        }
        this.mState.f3130n = this.mAdapter.hasStableIds() ? d0VarFindContainingViewHolder.getItemId() : -1L;
        this.mState.f3129m = this.mDataSetHasChangedAfterLayout ? -1 : d0VarFindContainingViewHolder.isRemoved() ? d0VarFindContainingViewHolder.mOldPosition : d0VarFindContainingViewHolder.getAbsoluteAdapterPosition();
        this.mState.f3131o = n(d0VarFindContainingViewHolder.itemView);
    }

    private void F(h hVar, boolean z10, boolean z11) {
        h hVar2 = this.mAdapter;
        if (hVar2 != null) {
            hVar2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z10 || z11) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.y();
        h hVar3 = this.mAdapter;
        this.mAdapter = hVar;
        if (hVar != null) {
            hVar.registerAdapterDataObserver(this.mObserver);
            hVar.onAttachedToRecyclerView(this);
        }
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.onAdapterChanged(hVar3, this.mAdapter);
        }
        this.mRecycler.x(hVar3, this.mAdapter, z10);
        this.mState.f3123g = true;
    }

    private void G() {
        this.mViewFlinger.f();
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.stopSmoothScroller();
        }
    }

    private void a(d0 d0Var) {
        View view = d0Var.itemView;
        boolean z10 = view.getParent() == this;
        this.mRecycler.J(getChildViewHolder(view));
        if (d0Var.isTmpDetached()) {
            this.mChildHelper.c(view, -1, view.getLayoutParams(), true);
        } else if (z10) {
            this.mChildHelper.k(view);
        } else {
            this.mChildHelper.b(view, true);
        }
    }

    private void b(d0 d0Var, d0 d0Var2, m.b bVar, m.b bVar2, boolean z10, boolean z11) {
        d0Var.setIsRecyclable(false);
        if (z10) {
            a(d0Var);
        }
        if (d0Var != d0Var2) {
            if (z11) {
                a(d0Var2);
            }
            d0Var.mShadowedHolder = d0Var2;
            a(d0Var);
            this.mRecycler.J(d0Var);
            d0Var2.setIsRecyclable(false);
            d0Var2.mShadowingHolder = d0Var;
        }
        if (this.mItemAnimator.b(d0Var, d0Var2, bVar, bVar2)) {
            postAnimationRunner();
        }
    }

    private void c() {
        D();
        setScrollState(0);
    }

    static void clearNestedRecyclerViewIfNotNested(d0 d0Var) {
        WeakReference<RecyclerView> weakReference = d0Var.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == d0Var.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            d0Var.mNestedRecyclerView = null;
        }
    }

    private void d(Context context, String str, AttributeSet attributeSet, int i10, int i11) {
        Object[] objArr;
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String strO = o(context, strTrim);
            try {
                Class<? extends U> clsAsSubclass = Class.forName(strO, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(p.class);
                try {
                    constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i10), Integer.valueOf(i11)};
                } catch (NoSuchMethodException e10) {
                    objArr = null;
                    try {
                        constructor = clsAsSubclass.getConstructor(null);
                    } catch (NoSuchMethodException e11) {
                        e11.initCause(e10);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strO, e11);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((p) constructor.newInstance(objArr));
            } catch (ClassCastException e12) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strO, e12);
            } catch (ClassNotFoundException e13) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strO, e13);
            } catch (IllegalAccessException e14) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strO, e14);
            } catch (InstantiationException e15) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strO, e15);
            } catch (InvocationTargetException e16) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strO, e16);
            }
        }
    }

    private boolean e(int i10, int i11) {
        l(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i10 && iArr[1] == i11) ? false : true;
    }

    private void f() {
        int i10 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i10 == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(ConfigPackage.FRAME_SIZE_3);
        d0.b.b(accessibilityEventObtain, i10);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            RecyclerView recyclerViewFindNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i10));
            if (recyclerViewFindNestedRecyclerView != null) {
                return recyclerViewFindNestedRecyclerView;
            }
        }
        return null;
    }

    private void g() {
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f3126j = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.f();
        onEnterLayoutOrScroll();
        x();
        E();
        a0 a0Var = this.mState;
        a0Var.f3125i = a0Var.f3127k && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        a0Var.f3124h = a0Var.f3128l;
        a0Var.f3122f = this.mAdapter.getItemCount();
        l(this.mMinMaxLayoutPositions);
        if (this.mState.f3127k) {
            int iG = this.mChildHelper.g();
            for (int i10 = 0; i10 < iG; i10++) {
                d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.e(childViewHolderInt, this.mItemAnimator.t(this.mState, childViewHolderInt, m.e(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.f3125i && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.c(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f3128l) {
            saveOldPositions();
            a0 a0Var2 = this.mState;
            boolean z10 = a0Var2.f3123g;
            a0Var2.f3123g = false;
            this.mLayout.onLayoutChildren(this.mRecycler, a0Var2);
            this.mState.f3123g = z10;
            for (int i11 = 0; i11 < this.mChildHelper.g(); i11++) {
                d0 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.f(i11));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.i(childViewHolderInt2)) {
                    int iE = m.e(childViewHolderInt2);
                    boolean zHasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(ConfigPackage.FRAME_SIZE_6);
                    if (!zHasAnyOfTheFlags) {
                        iE |= ConfigPackage.FRAME_SIZE_5;
                    }
                    m.b bVarT = this.mItemAnimator.t(this.mState, childViewHolderInt2, iE, childViewHolderInt2.getUnmodifiedPayloads());
                    if (zHasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, bVarT);
                    } else {
                        this.mViewInfoStore.a(childViewHolderInt2, bVarT);
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f3121e = 2;
    }

    static d0 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((q) view.getLayoutParams()).f3163a;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        q qVar = (q) view.getLayoutParams();
        Rect rect2 = qVar.f3164b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) qVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) qVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) qVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin);
    }

    private androidx.core.view.w getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new androidx.core.view.w(this);
        }
        return this.mScrollingChildHelper;
    }

    private void h() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.j();
        this.mState.f3122f = this.mAdapter.getItemCount();
        this.mState.f3120d = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.f3115a;
            if (parcelable != null) {
                this.mLayout.onRestoreInstanceState(parcelable);
            }
            this.mPendingSavedState = null;
        }
        a0 a0Var = this.mState;
        a0Var.f3124h = false;
        this.mLayout.onLayoutChildren(this.mRecycler, a0Var);
        a0 a0Var2 = this.mState;
        a0Var2.f3123g = false;
        a0Var2.f3127k = a0Var2.f3127k && this.mItemAnimator != null;
        a0Var2.f3121e = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void i() {
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        a0 a0Var = this.mState;
        a0Var.f3121e = 1;
        if (a0Var.f3127k) {
            for (int iG = this.mChildHelper.g() - 1; iG >= 0; iG--) {
                d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(iG));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    m.b bVarS = this.mItemAnimator.s(this.mState, childViewHolderInt);
                    d0 d0VarG = this.mViewInfoStore.g(changedHolderKey);
                    if (d0VarG == null || d0VarG.shouldIgnore()) {
                        this.mViewInfoStore.d(childViewHolderInt, bVarS);
                    } else {
                        boolean zH = this.mViewInfoStore.h(d0VarG);
                        boolean zH2 = this.mViewInfoStore.h(childViewHolderInt);
                        if (zH && d0VarG == childViewHolderInt) {
                            this.mViewInfoStore.d(childViewHolderInt, bVarS);
                        } else {
                            m.b bVarN = this.mViewInfoStore.n(d0VarG);
                            this.mViewInfoStore.d(childViewHolderInt, bVarS);
                            m.b bVarM = this.mViewInfoStore.m(childViewHolderInt);
                            if (bVarN == null) {
                                p(changedHolderKey, childViewHolderInt, d0VarG);
                            } else {
                                b(d0VarG, childViewHolderInt, bVarN, bVarM, zH, zH2);
                            }
                        }
                    }
                }
            }
            this.mViewInfoStore.o(this.mViewInfoProcessCallback);
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        a0 a0Var2 = this.mState;
        a0Var2.f3119c = a0Var2.f3122f;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        a0Var2.f3127k = false;
        a0Var2.f3128l = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList arrayList = this.mRecycler.f3174b;
        if (arrayList != null) {
            arrayList.clear();
        }
        p pVar = this.mLayout;
        if (pVar.mPrefetchMaxObservedInInitialPrefetch) {
            pVar.mPrefetchMaxCountObserved = 0;
            pVar.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.K();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mViewInfoStore.f();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (e(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        z();
        C();
    }

    private boolean j(MotionEvent motionEvent) {
        t tVar = this.mInterceptingOnItemTouchListener;
        if (tVar == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return k(motionEvent);
        }
        tVar.b(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.mInterceptingOnItemTouchListener = null;
        }
        return true;
    }

    private boolean k(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            t tVar = this.mOnItemTouchListeners.get(i10);
            if (tVar.a(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = tVar;
                return true;
            }
        }
        return false;
    }

    private void l(int[] iArr) {
        int iG = this.mChildHelper.g();
        if (iG == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i10 = Integer.MAX_VALUE;
        int i11 = Integer.MIN_VALUE;
        for (int i12 = 0; i12 < iG; i12++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i12));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i10) {
                    i10 = layoutPosition;
                }
                if (layoutPosition > i11) {
                    i11 = layoutPosition;
                }
            }
        }
        iArr[0] = i10;
        iArr[1] = i11;
    }

    private View m() {
        d0 d0VarFindViewHolderForAdapterPosition;
        a0 a0Var = this.mState;
        int i10 = a0Var.f3129m;
        if (i10 == -1) {
            i10 = 0;
        }
        int iB = a0Var.b();
        for (int i11 = i10; i11 < iB; i11++) {
            d0 d0VarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i11);
            if (d0VarFindViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (d0VarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return d0VarFindViewHolderForAdapterPosition2.itemView;
            }
        }
        int iMin = Math.min(iB, i10);
        do {
            iMin--;
            if (iMin < 0 || (d0VarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin)) == null) {
                return null;
            }
        } while (!d0VarFindViewHolderForAdapterPosition.itemView.hasFocusable());
        return d0VarFindViewHolderForAdapterPosition.itemView;
    }

    private int n(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private String o(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private void p(long j10, d0 d0Var, d0 d0Var2) {
        int iG = this.mChildHelper.g();
        for (int i10 = 0; i10 < iG; i10++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
            if (childViewHolderInt != d0Var && getChangedHolderKey(childViewHolderInt) == j10) {
                h hVar = this.mAdapter;
                if (hVar == null || !hVar.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + d0Var + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + d0Var + exceptionLabel());
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + d0Var2 + " cannot be found but it is necessary for " + d0Var + exceptionLabel());
    }

    private boolean q() {
        int iG = this.mChildHelper.g();
        for (int i10 = 0; i10 < iG; i10++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.f(i10));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    private void r() {
        if (m0.u(this) == 0) {
            m0.v0(this, 8);
        }
    }

    private void s() {
        this.mChildHelper = new androidx.recyclerview.widget.i(new e());
    }

    private boolean t(View view, View view2, int i10) {
        int i11;
        if (view2 == null || view2 == this || view2 == view || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        byte b10 = -1;
        int i12 = this.mLayout.getLayoutDirection() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i13 = rect.left;
        Rect rect2 = this.mTempRect2;
        int i14 = rect2.left;
        if ((i13 < i14 || rect.right <= i14) && rect.right < rect2.right) {
            i11 = 1;
        } else {
            int i15 = rect.right;
            int i16 = rect2.right;
            i11 = ((i15 > i16 || i13 >= i16) && i13 > i14) ? -1 : 0;
        }
        int i17 = rect.top;
        int i18 = rect2.top;
        if ((i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom) {
            b10 = 1;
        } else {
            int i19 = rect.bottom;
            int i20 = rect2.bottom;
            if ((i19 <= i20 && i17 < i20) || i17 <= i18) {
                b10 = 0;
            }
        }
        if (i10 == 1) {
            return b10 < 0 || (b10 == 0 && i11 * i12 < 0);
        }
        if (i10 == 2) {
            return b10 > 0 || (b10 == 0 && i11 * i12 > 0);
        }
        if (i10 == 17) {
            return i11 < 0;
        }
        if (i10 == 33) {
            return b10 < 0;
        }
        if (i10 == 66) {
            return i11 > 0;
        }
        if (i10 == 130) {
            return b10 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i10 + exceptionLabel());
    }

    private void u(int i10, int i11, MotionEvent motionEvent, int i12) {
        p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean zCanScrollHorizontally = pVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        startNestedScroll(zCanScrollVertically ? (zCanScrollHorizontally ? 1 : 0) | 2 : zCanScrollHorizontally ? 1 : 0, i12);
        if (dispatchNestedPreScroll(zCanScrollHorizontally ? i10 : 0, zCanScrollVertically ? i11 : 0, this.mReusableIntPair, this.mScrollOffset, i12)) {
            int[] iArr2 = this.mReusableIntPair;
            i10 -= iArr2[0];
            i11 -= iArr2[1];
        }
        scrollByInternal(zCanScrollHorizontally ? i10 : 0, zCanScrollVertically ? i11 : 0, motionEvent, i12);
        androidx.recyclerview.widget.m mVar = this.mGapWorker;
        if (mVar != null && (i10 != 0 || i11 != 0)) {
            mVar.f(this, i10, i11);
        }
        stopNestedScroll(i12);
    }

    private void v(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY(i10) + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
        }
    }

    private boolean w() {
        return this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations();
    }

    private void x() {
        boolean z10;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.y();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (w()) {
            this.mAdapterHelper.w();
        } else {
            this.mAdapterHelper.j();
        }
        boolean z11 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f3127k = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z10 = this.mDataSetHasChangedAfterLayout) || z11 || this.mLayout.mRequestedSimpleAnimations) && (!z10 || this.mAdapter.hasStableIds());
        a0 a0Var = this.mState;
        a0Var.f3128l = a0Var.f3127k && z11 && !this.mDataSetHasChangedAfterLayout && w();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void y(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 0
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 1
            if (r1 >= 0) goto L21
            r6.ensureLeftGlow()
            android.widget.EdgeEffect r1 = r6.mLeftGlow
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r2 - r9
            androidx.core.widget.f.c(r1, r4, r9)
        L1f:
            r9 = r3
            goto L3c
        L21:
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r1 <= 0) goto L3b
            r6.ensureRightGlow()
            android.widget.EdgeEffect r1 = r6.mRightGlow
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            androidx.core.widget.f.c(r1, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L56
            r6.ensureTopGlow()
            android.widget.EdgeEffect r9 = r6.mTopGlow
            float r1 = -r10
            int r2 = r6.getHeight()
            float r2 = (float) r2
            float r1 = r1 / r2
            int r2 = r6.getWidth()
            float r2 = (float) r2
            float r7 = r7 / r2
            androidx.core.widget.f.c(r9, r1, r7)
            goto L72
        L56:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 <= 0) goto L71
            r6.ensureBottomGlow()
            android.widget.EdgeEffect r9 = r6.mBottomGlow
            int r1 = r6.getHeight()
            float r1 = (float) r1
            float r1 = r10 / r1
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r2 = r2 - r7
            androidx.core.widget.f.c(r9, r1, r2)
            goto L72
        L71:
            r3 = r9
        L72:
            if (r3 != 0) goto L7c
            int r7 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            androidx.core.view.m0.Z(r6)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.y(float, float, float, float):void");
    }

    private void z() {
        View viewFindViewById;
        if (!this.mPreserveFocusAfterLayout || this.mAdapter == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.mChildHelper.n(focusedChild)) {
                    return;
                }
            } else if (this.mChildHelper.g() == 0) {
                requestFocus();
                return;
            }
        }
        View viewM = null;
        d0 d0VarFindViewHolderForItemId = (this.mState.f3130n == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.f3130n);
        if (d0VarFindViewHolderForItemId != null && !this.mChildHelper.n(d0VarFindViewHolderForItemId.itemView) && d0VarFindViewHolderForItemId.itemView.hasFocusable()) {
            viewM = d0VarFindViewHolderForItemId.itemView;
        } else if (this.mChildHelper.g() > 0) {
            viewM = m();
        }
        if (viewM != null) {
            int i10 = this.mState.f3131o;
            if (i10 != -1 && (viewFindViewById = viewM.findViewById(i10)) != null && viewFindViewById.isFocusable()) {
                viewM = viewFindViewById;
            }
            viewM.requestFocus();
        }
    }

    void absorbGlows(int i10, int i11) {
        if (i10 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i10);
            }
        } else if (i10 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i10);
            }
        }
        if (i11 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i11);
            }
        } else if (i11 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i11);
            }
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        m0.Z(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        p pVar = this.mLayout;
        if (pVar == null || !pVar.onAddFocusables(this, arrayList, i10, i11)) {
            super.addFocusables(arrayList, i10, i11);
        }
    }

    public void addItemDecoration(o oVar, int i10) {
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i10 < 0) {
            this.mItemDecorations.add(oVar);
        } else {
            this.mItemDecorations.add(i10, oVar);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(r rVar) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(rVar);
    }

    public void addOnItemTouchListener(t tVar) {
        this.mOnItemTouchListeners.add(tVar);
    }

    public void addOnScrollListener(u uVar) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(uVar);
    }

    public void addRecyclerListener(x xVar) {
        c0.h.b(xVar != null, "'listener' arg cannot be null.");
        this.mRecyclerListeners.add(xVar);
    }

    void animateAppearance(d0 d0Var, m.b bVar, m.b bVar2) {
        d0Var.setIsRecyclable(false);
        if (this.mItemAnimator.a(d0Var, bVar, bVar2)) {
            postAnimationRunner();
        }
    }

    void animateDisappearance(d0 d0Var, m.b bVar, m.b bVar2) {
        a(d0Var);
        d0Var.setIsRecyclable(false);
        if (this.mItemAnimator.c(d0Var, bVar, bVar2)) {
            postAnimationRunner();
        }
    }

    void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        throw new IllegalStateException(str + exceptionLabel());
    }

    void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        if (this.mDispatchScrollCounter > 0) {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + exceptionLabel()));
        }
    }

    boolean canReuseUpdatedViewHolder(d0 d0Var) {
        m mVar = this.mItemAnimator;
        return mVar == null || mVar.g(d0Var, d0Var.getUnmodifiedPayloads());
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof q) && this.mLayout.checkLayoutParams((q) layoutParams);
    }

    void clearOldPositions() {
        int iJ = this.mChildHelper.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.d();
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<r> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<u> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        p pVar = this.mLayout;
        if (pVar != null && pVar.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    void considerReleasingGlowsOnScroll(int i10, int i11) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i10 <= 0) {
            zIsFinished = false;
        } else {
            this.mLeftGlow.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i10 < 0) {
            this.mRightGlow.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i11 > 0) {
            this.mTopGlow.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i11 < 0) {
            this.mBottomGlow.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            m0.Z(this);
        }
    }

    void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            z.i.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            z.i.b();
            return;
        }
        if (this.mAdapterHelper.p()) {
            if (!this.mAdapterHelper.o(4) || this.mAdapterHelper.o(11)) {
                if (this.mAdapterHelper.p()) {
                    z.i.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                    dispatchLayout();
                    z.i.b();
                    return;
                }
                return;
            }
            z.i.a(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.w();
            if (!this.mLayoutWasDefered) {
                if (q()) {
                    dispatchLayout();
                } else {
                    this.mAdapterHelper.i();
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            z.i.b();
        }
    }

    void defaultOnMeasure(int i10, int i11) {
        setMeasuredDimension(p.chooseSize(i10, getPaddingLeft() + getPaddingRight(), m0.y(this)), p.chooseSize(i11, getPaddingTop() + getPaddingBottom(), m0.x(this)));
    }

    void dispatchChildAttached(View view) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        h hVar = this.mAdapter;
        if (hVar != null && childViewHolderInt != null) {
            hVar.onViewAttachedToWindow(childViewHolderInt);
        }
        List<r> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewAttachedToWindow(view);
            }
        }
    }

    void dispatchChildDetached(View view) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        h hVar = this.mAdapter;
        if (hVar != null && childViewHolderInt != null) {
            hVar.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<r> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).onChildViewDetachedFromWindow(view);
            }
        }
    }

    void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.w(TAG, "No adapter attached; skipping layout");
            return;
        }
        if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
            return;
        }
        this.mState.f3126j = false;
        boolean z10 = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.f3121e == 1) {
            g();
            this.mLayout.setExactMeasureSpecsFrom(this);
            h();
        } else if (this.mAdapterHelper.q() || z10 || this.mLayout.getWidth() != getWidth() || this.mLayout.getHeight() != getHeight()) {
            this.mLayout.setExactMeasureSpecsFrom(this);
            h();
        } else {
            this.mLayout.setExactMeasureSpecsFrom(this);
        }
        i();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return getScrollingChildHelper().a(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return getScrollingChildHelper().b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return getScrollingChildHelper().f(i10, i11, i12, i13, iArr);
    }

    void dispatchOnScrollStateChanged(int i10) {
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.onScrollStateChanged(i10);
        }
        onScrollStateChanged(i10);
        u uVar = this.mScrollListener;
        if (uVar != null) {
            uVar.onScrollStateChanged(this, i10);
        }
        List<u> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrollStateChanged(this, i10);
            }
        }
    }

    void dispatchOnScrolled(int i10, int i11) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i10, scrollY - i11);
        onScrolled(i10, i11);
        u uVar = this.mScrollListener;
        if (uVar != null) {
            uVar.onScrolled(this, i10, i11);
        }
        List<u> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).onScrolled(this, i10, i11);
            }
        }
        this.mDispatchScrollCounter--;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        int i10;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            d0 d0Var = this.mPendingAccessibilityImportanceChange.get(size);
            if (d0Var.itemView.getParent() == this && !d0Var.shouldIgnore() && (i10 = d0Var.mPendingAccessibilityState) != -1) {
                m0.t0(d0Var.itemView, i10);
                d0Var.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z10;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z11 = false;
        for (int i10 = 0; i10 < size; i10++) {
            this.mItemDecorations.get(i10).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z10 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z10 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z10 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z10 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z11 = true;
            }
            z10 |= z11;
            canvas.restoreToCount(iSave4);
        }
        if ((z10 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.p()) ? z10 : true) {
            m0.Z(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this, 3);
        this.mBottomGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this, 0);
        this.mLeftGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this, 2);
        this.mRightGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this, 1);
        this.mTopGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    final void fillRemainingScrollValues(a0 a0Var) {
        if (getScrollState() != 2) {
            a0Var.f3132p = 0;
            a0Var.f3133q = 0;
        } else {
            OverScroller overScroller = this.mViewFlinger.f3137c;
            a0Var.f3132p = overScroller.getFinalX() - overScroller.getCurrX();
            a0Var.f3133q = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public View findChildViewUnder(float f10, float f11) {
        for (int iG = this.mChildHelper.g() - 1; iG >= 0; iG--) {
            View viewF = this.mChildHelper.f(iG);
            float translationX = viewF.getTranslationX();
            float translationY = viewF.getTranslationY();
            if (f10 >= viewF.getLeft() + translationX && f10 <= viewF.getRight() + translationX && f11 >= viewF.getTop() + translationY && f11 <= viewF.getBottom() + translationY) {
                return viewF;
            }
        }
        return null;
    }

    public View findContainingItemView(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public d0 findContainingViewHolder(View view) {
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(viewFindContainingItemView);
    }

    public d0 findViewHolderForAdapterPosition(int i10) {
        d0 d0Var = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int iJ = this.mChildHelper.j();
        for (int i11 = 0; i11 < iJ; i11++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i11));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i10) {
                if (!this.mChildHelper.n(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                d0Var = childViewHolderInt;
            }
        }
        return d0Var;
    }

    public d0 findViewHolderForItemId(long j10) {
        h hVar = this.mAdapter;
        d0 d0Var = null;
        if (hVar != null && hVar.hasStableIds()) {
            int iJ = this.mChildHelper.j();
            for (int i10 = 0; i10 < iJ; i10++) {
                d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j10) {
                    if (!this.mChildHelper.n(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    d0Var = childViewHolderInt;
                }
            }
        }
        return d0Var;
    }

    public d0 findViewHolderForLayoutPosition(int i10) {
        return findViewHolderForPosition(i10, false);
    }

    @Deprecated
    public d0 findViewHolderForPosition(int i10) {
        return findViewHolderForPosition(i10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v5 */
    public boolean fling(int i10, int i11) {
        p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutSuppressed) {
            return false;
        }
        int iCanScrollHorizontally = pVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (iCanScrollHorizontally == 0 || Math.abs(i10) < this.mMinFlingVelocity) {
            i10 = 0;
        }
        if (!zCanScrollVertically || Math.abs(i11) < this.mMinFlingVelocity) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return false;
        }
        float f10 = i10;
        float f11 = i11;
        if (!dispatchNestedPreFling(f10, f11)) {
            boolean z10 = iCanScrollHorizontally != 0 || zCanScrollVertically;
            dispatchNestedFling(f10, f11, z10);
            s sVar = this.mOnFlingListener;
            if (sVar != null && sVar.onFling(i10, i11)) {
                return true;
            }
            if (z10) {
                if (zCanScrollVertically) {
                    iCanScrollHorizontally = (iCanScrollHorizontally == true ? 1 : 0) | 2;
                }
                startNestedScroll(iCanScrollHorizontally, 1);
                int i12 = this.mMaxFlingVelocity;
                int iMax = Math.max(-i12, Math.min(i10, i12));
                int i13 = this.mMaxFlingVelocity;
                this.mViewFlinger.b(iMax, Math.max(-i13, Math.min(i11, i13)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i10) {
        View viewOnFocusSearchFailed;
        boolean z10;
        View viewOnInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i10);
        if (viewOnInterceptFocusSearch != null) {
            return viewOnInterceptFocusSearch;
        }
        boolean z11 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z11 && (i10 == 2 || i10 == 1)) {
            if (this.mLayout.canScrollVertically()) {
                int i11 = i10 == 2 ? AIProtocol.PROTOCOL_VERSION_AIGC_CLOUD : 33;
                z10 = focusFinder.findNextFocus(this, view, i11) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i10 = i11;
                }
            } else {
                z10 = false;
            }
            if (!z10 && this.mLayout.canScrollHorizontally()) {
                int i12 = (this.mLayout.getLayoutDirection() == 1) ^ (i10 == 2) ? 66 : 17;
                boolean z12 = focusFinder.findNextFocus(this, view, i12) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i10 = i12;
                }
                z10 = z12;
            }
            if (z10) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i10, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            viewOnFocusSearchFailed = focusFinder.findNextFocus(this, view, i10);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i10);
            if (viewFindNextFocus == null && z11) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                viewOnFocusSearchFailed = this.mLayout.onFocusSearchFailed(view, i10, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                viewOnFocusSearchFailed = viewFindNextFocus;
            }
        }
        if (viewOnFocusSearchFailed == null || viewOnFocusSearchFailed.hasFocusable()) {
            return t(view, viewOnFocusSearchFailed, i10) ? viewOnFocusSearchFailed : super.focusSearch(view, i10);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i10);
        }
        B(viewOnFocusSearchFailed, null);
        return view;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        p pVar = this.mLayout;
        if (pVar != null) {
            return pVar.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        p pVar = this.mLayout;
        if (pVar != null) {
            return pVar.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public h getAdapter() {
        return this.mAdapter;
    }

    int getAdapterPositionInRecyclerView(d0 d0Var) {
        if (d0Var.hasAnyOfTheFlags(524) || !d0Var.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.e(d0Var.mPosition);
    }

    @Override // android.view.View
    public int getBaseline() {
        p pVar = this.mLayout;
        return pVar != null ? pVar.getBaseline() : super.getBaseline();
    }

    long getChangedHolderKey(d0 d0Var) {
        return this.mAdapter.hasStableIds() ? d0Var.getItemId() : d0Var.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        return super.getChildDrawingOrder(i10, i11);
    }

    public long getChildItemId(View view) {
        d0 childViewHolderInt;
        h hVar = this.mAdapter;
        if (hVar == null || !hVar.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    public int getChildLayoutPosition(View view) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public d0 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public androidx.recyclerview.widget.v getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public l getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public m getItemAnimator() {
        return this.mItemAnimator;
    }

    Rect getItemDecorInsetsForChild(View view) {
        q qVar = (q) view.getLayoutParams();
        if (!qVar.f3165c) {
            return qVar.f3164b;
        }
        if (this.mState.e() && (qVar.b() || qVar.d())) {
            return qVar.f3164b;
        }
        Rect rect = qVar.f3164b;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i10).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i11 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i11 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        qVar.f3165c = false;
        return rect;
    }

    public o getItemDecorationAt(int i10) {
        int itemDecorationCount = getItemDecorationCount();
        if (i10 >= 0 && i10 < itemDecorationCount) {
            return this.mItemDecorations.get(i10);
        }
        throw new IndexOutOfBoundsException(i10 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public p getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public s getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public v getRecycledViewPool() {
        return this.mRecycler.i();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().k();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.p();
    }

    void initAdapterManager() {
        this.mAdapterHelper = new androidx.recyclerview.widget.a(new f());
    }

    void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.l(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R$dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R$dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R$dimen.fastscroll_margin));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + exceptionLabel());
        }
    }

    void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        m mVar = this.mItemAnimator;
        return mVar != null && mVar.p();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().m();
    }

    void jumpToPositionForSmoothScroller(int i10) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i10);
        awakenScrollBars();
    }

    void markItemDecorInsetsDirty() {
        int iJ = this.mChildHelper.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            ((q) this.mChildHelper.i(i10).getLayoutParams()).f3165c = true;
        }
        this.mRecycler.s();
    }

    void markKnownViewsInvalid() {
        int iJ = this.mChildHelper.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.t();
    }

    public void nestedScrollBy(int i10, int i11) {
        u(i10, i11, null, 1);
    }

    public void offsetChildrenHorizontal(int i10) {
        int iG = this.mChildHelper.g();
        for (int i11 = 0; i11 < iG; i11++) {
            this.mChildHelper.f(i11).offsetLeftAndRight(i10);
        }
    }

    public void offsetChildrenVertical(int i10) {
        int iG = this.mChildHelper.g();
        for (int i11 = 0; i11 < iG; i11++) {
            this.mChildHelper.f(i11).offsetTopAndBottom(i10);
        }
    }

    void offsetPositionRecordsForInsert(int i10, int i11) {
        int iJ = this.mChildHelper.j();
        for (int i12 = 0; i12 < iJ; i12++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i12));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i10) {
                childViewHolderInt.offsetPosition(i11, false);
                this.mState.f3123g = true;
            }
        }
        this.mRecycler.u(i10, i11);
        requestLayout();
    }

    void offsetPositionRecordsForMove(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int iJ = this.mChildHelper.j();
        if (i10 < i11) {
            i14 = -1;
            i13 = i10;
            i12 = i11;
        } else {
            i12 = i10;
            i13 = i11;
            i14 = 1;
        }
        for (int i16 = 0; i16 < iJ; i16++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i16));
            if (childViewHolderInt != null && (i15 = childViewHolderInt.mPosition) >= i13 && i15 <= i12) {
                if (i15 == i10) {
                    childViewHolderInt.offsetPosition(i11 - i10, false);
                } else {
                    childViewHolderInt.offsetPosition(i14, false);
                }
                this.mState.f3123g = true;
            }
        }
        this.mRecycler.v(i10, i11);
        requestLayout();
    }

    void offsetPositionRecordsForRemove(int i10, int i11, boolean z10) {
        int i12 = i10 + i11;
        int iJ = this.mChildHelper.j();
        for (int i13 = 0; i13 < iJ; i13++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i13));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i14 = childViewHolderInt.mPosition;
                if (i14 >= i12) {
                    childViewHolderInt.offsetPosition(-i11, z10);
                    this.mState.f3123g = true;
                } else if (i14 >= i10) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i10 - 1, -i11, z10);
                    this.mState.f3123g = true;
                }
            }
        }
        this.mRecycler.w(i10, i11, z10);
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x004e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.mLayoutOrScrollCounter = r0
            r1 = 1
            r5.mIsAttached = r1
            boolean r2 = r5.mFirstLayoutComplete
            if (r2 == 0) goto L14
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L14
            goto L15
        L14:
            r1 = r0
        L15:
            r5.mFirstLayoutComplete = r1
            androidx.recyclerview.widget.RecyclerView$p r1 = r5.mLayout
            if (r1 == 0) goto L1e
            r1.dispatchAttachedToWindow(r5)
        L1e:
            r5.mPostedAnimatorRunner = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto L61
            java.lang.ThreadLocal r0 = androidx.recyclerview.widget.m.f3427h
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.m r1 = (androidx.recyclerview.widget.m) r1
            r5.mGapWorker = r1
            if (r1 != 0) goto L5c
            androidx.recyclerview.widget.m r1 = new androidx.recyclerview.widget.m
            r1.<init>()
            r5.mGapWorker = r1
            android.view.Display r1 = androidx.core.view.m0.q(r5)
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L4e
            if (r1 == 0) goto L4e
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L4e
            goto L50
        L4e:
            r1 = 1114636288(0x42700000, float:60.0)
        L50:
            androidx.recyclerview.widget.m r2 = r5.mGapWorker
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f3431c = r3
            r0.set(r2)
        L5c:
            androidx.recyclerview.widget.m r0 = r5.mGapWorker
            r0.a(r5)
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        androidx.recyclerview.widget.m mVar;
        super.onDetachedFromWindow();
        m mVar2 = this.mItemAnimator;
        if (mVar2 != null) {
            mVar2.k();
        }
        stopScroll();
        this.mIsAttached = false;
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.j();
        if (!ALLOW_THREAD_GAP_WORK || (mVar = this.mGapWorker) == null) {
            return;
        }
        mVar.j(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mItemDecorations.get(i10).onDraw(canvas, this, this.mState);
        }
    }

    void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x006c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$p r0 = r5.mLayout
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.mLayoutSuppressed
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L78
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3e
            androidx.recyclerview.widget.RecyclerView$p r0 = r5.mLayout
            boolean r0 = r0.canScrollVertically()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = r2
        L2d:
            androidx.recyclerview.widget.RecyclerView$p r3 = r5.mLayout
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L3c
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L64
        L3c:
            r3 = r2
            goto L64
        L3e:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L62
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$p r3 = r5.mLayout
            boolean r3 = r3.canScrollVertically()
            if (r3 == 0) goto L57
            float r0 = -r0
            goto L3c
        L57:
            androidx.recyclerview.widget.RecyclerView$p r3 = r5.mLayout
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L62
            r3 = r0
            r0 = r2
            goto L64
        L62:
            r0 = r2
            r3 = r0
        L64:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6c
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L78
        L6c:
            float r2 = r5.mScaledHorizontalScrollFactor
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.mScaledVerticalScrollFactor
            float r0 = r0 * r3
            int r0 = (int) r0
            r3 = 1
            r5.u(r2, r0, r6, r3)
        L78:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (k(motionEvent)) {
            c();
            return true;
        }
        p pVar = this.mLayout;
        if (pVar == null) {
            return false;
        }
        boolean zCanScrollHorizontally = pVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
            if (this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i10 = zCanScrollHorizontally;
            if (zCanScrollVertically) {
                i10 = (zCanScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i10, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y11 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i11 = x11 - this.mInitialTouchX;
                int i12 = y11 - this.mInitialTouchY;
                if (!zCanScrollHorizontally || Math.abs(i11) <= this.mTouchSlop) {
                    z10 = false;
                } else {
                    this.mLastTouchX = x11;
                    z10 = true;
                }
                if (zCanScrollVertically && Math.abs(i12) > this.mTouchSlop) {
                    this.mLastTouchY = y11;
                    z10 = true;
                }
                if (z10) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            c();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x12;
            this.mInitialTouchX = x12;
            int y12 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y12;
            this.mInitialTouchY = y12;
        } else if (actionMasked == 6) {
            v(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        z.i.a(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        z.i.b();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        p pVar = this.mLayout;
        if (pVar == null) {
            defaultOnMeasure(i10, i11);
            return;
        }
        boolean z10 = false;
        if (pVar.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z10 = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z10;
            if (z10 || this.mAdapter == null) {
                return;
            }
            if (this.mState.f3121e == 1) {
                g();
            }
            this.mLayout.setMeasureSpecs(i10, i11);
            this.mState.f3126j = true;
            h();
            this.mLayout.setMeasuredDimensionFromChildren(i10, i11);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f3126j = true;
                h();
                this.mLayout.setMeasuredDimensionFromChildren(i10, i11);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            x();
            onExitLayoutOrScroll();
            a0 a0Var = this.mState;
            if (a0Var.f3128l) {
                a0Var.f3124h = true;
            } else {
                this.mAdapterHelper.j();
                this.mState.f3124h = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f3128l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        h hVar = this.mAdapter;
        if (hVar != null) {
            this.mState.f3122f = hVar.getItemCount();
        } else {
            this.mState.f3122f = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
        stopInterceptRequestLayout(false);
        this.mState.f3124h = false;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i10, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.getSuperState());
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.a(savedState2);
        } else {
            p pVar = this.mLayout;
            if (pVar != null) {
                savedState.f3115a = pVar.onSaveInstanceState();
            } else {
                savedState.f3115a = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i10) {
    }

    public void onScrolled(int i10, int i11) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:153:0x00df A[PHI: r0
      0x00df: PHI (r0v36 int) = (r0v26 int), (r0v40 int) binds: [B:147:0x00c8, B:151:0x00db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x00f8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instruction units count: 477
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        m0.a0(this, this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    void processDataSetCompletelyChanged(boolean z10) {
        this.mDispatchItemsChangedEvent = z10 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    void recordAnimationInfoIfBouncedHiddenView(d0 d0Var, m.b bVar) {
        d0Var.setFlags(0, ConfigPackage.FRAME_SIZE_6);
        if (this.mState.f3125i && d0Var.isUpdated() && !d0Var.isRemoved() && !d0Var.shouldIgnore()) {
            this.mViewInfoStore.c(getChangedHolderKey(d0Var), d0Var);
        }
        this.mViewInfoStore.e(d0Var, bVar);
    }

    void removeAndRecycleViews() {
        m mVar = this.mItemAnimator;
        if (mVar != null) {
            mVar.k();
        }
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        this.mRecycler.c();
    }

    boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean zR = this.mChildHelper.r(view);
        if (zR) {
            d0 childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.J(childViewHolderInt);
            this.mRecycler.C(childViewHolderInt);
        }
        stopInterceptRequestLayout(!zR);
        return zR;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z10) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z10);
    }

    public void removeItemDecoration(o oVar) {
        p pVar = this.mLayout;
        if (pVar != null) {
            pVar.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(oVar);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i10) {
        int itemDecorationCount = getItemDecorationCount();
        if (i10 >= 0 && i10 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i10));
            return;
        }
        throw new IndexOutOfBoundsException(i10 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(r rVar) {
        List<r> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(rVar);
    }

    public void removeOnItemTouchListener(t tVar) {
        this.mOnItemTouchListeners.remove(tVar);
        if (this.mInterceptingOnItemTouchListener == tVar) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(u uVar) {
        List<u> list = this.mScrollListeners;
        if (list != null) {
            list.remove(uVar);
        }
    }

    public void removeRecyclerListener(x xVar) {
        this.mRecyclerListeners.remove(xVar);
    }

    void repositionShadowingViews() {
        d0 d0Var;
        int iG = this.mChildHelper.g();
        for (int i10 = 0; i10 < iG; i10++) {
            View viewF = this.mChildHelper.f(i10);
            d0 childViewHolder = getChildViewHolder(viewF);
            if (childViewHolder != null && (d0Var = childViewHolder.mShadowingHolder) != null) {
                View view = d0Var.itemView;
                int left = viewF.getLeft();
                int top = viewF.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            B(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mOnItemTouchListeners.get(i10).c(z10);
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    void saveOldPositions() {
        int iJ = this.mChildHelper.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.i(i10));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i10, int i11) {
        p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean zCanScrollHorizontally = pVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (zCanScrollHorizontally || zCanScrollVertically) {
            if (!zCanScrollHorizontally) {
                i10 = 0;
            }
            if (!zCanScrollVertically) {
                i11 = 0;
            }
            scrollByInternal(i10, i11, null, 0);
        }
    }

    boolean scrollByInternal(int i10, int i11, MotionEvent motionEvent, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i10, i11, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i17 = iArr2[0];
            int i18 = iArr2[1];
            i13 = i18;
            i14 = i17;
            i15 = i10 - i17;
            i16 = i11 - i18;
        } else {
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i14, i13, i15, i16, this.mScrollOffset, i12, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i19 = iArr4[0];
        int i20 = i15 - i19;
        int i21 = iArr4[1];
        int i22 = i16 - i21;
        boolean z10 = (i19 == 0 && i21 == 0) ? false : true;
        int i23 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i24 = iArr5[0];
        this.mLastTouchX = i23 - i24;
        int i25 = this.mLastTouchY;
        int i26 = iArr5[1];
        this.mLastTouchY = i25 - i26;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i24;
        iArr6[1] = iArr6[1] + i26;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !androidx.core.view.u.b(motionEvent, 8194)) {
                y(motionEvent.getX(), i20, motionEvent.getY(), i22);
            }
            considerReleasingGlowsOnScroll(i10, i11);
        }
        if (i14 != 0 || i13 != 0) {
            dispatchOnScrolled(i14, i13);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z10 && i14 == 0 && i13 == 0) ? false : true;
    }

    void scrollStep(int i10, int i11, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        z.i.a(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int iScrollHorizontallyBy = i10 != 0 ? this.mLayout.scrollHorizontallyBy(i10, this.mRecycler, this.mState) : 0;
        int iScrollVerticallyBy = i11 != 0 ? this.mLayout.scrollVerticallyBy(i11, this.mRecycler, this.mState) : 0;
        z.i.b();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = iScrollHorizontallyBy;
            iArr[1] = iScrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i10) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            pVar.scrollToPosition(i10);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.v vVar) {
        this.mAccessibilityDelegate = vVar;
        m0.j0(this, vVar);
    }

    public void setAdapter(h hVar) {
        setLayoutFrozen(false);
        F(hVar, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(k kVar) {
        if (kVar == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    boolean setChildImportantForAccessibilityInternal(d0 d0Var, int i10) {
        if (!isComputingLayout()) {
            m0.t0(d0Var.itemView, i10);
            return true;
        }
        d0Var.mPendingAccessibilityState = i10;
        this.mPendingAccessibilityImportanceChange.add(d0Var);
        return false;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z10) {
        if (z10 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z10;
        super.setClipToPadding(z10);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(l lVar) {
        c0.h.e(lVar);
        this.mEdgeEffectFactory = lVar;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z10) {
        this.mHasFixedSize = z10;
    }

    public void setItemAnimator(m mVar) {
        m mVar2 = this.mItemAnimator;
        if (mVar2 != null) {
            mVar2.k();
            this.mItemAnimator.w(null);
        }
        this.mItemAnimator = mVar;
        if (mVar != null) {
            mVar.w(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i10) {
        this.mRecycler.G(i10);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z10) {
        suppressLayout(z10);
    }

    public void setLayoutManager(p pVar) {
        if (pVar == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            m mVar = this.mItemAnimator;
            if (mVar != null) {
                mVar.k();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            this.mRecycler.c();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            this.mRecycler.c();
        }
        this.mChildHelper.o();
        this.mLayout = pVar;
        if (pVar != null) {
            if (pVar.mRecyclerView != null) {
                throw new IllegalArgumentException("LayoutManager " + pVar + " is already attached to a RecyclerView:" + pVar.mRecyclerView.exceptionLabel());
            }
            pVar.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.K();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        getScrollingChildHelper().n(z10);
    }

    public void setOnFlingListener(s sVar) {
        this.mOnFlingListener = sVar;
    }

    @Deprecated
    public void setOnScrollListener(u uVar) {
        this.mScrollListener = uVar;
    }

    public void setPreserveFocusAfterLayout(boolean z10) {
        this.mPreserveFocusAfterLayout = z10;
    }

    public void setRecycledViewPool(v vVar) {
        this.mRecycler.E(vVar);
    }

    @Deprecated
    public void setRecyclerListener(x xVar) {
    }

    void setScrollState(int i10) {
        if (i10 == this.mScrollState) {
            return;
        }
        this.mScrollState = i10;
        if (i10 != 2) {
            G();
        }
        dispatchOnScrollStateChanged(i10);
    }

    public void setScrollingTouchSlop(int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i10 != 0) {
            if (i10 == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i10 + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(b0 b0Var) {
        this.mRecycler.F(b0Var);
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int iA = accessibilityEvent != null ? d0.b.a(accessibilityEvent) : 0;
        this.mEatenAccessibilityChangeFlags |= iA != 0 ? iA : 0;
        return true;
    }

    public void smoothScrollBy(int i10, int i11) {
        smoothScrollBy(i10, i11, null);
    }

    public void smoothScrollToPosition(int i10) {
        if (this.mLayoutSuppressed) {
            return;
        }
        p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            pVar.smoothScrollToPosition(this, this.mState, i10);
        }
    }

    void startInterceptRequestLayout() {
        int i10 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i10;
        if (i10 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return getScrollingChildHelper().p(i10);
    }

    void stopInterceptRequestLayout(boolean z10) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z10 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z10 && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().r();
    }

    public void stopScroll() {
        setScrollState(0);
        G();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z10) {
        if (z10 != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z10) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void swapAdapter(h hVar, boolean z10) {
        setLayoutFrozen(false);
        F(hVar, true, z10);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    void viewRangeUpdate(int i10, int i11, Object obj) {
        int i12;
        int iJ = this.mChildHelper.j();
        int i13 = i10 + i11;
        for (int i14 = 0; i14 < iJ; i14++) {
            View viewI = this.mChildHelper.i(i14);
            d0 childViewHolderInt = getChildViewHolderInt(viewI);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i12 = childViewHolderInt.mPosition) >= i10 && i12 < i13) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((q) viewI.getLayoutParams()).f3165c = true;
            }
        }
        this.mRecycler.M(i10, i11);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.recyclerViewStyle);
    }

    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().d(i10, i11, iArr, iArr2, i12);
    }

    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        return getScrollingChildHelper().g(i10, i11, i12, i13, iArr, i14);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.recyclerview.widget.RecyclerView.d0 findViewHolderForPosition(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.i r0 = r5.mChildHelper
            int r0 = r0.j()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3a
            androidx.recyclerview.widget.i r3 = r5.mChildHelper
            android.view.View r3 = r3.i(r2)
            androidx.recyclerview.widget.RecyclerView$d0 r3 = getChildViewHolderInt(r3)
            if (r3 == 0) goto L37
            boolean r4 = r3.isRemoved()
            if (r4 != 0) goto L37
            if (r7 == 0) goto L23
            int r4 = r3.mPosition
            if (r4 == r6) goto L2a
            goto L37
        L23:
            int r4 = r3.getLayoutPosition()
            if (r4 == r6) goto L2a
            goto L37
        L2a:
            androidx.recyclerview.widget.i r1 = r5.mChildHelper
            android.view.View r4 = r3.itemView
            boolean r1 = r1.n(r4)
            if (r1 == 0) goto L36
            r1 = r3
            goto L37
        L36:
            return r3
        L37:
            int r2 = r2 + 1
            goto L8
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.RecyclerView$d0");
    }

    public boolean hasNestedScrollingParent(int i10) {
        return getScrollingChildHelper().l(i10);
    }

    void onExitLayoutOrScroll(boolean z10) {
        int i10 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i10;
        if (i10 < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (z10) {
                f();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i10, int i11, Interpolator interpolator) {
        smoothScrollBy(i10, i11, interpolator, Integer.MIN_VALUE);
    }

    public boolean startNestedScroll(int i10, int i11) {
        return getScrollingChildHelper().q(i10, i11);
    }

    public void stopNestedScroll(int i10) {
        getScrollingChildHelper().s(i10);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        Parcelable f3115a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3115a = parcel.readParcelable(classLoader == null ? p.class.getClassLoader() : classLoader);
        }

        void a(SavedState savedState) {
            this.f3115a = savedState.f3115a;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeParcelable(this.f3115a, 0);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mObserver = new y();
        this.mRecycler = new w();
        this.mViewInfoStore = new androidx.recyclerview.widget.a0();
        this.mUpdateChildViewsRunnable = new a();
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = new l();
        this.mItemAnimator = new androidx.recyclerview.widget.j();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new c0();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new m.b() : null;
        this.mState = new a0();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new n();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new b();
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = p0.e(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = p0.h(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.w(this.mItemAnimatorListener);
        initAdapterManager();
        s();
        r();
        if (m0.t(this) == 0) {
            m0.t0(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.v(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerView, i10, 0);
        m0.h0(this, context, R$styleable.RecyclerView, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        String string = typedArrayObtainStyledAttributes.getString(R$styleable.RecyclerView_layoutManager);
        if (typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_android_clipToPadding, true);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_fastScrollEnabled, false);
        this.mEnableFastScroller = z10;
        if (z10) {
            initFastScroller((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollVerticalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(R$styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        typedArrayObtainStyledAttributes.recycle();
        d(context, string, attributeSet, i10, 0);
        int[] iArr = NESTED_SCROLLING_ATTRS;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        m0.h0(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes2, i10, 0);
        boolean z11 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z11);
    }

    public final void dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        getScrollingChildHelper().e(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    public void smoothScrollBy(int i10, int i11, Interpolator interpolator, int i12) {
        smoothScrollBy(i10, i11, interpolator, i12, false);
    }

    public static class q extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a */
        d0 f3163a;

        /* JADX INFO: renamed from: b */
        final Rect f3164b;

        /* JADX INFO: renamed from: c */
        boolean f3165c;

        /* JADX INFO: renamed from: d */
        boolean f3166d;

        public q(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3164b = new Rect();
            this.f3165c = true;
            this.f3166d = false;
        }

        public int a() {
            return this.f3163a.getLayoutPosition();
        }

        public boolean b() {
            return this.f3163a.isUpdated();
        }

        public boolean c() {
            return this.f3163a.isRemoved();
        }

        public boolean d() {
            return this.f3163a.isInvalid();
        }

        public q(int i10, int i11) {
            super(i10, i11);
            this.f3164b = new Rect();
            this.f3165c = true;
            this.f3166d = false;
        }

        public q(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3164b = new Rect();
            this.f3165c = true;
            this.f3166d = false;
        }

        public q(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3164b = new Rect();
            this.f3165c = true;
            this.f3166d = false;
        }

        public q(q qVar) {
            super((ViewGroup.LayoutParams) qVar);
            this.f3164b = new Rect();
            this.f3165c = true;
            this.f3166d = false;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        p pVar = this.mLayout;
        if (pVar != null) {
            return pVar.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    void smoothScrollBy(int i10, int i11, Interpolator interpolator, int i12, boolean z10) {
        p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!pVar.canScrollHorizontally()) {
            i10 = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        if (i12 != Integer.MIN_VALUE && i12 <= 0) {
            scrollBy(i10, i11);
            return;
        }
        if (z10) {
            int i13 = i10 != 0 ? 1 : 0;
            if (i11 != 0) {
                i13 |= 2;
            }
            startNestedScroll(i13, 1);
        }
        this.mViewFlinger.e(i10, i11, i12, interpolator);
    }

    public void addItemDecoration(o oVar) {
        addItemDecoration(oVar, -1);
    }
}
