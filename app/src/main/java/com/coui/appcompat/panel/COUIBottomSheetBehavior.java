package com.coui.appcompat.panel;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.c;
import androidx.dynamicanimation.animation.c;
import com.coui.appcompat.animation.COUIOutEaseInterpolator;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.appcompat.view.MaterialResource;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import com.support.panel.R$id;
import d0.h;
import d0.k;
import d7.h;
import d7.k;
import d7.l;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class COUIBottomSheetBehavior<V extends View> extends BottomSheetBehavior<V> implements d7.a, d7.b {
    private static final int CORNER_ANIMATION_DURATION = 500;
    private static boolean DEBUG = false;
    private static final float DEFAULT_PHYSICS_DAMPING_RATIO = 0.6f;
    private static final float DEFAULT_PHYSICS_FREQUENCY = 16.0f;
    private static final float DEFAULT_TRANSLATE_HIDING_ANIMATOR_DURATION = 333.0f;
    private static final int DEF_STYLE_RES;
    private static final int DRAG_TO_HIDDEN_SPEED_THRESHOLD = 5000;
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    public static final int PEEK_HEIGHT_AUTO = -1;
    private static final float PHYSICS_UNSET = Float.MIN_VALUE;
    private static final String PROPERTY_OFFSET_TOP_AND_BOTTOM = "offsetTopAndBottom";
    private static final int PULL_UP_DY_THRESHOLD = -100;
    private static final float PULL_UP_FRICTION = 0.5f;
    private static final int PULL_UP_SPEED_THRESHOLD = 10000;
    public static final int SAVE_ALL = -1;
    public static final int SAVE_FIT_TO_CONTENTS = 2;
    public static final int SAVE_HIDEABLE = 4;
    public static final int SAVE_NONE = 0;
    public static final int SAVE_PEEK_HEIGHT = 1;
    public static final int SAVE_SKIP_COLLAPSED = 8;
    private static final int SIGNIFICANT_VEL_THRESHOLD = 500;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "BottomSheetBehavior";
    private static final int VERTICAL_SLIDING_PARAMETER_THRESHOLD = 2;
    int activePointerId;
    private float alphaRadio;
    private final ArrayList<COUIBottomSheetCallback> callbacks;
    int collapsedOffset;
    private final c.AbstractC0020c dragCallback;
    private boolean draggable;
    float elevation;
    int expandedOffset;
    private boolean fitToContents;
    int fitToContentsOffset;
    private boolean gestureInsetBottomIgnored;
    int halfExpandedOffset;
    float halfExpandedRatio;
    boolean hideable;
    private boolean ignoreEvents;
    private Map<View, Integer> importantForAccessibilityMap;
    private int initialX;
    private int initialY;
    private ValueAnimator interpolatorAnimator;
    private boolean isShapeExpanded;
    private int lastNestedScrollDy;
    private Rect mBarRect;
    COUIPanelDragListener mCOUIPanelDragListener;
    private boolean mCanHideKeyboard;
    private Context mContext;
    private int mDialogMaxHeight;
    private h mDragBehavior;
    private View mDragChild;
    private float mDragCurrentValue;
    private float mDragDampingRatio;
    private float mDragFrequency;
    private k mDragValueHolder;
    private boolean mGlobalDrag;
    boolean mHalfExpandOffsetUseParentRootViewHeight;
    private boolean mIsHandlePanel;
    private boolean mIsIgnoreExpandedOffsetChange;
    private boolean mIsInTinyScreen;
    private int mLastOffsetInFling;
    private l mPhysicalAnimator;
    private boolean mPhysicsEnable;
    private COUIPanelPullUpListener mPullUpListener;
    private i materialShapeDrawable;
    private float maximumVelocity;
    private boolean nestedScrolled;
    WeakReference<View> nestedScrollingChildRef;
    int parentHeight;
    int parentMarginTop;
    int parentRootViewHeight;
    int parentWidth;
    private int peekHeight;
    private boolean peekHeightAuto;
    private int peekHeightMin;
    private int saveFlags;
    private COUIBottomSheetBehavior<V>.SettleRunnable settleRunnable;
    private n shapeAppearanceModelDefault;
    private boolean shapeThemingEnabled;
    private boolean skipCollapsed;
    int state;
    boolean touchingScrollingChild;
    private boolean updateImportantForAccessibilityOnSiblings;
    private VelocityTracker velocityTracker;
    androidx.customview.widget.c viewDragHelper;
    WeakReference<V> viewRef;

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ View val$child;
        final /* synthetic */ int val$finalState;

        AnonymousClass1(View view, int i10) {
            view = view;
            i = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            COUIBottomSheetBehavior.this.settleToState(view, i);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$2 */
    class AnonymousClass2 implements ValueAnimator.AnimatorUpdateListener {
        AnonymousClass2() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (COUIBottomSheetBehavior.this.materialShapeDrawable != null) {
                COUIBottomSheetBehavior.this.materialShapeDrawable.setInterpolation(fFloatValue);
            }
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$3 */
    class AnonymousClass3 implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ View val$child;

        AnonymousClass3(View view) {
            view = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
            view.offsetTopAndBottom(iFloatValue - COUIBottomSheetBehavior.this.mLastOffsetInFling);
            COUIBottomSheetBehavior.this.dispatchOnSlide(view.getTop());
            COUIBottomSheetBehavior.this.mLastOffsetInFling = iFloatValue;
            if (COUIBottomSheetBehavior.this.mPullUpListener != null) {
                COUIBottomSheetBehavior.this.calculatePanelOutsideAlpha(view);
            }
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$4 */
    class AnonymousClass4 extends AnimatorListenerAdapter {
        AnonymousClass4() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            COUIBottomSheetBehavior.this.setStateInternal(5);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$5 */
    class AnonymousClass5 extends androidx.dynamicanimation.animation.d {
        final /* synthetic */ View val$child;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(String str, View view) {
            super(str);
            view = view;
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(Object obj) {
            COUIBottomSheetBehavior.this.mLastOffsetInFling = 0;
            return COUIBottomSheetBehavior.this.mLastOffsetInFling;
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(Object obj, float f10) {
            int i10 = (int) f10;
            ((View) obj).offsetTopAndBottom(i10 - COUIBottomSheetBehavior.this.mLastOffsetInFling);
            COUIBottomSheetBehavior.this.dispatchOnSlide(view.getTop());
            COUIBottomSheetBehavior.this.mLastOffsetInFling = i10;
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$6 */
    class AnonymousClass6 implements c.q {
        AnonymousClass6() {
        }

        @Override // androidx.dynamicanimation.animation.c.q
        public void onAnimationEnd(androidx.dynamicanimation.animation.c cVar, boolean z10, float f10, float f11) {
            COUIBottomSheetBehavior.this.setStateInternal(5);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$7 */
    class AnonymousClass7 extends c.AbstractC0020c {
        AnonymousClass7() {
        }

        private boolean releasedLow(View view) {
            int top = view.getTop();
            COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
            return top > (cOUIBottomSheetBehavior.parentHeight + cOUIBottomSheetBehavior.getExpandedOffset()) / 2;
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionVertical(View view, int i10, int i11) {
            if (COUIBottomSheetBehavior.this.mPullUpListener != null) {
                COUIBottomSheetBehavior.this.mPullUpListener.onDraggingPanel();
            }
            int iOnDragging = 0;
            if (COUIBottomSheetBehavior.this.state == 1) {
                if (view.getTop() <= COUIBottomSheetBehavior.this.getExpandedOffset()) {
                    if (COUIBottomSheetBehavior.this.mPhysicsEnable && COUIBottomSheetBehavior.this.mDragBehavior.W()) {
                        COUIBottomSheetBehavior.this.mDragBehavior.S(0.0f);
                        COUIBottomSheetBehavior.this.mDragChild = null;
                    }
                    if (COUIBottomSheetBehavior.this.mPullUpListener != null && COUIBottomSheetBehavior.this.getExpandedOffset() > 0) {
                        COUIBottomSheetBehavior.this.mIsIgnoreExpandedOffsetChange = true;
                        if (i11 < 0) {
                            i11 = Math.max(i11, view.getMeasuredHeight() - COUIBottomSheetBehavior.this.mDialogMaxHeight);
                        }
                        if (i11 != 0) {
                            iOnDragging = COUIBottomSheetBehavior.this.mPullUpListener.onDragging(i11, COUIBottomSheetBehavior.this.getExpandedOffset());
                        }
                    }
                } else {
                    int top = view.getTop();
                    if (COUIBottomSheetBehavior.this.mPhysicsEnable) {
                        COUIBottomSheetBehavior.this.dragToNewTop(view, top + i11);
                    } else if (COUIBottomSheetBehavior.this.getYVelocity() > 10000.0f) {
                        i10 = ((int) ((i11 * 0.5f) + 0.5f)) + top;
                    }
                }
            }
            COUIBottomSheetBehavior.this.calculatePanelOutsideAlpha(view);
            int expandedOffset = COUIBottomSheetBehavior.this.getExpandedOffset() - iOnDragging;
            COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
            return x.a.b(i10, expandedOffset, cOUIBottomSheetBehavior.hideable ? cOUIBottomSheetBehavior.parentHeight : cOUIBottomSheetBehavior.collapsedOffset);
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int getViewVerticalDragRange(View view) {
            COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
            return cOUIBottomSheetBehavior.hideable ? cOUIBottomSheetBehavior.parentHeight : cOUIBottomSheetBehavior.collapsedOffset;
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewDragStateChanged(int i10) {
            if (i10 == 1 && COUIBottomSheetBehavior.this.draggable) {
                COUIBottomSheetBehavior.this.setStateInternal(1);
            }
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            COUIBottomSheetBehavior.this.dispatchOnSlide(i11);
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewReleased(View view, float f10, float f11) {
            int i10;
            if (COUIBottomSheetBehavior.this.mPhysicsEnable && COUIBottomSheetBehavior.this.mDragBehavior.W()) {
                COUIBottomSheetBehavior.this.mDragBehavior.S(0.0f);
                COUIBottomSheetBehavior.this.mDragChild = null;
            }
            COUIBottomSheetBehavior.this.mIsIgnoreExpandedOffsetChange = false;
            if (COUIBottomSheetBehavior.this.mPullUpListener != null) {
                COUIBottomSheetBehavior.this.mPullUpListener.onReleasedDrag();
                float ratio = view instanceof COUIPanelPercentFrameLayout ? ((COUIPanelPercentFrameLayout) view).getRatio() : 1.0f;
                COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
                if (((int) (((cOUIBottomSheetBehavior.parentHeight - cOUIBottomSheetBehavior.getMarginBottom(view)) / ratio) - (view.getHeight() / ratio))) <= COUIBottomSheetBehavior.this.getExpandedOffset() && view.getTop() < COUIBottomSheetBehavior.this.getExpandedOffset()) {
                    COUIBottomSheetBehavior.this.mPullUpListener.onReleased(COUIBottomSheetBehavior.this.getExpandedOffset());
                    return;
                }
            }
            int i11 = 6;
            if (f11 < 0.0f) {
                if (COUIBottomSheetBehavior.this.fitToContents) {
                    i10 = COUIBottomSheetBehavior.this.fitToContentsOffset;
                } else {
                    int top = view.getTop();
                    COUIBottomSheetBehavior cOUIBottomSheetBehavior2 = COUIBottomSheetBehavior.this;
                    int i12 = cOUIBottomSheetBehavior2.halfExpandedOffset;
                    if (top > i12) {
                        i10 = i12;
                    } else {
                        i10 = cOUIBottomSheetBehavior2.expandedOffset;
                    }
                }
                i11 = 3;
            } else {
                COUIBottomSheetBehavior cOUIBottomSheetBehavior3 = COUIBottomSheetBehavior.this;
                if (cOUIBottomSheetBehavior3.hideable && cOUIBottomSheetBehavior3.shouldHide(view, f11)) {
                    COUIPanelDragListener cOUIPanelDragListener = COUIBottomSheetBehavior.this.mCOUIPanelDragListener;
                    if (cOUIPanelDragListener != null && cOUIPanelDragListener.onDragWhileEditing()) {
                        COUIBottomSheetBehavior cOUIBottomSheetBehavior4 = COUIBottomSheetBehavior.this;
                        int i13 = cOUIBottomSheetBehavior4.fitToContentsOffset;
                        cOUIBottomSheetBehavior4.mCanHideKeyboard = false;
                        i10 = i13;
                    } else if ((Math.abs(f10) < Math.abs(f11) && f11 > 500.0f) || releasedLow(view)) {
                        COUIBottomSheetBehavior cOUIBottomSheetBehavior5 = COUIBottomSheetBehavior.this;
                        int i14 = cOUIBottomSheetBehavior5.parentRootViewHeight;
                        cOUIBottomSheetBehavior5.mCanHideKeyboard = true;
                        i10 = i14;
                        i11 = 5;
                    } else if (COUIBottomSheetBehavior.this.fitToContents) {
                        i10 = COUIBottomSheetBehavior.this.fitToContentsOffset;
                    } else if (Math.abs(view.getTop() - COUIBottomSheetBehavior.this.expandedOffset) < Math.abs(view.getTop() - COUIBottomSheetBehavior.this.halfExpandedOffset)) {
                        i10 = COUIBottomSheetBehavior.this.expandedOffset;
                    } else {
                        i10 = COUIBottomSheetBehavior.this.halfExpandedOffset;
                    }
                    i11 = 3;
                } else if (f11 == 0.0f || Math.abs(f10) > Math.abs(f11)) {
                    int top2 = view.getTop();
                    if (!COUIBottomSheetBehavior.this.fitToContents) {
                        COUIBottomSheetBehavior cOUIBottomSheetBehavior6 = COUIBottomSheetBehavior.this;
                        int i15 = cOUIBottomSheetBehavior6.halfExpandedOffset;
                        if (top2 < i15) {
                            if (top2 < Math.abs(top2 - cOUIBottomSheetBehavior6.collapsedOffset)) {
                                i10 = COUIBottomSheetBehavior.this.expandedOffset;
                                i11 = 3;
                            } else {
                                i10 = COUIBottomSheetBehavior.this.halfExpandedOffset;
                            }
                        } else if (Math.abs(top2 - i15) < Math.abs(top2 - COUIBottomSheetBehavior.this.collapsedOffset)) {
                            i10 = COUIBottomSheetBehavior.this.halfExpandedOffset;
                        } else {
                            i10 = COUIBottomSheetBehavior.this.collapsedOffset;
                            i11 = 4;
                        }
                    } else if (Math.abs(top2 - COUIBottomSheetBehavior.this.fitToContentsOffset) < Math.abs(top2 - COUIBottomSheetBehavior.this.collapsedOffset)) {
                        i10 = COUIBottomSheetBehavior.this.fitToContentsOffset;
                        i11 = 3;
                    } else {
                        i10 = COUIBottomSheetBehavior.this.collapsedOffset;
                        i11 = 4;
                    }
                } else {
                    if (COUIBottomSheetBehavior.this.fitToContents) {
                        COUIBottomSheetBehavior cOUIBottomSheetBehavior7 = COUIBottomSheetBehavior.this;
                        COUIPanelDragListener cOUIPanelDragListener2 = cOUIBottomSheetBehavior7.mCOUIPanelDragListener;
                        if (cOUIPanelDragListener2 == null) {
                            i10 = cOUIBottomSheetBehavior7.collapsedOffset;
                        } else if (cOUIPanelDragListener2.onDragWhileEditing()) {
                            i10 = COUIBottomSheetBehavior.this.fitToContentsOffset;
                            i11 = 3;
                        } else {
                            i10 = COUIBottomSheetBehavior.this.parentRootViewHeight;
                            i11 = 5;
                        }
                    } else {
                        int top3 = view.getTop();
                        if (Math.abs(top3 - COUIBottomSheetBehavior.this.halfExpandedOffset) < Math.abs(top3 - COUIBottomSheetBehavior.this.collapsedOffset)) {
                            i10 = COUIBottomSheetBehavior.this.halfExpandedOffset;
                        } else {
                            i10 = COUIBottomSheetBehavior.this.collapsedOffset;
                        }
                    }
                    i11 = 4;
                }
            }
            COUIBottomSheetBehavior.this.startSettlingAnimation(view, i11, i10, true);
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public boolean tryCaptureView(View view, int i10) {
            COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
            int i11 = cOUIBottomSheetBehavior.state;
            if (i11 == 1 || cOUIBottomSheetBehavior.touchingScrollingChild) {
                return false;
            }
            if (i11 == 3 && cOUIBottomSheetBehavior.activePointerId == i10) {
                WeakReference<View> weakReference = cOUIBottomSheetBehavior.nestedScrollingChildRef;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            WeakReference<V> weakReference2 = COUIBottomSheetBehavior.this.viewRef;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$8 */
    class AnonymousClass8 implements d0.k {
        final /* synthetic */ int val$state;

        AnonymousClass8(int i10) {
            i = i10;
        }

        @Override // d0.k
        public boolean perform(View view, k.a aVar) {
            COUIBottomSheetBehavior.this.setPanelState(i);
            return true;
        }
    }

    public static abstract class COUIBottomSheetCallback {
        public abstract void onSlide(View view, float f10);

        public abstract void onStateChanged(View view, int i10);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SaveFlags {
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.SavedState.1
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
                return new SavedState(parcel, (ClassLoader) null);
            }
        };
        boolean fitToContents;
        boolean hideable;
        int peekHeight;
        boolean skipCollapsed;
        final int state;

        /* JADX INFO: renamed from: com.coui.appcompat.panel.COUIBottomSheetBehavior$SavedState$1 */
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
                return new SavedState(parcel, (ClassLoader) null);
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, COUIBottomSheetBehavior<?> cOUIBottomSheetBehavior) {
            super(parcelable);
            this.state = cOUIBottomSheetBehavior.state;
            this.peekHeight = ((COUIBottomSheetBehavior) cOUIBottomSheetBehavior).peekHeight;
            this.fitToContents = ((COUIBottomSheetBehavior) cOUIBottomSheetBehavior).fitToContents;
            this.hideable = cOUIBottomSheetBehavior.hideable;
            this.skipCollapsed = ((COUIBottomSheetBehavior) cOUIBottomSheetBehavior).skipCollapsed;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i10) {
            super(parcelable);
            this.state = i10;
        }
    }

    private class SettleRunnable implements Runnable {
        private boolean isPosted;
        int targetState;
        private final View view;

        SettleRunnable(View view, int i10) {
            this.view = view;
            this.targetState = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.customview.widget.c cVar = COUIBottomSheetBehavior.this.viewDragHelper;
            if (cVar == null || !cVar.m(true)) {
                COUIBottomSheetBehavior.this.setStateInternal(this.targetState);
            } else {
                COUIBottomSheetBehavior.this.calculatePanelOutsideAlpha(this.view);
                m0.a0(this.view, this);
            }
            this.isPosted = false;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    static {
        DEBUG = COUILog.LOG_DEBUG || COUILog.isLoggable(TAG, 3);
        DEF_STYLE_RES = R$style.Widget_Design_BottomSheet_Modal;
    }

    public COUIBottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.saveFlags = 0;
        this.fitToContents = true;
        this.updateImportantForAccessibilityOnSiblings = false;
        this.settleRunnable = null;
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.mHalfExpandOffsetUseParentRootViewHeight = true;
        this.callbacks = new ArrayList<>();
        this.mLastOffsetInFling = 0;
        this.alphaRadio = 0.0f;
        this.mDragFrequency = 16.0f;
        this.mDragDampingRatio = 0.6f;
        this.mPhysicsEnable = false;
        this.mDragChild = null;
        this.mIsInTinyScreen = false;
        this.mIsHandlePanel = false;
        this.mBarRect = new Rect();
        this.mGlobalDrag = true;
        this.dragCallback = new c.AbstractC0020c() { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.7
            AnonymousClass7() {
            }

            private boolean releasedLow(View view) {
                int top = view.getTop();
                COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
                return top > (cOUIBottomSheetBehavior.parentHeight + cOUIBottomSheetBehavior.getExpandedOffset()) / 2;
            }

            @Override // androidx.customview.widget.c.AbstractC0020c
            public int clampViewPositionHorizontal(View view, int i102, int i11) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.c.AbstractC0020c
            public int clampViewPositionVertical(View view, int i102, int i11) {
                if (COUIBottomSheetBehavior.this.mPullUpListener != null) {
                    COUIBottomSheetBehavior.this.mPullUpListener.onDraggingPanel();
                }
                int iOnDragging = 0;
                if (COUIBottomSheetBehavior.this.state == 1) {
                    if (view.getTop() <= COUIBottomSheetBehavior.this.getExpandedOffset()) {
                        if (COUIBottomSheetBehavior.this.mPhysicsEnable && COUIBottomSheetBehavior.this.mDragBehavior.W()) {
                            COUIBottomSheetBehavior.this.mDragBehavior.S(0.0f);
                            COUIBottomSheetBehavior.this.mDragChild = null;
                        }
                        if (COUIBottomSheetBehavior.this.mPullUpListener != null && COUIBottomSheetBehavior.this.getExpandedOffset() > 0) {
                            COUIBottomSheetBehavior.this.mIsIgnoreExpandedOffsetChange = true;
                            if (i11 < 0) {
                                i11 = Math.max(i11, view.getMeasuredHeight() - COUIBottomSheetBehavior.this.mDialogMaxHeight);
                            }
                            if (i11 != 0) {
                                iOnDragging = COUIBottomSheetBehavior.this.mPullUpListener.onDragging(i11, COUIBottomSheetBehavior.this.getExpandedOffset());
                            }
                        }
                    } else {
                        int top = view.getTop();
                        if (COUIBottomSheetBehavior.this.mPhysicsEnable) {
                            COUIBottomSheetBehavior.this.dragToNewTop(view, top + i11);
                        } else if (COUIBottomSheetBehavior.this.getYVelocity() > 10000.0f) {
                            i102 = ((int) ((i11 * 0.5f) + 0.5f)) + top;
                        }
                    }
                }
                COUIBottomSheetBehavior.this.calculatePanelOutsideAlpha(view);
                int expandedOffset = COUIBottomSheetBehavior.this.getExpandedOffset() - iOnDragging;
                COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
                return x.a.b(i102, expandedOffset, cOUIBottomSheetBehavior.hideable ? cOUIBottomSheetBehavior.parentHeight : cOUIBottomSheetBehavior.collapsedOffset);
            }

            @Override // androidx.customview.widget.c.AbstractC0020c
            public int getViewVerticalDragRange(View view) {
                COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
                return cOUIBottomSheetBehavior.hideable ? cOUIBottomSheetBehavior.parentHeight : cOUIBottomSheetBehavior.collapsedOffset;
            }

            @Override // androidx.customview.widget.c.AbstractC0020c
            public void onViewDragStateChanged(int i102) {
                if (i102 == 1 && COUIBottomSheetBehavior.this.draggable) {
                    COUIBottomSheetBehavior.this.setStateInternal(1);
                }
            }

            @Override // androidx.customview.widget.c.AbstractC0020c
            public void onViewPositionChanged(View view, int i102, int i11, int i12, int i13) {
                COUIBottomSheetBehavior.this.dispatchOnSlide(i11);
            }

            @Override // androidx.customview.widget.c.AbstractC0020c
            public void onViewReleased(View view, float f10, float f11) {
                int i102;
                if (COUIBottomSheetBehavior.this.mPhysicsEnable && COUIBottomSheetBehavior.this.mDragBehavior.W()) {
                    COUIBottomSheetBehavior.this.mDragBehavior.S(0.0f);
                    COUIBottomSheetBehavior.this.mDragChild = null;
                }
                COUIBottomSheetBehavior.this.mIsIgnoreExpandedOffsetChange = false;
                if (COUIBottomSheetBehavior.this.mPullUpListener != null) {
                    COUIBottomSheetBehavior.this.mPullUpListener.onReleasedDrag();
                    float ratio = view instanceof COUIPanelPercentFrameLayout ? ((COUIPanelPercentFrameLayout) view).getRatio() : 1.0f;
                    COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
                    if (((int) (((cOUIBottomSheetBehavior.parentHeight - cOUIBottomSheetBehavior.getMarginBottom(view)) / ratio) - (view.getHeight() / ratio))) <= COUIBottomSheetBehavior.this.getExpandedOffset() && view.getTop() < COUIBottomSheetBehavior.this.getExpandedOffset()) {
                        COUIBottomSheetBehavior.this.mPullUpListener.onReleased(COUIBottomSheetBehavior.this.getExpandedOffset());
                        return;
                    }
                }
                int i11 = 6;
                if (f11 < 0.0f) {
                    if (COUIBottomSheetBehavior.this.fitToContents) {
                        i102 = COUIBottomSheetBehavior.this.fitToContentsOffset;
                    } else {
                        int top = view.getTop();
                        COUIBottomSheetBehavior cOUIBottomSheetBehavior2 = COUIBottomSheetBehavior.this;
                        int i12 = cOUIBottomSheetBehavior2.halfExpandedOffset;
                        if (top > i12) {
                            i102 = i12;
                        } else {
                            i102 = cOUIBottomSheetBehavior2.expandedOffset;
                        }
                    }
                    i11 = 3;
                } else {
                    COUIBottomSheetBehavior cOUIBottomSheetBehavior3 = COUIBottomSheetBehavior.this;
                    if (cOUIBottomSheetBehavior3.hideable && cOUIBottomSheetBehavior3.shouldHide(view, f11)) {
                        COUIPanelDragListener cOUIPanelDragListener = COUIBottomSheetBehavior.this.mCOUIPanelDragListener;
                        if (cOUIPanelDragListener != null && cOUIPanelDragListener.onDragWhileEditing()) {
                            COUIBottomSheetBehavior cOUIBottomSheetBehavior4 = COUIBottomSheetBehavior.this;
                            int i13 = cOUIBottomSheetBehavior4.fitToContentsOffset;
                            cOUIBottomSheetBehavior4.mCanHideKeyboard = false;
                            i102 = i13;
                        } else if ((Math.abs(f10) < Math.abs(f11) && f11 > 500.0f) || releasedLow(view)) {
                            COUIBottomSheetBehavior cOUIBottomSheetBehavior5 = COUIBottomSheetBehavior.this;
                            int i14 = cOUIBottomSheetBehavior5.parentRootViewHeight;
                            cOUIBottomSheetBehavior5.mCanHideKeyboard = true;
                            i102 = i14;
                            i11 = 5;
                        } else if (COUIBottomSheetBehavior.this.fitToContents) {
                            i102 = COUIBottomSheetBehavior.this.fitToContentsOffset;
                        } else if (Math.abs(view.getTop() - COUIBottomSheetBehavior.this.expandedOffset) < Math.abs(view.getTop() - COUIBottomSheetBehavior.this.halfExpandedOffset)) {
                            i102 = COUIBottomSheetBehavior.this.expandedOffset;
                        } else {
                            i102 = COUIBottomSheetBehavior.this.halfExpandedOffset;
                        }
                        i11 = 3;
                    } else if (f11 == 0.0f || Math.abs(f10) > Math.abs(f11)) {
                        int top2 = view.getTop();
                        if (!COUIBottomSheetBehavior.this.fitToContents) {
                            COUIBottomSheetBehavior cOUIBottomSheetBehavior6 = COUIBottomSheetBehavior.this;
                            int i15 = cOUIBottomSheetBehavior6.halfExpandedOffset;
                            if (top2 < i15) {
                                if (top2 < Math.abs(top2 - cOUIBottomSheetBehavior6.collapsedOffset)) {
                                    i102 = COUIBottomSheetBehavior.this.expandedOffset;
                                    i11 = 3;
                                } else {
                                    i102 = COUIBottomSheetBehavior.this.halfExpandedOffset;
                                }
                            } else if (Math.abs(top2 - i15) < Math.abs(top2 - COUIBottomSheetBehavior.this.collapsedOffset)) {
                                i102 = COUIBottomSheetBehavior.this.halfExpandedOffset;
                            } else {
                                i102 = COUIBottomSheetBehavior.this.collapsedOffset;
                                i11 = 4;
                            }
                        } else if (Math.abs(top2 - COUIBottomSheetBehavior.this.fitToContentsOffset) < Math.abs(top2 - COUIBottomSheetBehavior.this.collapsedOffset)) {
                            i102 = COUIBottomSheetBehavior.this.fitToContentsOffset;
                            i11 = 3;
                        } else {
                            i102 = COUIBottomSheetBehavior.this.collapsedOffset;
                            i11 = 4;
                        }
                    } else {
                        if (COUIBottomSheetBehavior.this.fitToContents) {
                            COUIBottomSheetBehavior cOUIBottomSheetBehavior7 = COUIBottomSheetBehavior.this;
                            COUIPanelDragListener cOUIPanelDragListener2 = cOUIBottomSheetBehavior7.mCOUIPanelDragListener;
                            if (cOUIPanelDragListener2 == null) {
                                i102 = cOUIBottomSheetBehavior7.collapsedOffset;
                            } else if (cOUIPanelDragListener2.onDragWhileEditing()) {
                                i102 = COUIBottomSheetBehavior.this.fitToContentsOffset;
                                i11 = 3;
                            } else {
                                i102 = COUIBottomSheetBehavior.this.parentRootViewHeight;
                                i11 = 5;
                            }
                        } else {
                            int top3 = view.getTop();
                            if (Math.abs(top3 - COUIBottomSheetBehavior.this.halfExpandedOffset) < Math.abs(top3 - COUIBottomSheetBehavior.this.collapsedOffset)) {
                                i102 = COUIBottomSheetBehavior.this.halfExpandedOffset;
                            } else {
                                i102 = COUIBottomSheetBehavior.this.collapsedOffset;
                            }
                        }
                        i11 = 4;
                    }
                }
                COUIBottomSheetBehavior.this.startSettlingAnimation(view, i11, i102, true);
            }

            @Override // androidx.customview.widget.c.AbstractC0020c
            public boolean tryCaptureView(View view, int i102) {
                COUIBottomSheetBehavior cOUIBottomSheetBehavior = COUIBottomSheetBehavior.this;
                int i11 = cOUIBottomSheetBehavior.state;
                if (i11 == 1 || cOUIBottomSheetBehavior.touchingScrollingChild) {
                    return false;
                }
                if (i11 == 3 && cOUIBottomSheetBehavior.activePointerId == i102) {
                    WeakReference<View> weakReference = cOUIBottomSheetBehavior.nestedScrollingChildRef;
                    View view2 = weakReference != null ? weakReference.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                WeakReference<V> weakReference2 = COUIBottomSheetBehavior.this.viewRef;
                return weakReference2 != null && weakReference2.get() == view;
            }
        };
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomSheetBehavior_Layout);
        this.shapeThemingEnabled = typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_shapeAppearance);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_backgroundTint);
        if (zHasValue) {
            createMaterialShapeDrawable(context, attributeSet, zHasValue, MaterialResource.getColorStateList(context, typedArrayObtainStyledAttributes, R$styleable.BottomSheetBehavior_Layout_backgroundTint));
        } else {
            createMaterialShapeDrawable(context, attributeSet, zHasValue);
        }
        createShapeValueAnimator();
        this.elevation = typedArrayObtainStyledAttributes.getDimension(R$styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValuePeekValue == null || (i10 = typedValuePeekValue.data) != -1) {
            setPanelPeekHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            setPanelPeekHeight(i10);
        }
        setHideable(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setGestureInsetBottomIgnored(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        setFitToContents(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setPanelSkipCollapsed(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        setDraggable(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        setSaveFlags(typedArrayObtainStyledAttributes.getInt(R$styleable.BottomSheetBehavior_Layout_behavior_saveFlags, -1));
        setHalfExpandedRatio(typedArrayObtainStyledAttributes.getFloat(R$styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(R$styleable.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            setExpandedOffset(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        } else {
            setExpandedOffset(typedValuePeekValue2.data);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.mCanHideKeyboard = false;
    }

    private void addAccessibilityActionForState(V v10, h.a aVar, int i10) {
        m0.e0(v10, aVar, null, new d0.k() { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.8
            final /* synthetic */ int val$state;

            AnonymousClass8(int i102) {
                i = i102;
            }

            @Override // d0.k
            public boolean perform(View view, k.a aVar2) {
                COUIBottomSheetBehavior.this.setPanelState(i);
                return true;
            }
        });
    }

    private void calculateCollapsedOffset() {
        int iCalculatePeekHeight = calculatePeekHeight();
        if (this.fitToContents) {
            this.collapsedOffset = Math.max(this.parentHeight - iCalculatePeekHeight, this.fitToContentsOffset);
        } else {
            this.collapsedOffset = this.parentHeight - iCalculatePeekHeight;
        }
    }

    private void calculateHalfExpandedOffset() {
        this.halfExpandedOffset = (int) (this.parentHeight * (1.0f - this.halfExpandedRatio));
        if (DEBUG) {
            Log.d(TAG, "calculateHalfExpandedOffset: halfExpandedRatio=" + this.halfExpandedRatio + " halfExpandedOffset=" + this.halfExpandedOffset);
        }
        if (this.mHalfExpandOffsetUseParentRootViewHeight && this.mIsHandlePanel && this.halfExpandedRatio == 0.5f) {
            this.halfExpandedOffset = (this.parentRootViewHeight / 2) - this.parentMarginTop;
            if (DEBUG) {
                Log.d(TAG, "calculateHalfExpandedOffset: modified halfExpandedOffset=" + this.halfExpandedOffset);
            }
        }
        if (this.mIsHandlePanel) {
            this.halfExpandedOffset = Math.max(this.halfExpandedOffset, this.expandedOffset);
        }
    }

    public void calculatePanelOutsideAlpha(View view) {
        float top = 1.0f - ((view.getTop() - getExpandedOffset()) / this.parentHeight);
        this.alphaRadio = top;
        COUIPanelPullUpListener cOUIPanelPullUpListener = this.mPullUpListener;
        if (cOUIPanelPullUpListener != null) {
            cOUIPanelPullUpListener.onOffsetChanged(top);
        }
    }

    private int calculatePeekHeight() {
        return this.peekHeightAuto ? Math.max(this.peekHeightMin, this.parentHeight - ((this.parentWidth * 9) / 16)) : this.peekHeight;
    }

    private void createMaterialShapeDrawable(Context context, AttributeSet attributeSet, boolean z10) {
        createMaterialShapeDrawable(context, attributeSet, z10, null);
    }

    private void createShapeValueAnimator() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.interpolatorAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.interpolatorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.2
            AnonymousClass2() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (COUIBottomSheetBehavior.this.materialShapeDrawable != null) {
                    COUIBottomSheetBehavior.this.materialShapeDrawable.setInterpolation(fFloatValue);
                }
            }
        });
    }

    public void dragToNewTop(View view, float f10) {
        if (this.mDragBehavior.W()) {
            this.mDragBehavior.X(f10);
            return;
        }
        this.mDragChild = view;
        float top = view.getTop();
        this.mDragValueHolder.c(top);
        this.mDragBehavior.N(top, top);
        this.mDragCurrentValue = top;
    }

    public static <V extends View> COUIBottomSheetBehavior<V> from(V v10) {
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
        if (cVarF instanceof COUIBottomSheetBehavior) {
            return (COUIBottomSheetBehavior) cVarF;
        }
        throw new IllegalArgumentException("The view is not associated with COUIBottomSheetBehavior");
    }

    public int getMarginBottom(View view) {
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }
        }
        return 0;
    }

    public float getYVelocity() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        return this.velocityTracker.getYVelocity(this.activePointerId);
    }

    private boolean isClickedOnBar(View view, int i10, int i11) {
        View viewFindViewById;
        if (!(view instanceof COUIPanelPercentFrameLayout) || (viewFindViewById = view.findViewById(R$id.panel_drag_bar)) == null) {
            return false;
        }
        viewFindViewById.getHitRect(this.mBarRect);
        return this.mBarRect.contains(i10, i11);
    }

    private void reset() {
        this.activePointerId = -1;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    private void restoreOptionalState(SavedState savedState) {
        int i10 = this.saveFlags;
        if (i10 == 0) {
            return;
        }
        if (i10 == -1 || (i10 & 1) == 1) {
            this.peekHeight = savedState.peekHeight;
        }
        if (i10 == -1 || (i10 & 2) == 2) {
            this.fitToContents = savedState.fitToContents;
        }
        if (i10 == -1 || (i10 & 4) == 4) {
            this.hideable = savedState.hideable;
        }
        if (i10 == -1 || (i10 & 8) == 8) {
            this.skipCollapsed = savedState.skipCollapsed;
        }
    }

    private void setSystemGestureInsets(CoordinatorLayout coordinatorLayout) {
        WindowInsets rootWindowInsets;
        if (isGestureInsetBottomIgnored() || (rootWindowInsets = coordinatorLayout.getRootWindowInsets()) == null) {
            return;
        }
        this.peekHeight += rootWindowInsets.getSystemGestureInsets().bottom;
    }

    private void settleToStatePendingLayout(int i10) {
        V v10 = this.viewRef.get();
        if (v10 == null) {
            return;
        }
        ViewParent parent = v10.getParent();
        if (parent != null && parent.isLayoutRequested() && m0.N(v10)) {
            v10.post(new Runnable() { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.1
                final /* synthetic */ View val$child;
                final /* synthetic */ int val$finalState;

                AnonymousClass1(View v102, int i102) {
                    view = v102;
                    i = i102;
                }

                @Override // java.lang.Runnable
                public void run() {
                    COUIBottomSheetBehavior.this.settleToState(view, i);
                }
            });
        } else {
            settleToState(v102, i102);
        }
    }

    private void startDragToHiddenAnimation(View view) {
        AnonymousClass5 anonymousClass5 = new androidx.dynamicanimation.animation.d(PROPERTY_OFFSET_TOP_AND_BOTTOM) { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.5
            final /* synthetic */ View val$child;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass5(String str, View view2) {
                super(str);
                view = view2;
            }

            @Override // androidx.dynamicanimation.animation.d
            public float getValue(Object obj) {
                COUIBottomSheetBehavior.this.mLastOffsetInFling = 0;
                return COUIBottomSheetBehavior.this.mLastOffsetInFling;
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(Object obj, float f10) {
                int i10 = (int) f10;
                ((View) obj).offsetTopAndBottom(i10 - COUIBottomSheetBehavior.this.mLastOffsetInFling);
                COUIBottomSheetBehavior.this.dispatchOnSlide(view.getTop());
                COUIBottomSheetBehavior.this.mLastOffsetInFling = i10;
            }
        };
        if (DEBUG) {
            COUILog.d(TAG, "startDragToHiddenAnimation parentRootViewHeight:" + this.parentRootViewHeight + ",child.getTop():" + view2.getTop());
        }
        ((androidx.dynamicanimation.animation.b) new androidx.dynamicanimation.animation.b(view2, anonymousClass5).w(getYVelocity()).t(5000.0f).v(0.0f).u(Math.max(this.parentRootViewHeight - view2.getTop(), 0)).a(new c.q() { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.6
            AnonymousClass6() {
            }

            @Override // androidx.dynamicanimation.animation.c.q
            public void onAnimationEnd(androidx.dynamicanimation.animation.c cVar, boolean z10, float f10, float f11) {
                COUIBottomSheetBehavior.this.setStateInternal(5);
            }
        })).p();
    }

    private void startPanelTranslateAnimation(View view, int i10, int i11, float f10, PathInterpolator pathInterpolator) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(i10, i11);
        valueAnimatorOfFloat.setDuration((long) f10);
        valueAnimatorOfFloat.setInterpolator(pathInterpolator);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.3
            final /* synthetic */ View val$child;

            AnonymousClass3(View view2) {
                view = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int iFloatValue = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                view.offsetTopAndBottom(iFloatValue - COUIBottomSheetBehavior.this.mLastOffsetInFling);
                COUIBottomSheetBehavior.this.dispatchOnSlide(view.getTop());
                COUIBottomSheetBehavior.this.mLastOffsetInFling = iFloatValue;
                if (COUIBottomSheetBehavior.this.mPullUpListener != null) {
                    COUIBottomSheetBehavior.this.calculatePanelOutsideAlpha(view);
                }
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.coui.appcompat.panel.COUIBottomSheetBehavior.4
            AnonymousClass4() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                COUIBottomSheetBehavior.this.setStateInternal(5);
            }
        });
        this.mLastOffsetInFling = view2.getTop();
        view2.offsetTopAndBottom(view2.getTop());
        valueAnimatorOfFloat.start();
    }

    private void startSettleRunnable(View view, int i10) {
        if (this.settleRunnable == null) {
            this.settleRunnable = new SettleRunnable(view, i10);
        }
        if (((SettleRunnable) this.settleRunnable).isPosted) {
            this.settleRunnable.targetState = i10;
            return;
        }
        COUIBottomSheetBehavior<V>.SettleRunnable settleRunnable = this.settleRunnable;
        settleRunnable.targetState = i10;
        m0.a0(view, settleRunnable);
        ((SettleRunnable) this.settleRunnable).isPosted = true;
    }

    private void updateAccessibilityActions() {
        V v10;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        m0.c0(v10, 524288);
        m0.c0(v10, 262144);
        m0.c0(v10, 1048576);
        if (this.hideable && this.state != 5) {
            addAccessibilityActionForState(v10, h.a.f11482y, 5);
        }
        int i10 = this.state;
        if (i10 == 3) {
            addAccessibilityActionForState(v10, h.a.f11481x, this.fitToContents ? 4 : 6);
            return;
        }
        if (i10 == 4) {
            addAccessibilityActionForState(v10, h.a.f11480w, this.fitToContents ? 3 : 6);
        } else {
            if (i10 != 6) {
                return;
            }
            addAccessibilityActionForState(v10, h.a.f11481x, 4);
            addAccessibilityActionForState(v10, h.a.f11480w, 3);
        }
    }

    private void updateDrawableForTargetState(int i10) {
        ValueAnimator valueAnimator;
        if (i10 == 2) {
            return;
        }
        boolean z10 = i10 == 3;
        if (this.isShapeExpanded != z10) {
            this.isShapeExpanded = z10;
            if (this.materialShapeDrawable == null || (valueAnimator = this.interpolatorAnimator) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.interpolatorAnimator.reverse();
                return;
            }
            float f10 = z10 ? 0.0f : 1.0f;
            this.interpolatorAnimator.setFloatValues(1.0f - f10, f10);
            this.interpolatorAnimator.start();
        }
    }

    private void updateImportantForAccessibility(boolean z10) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                if (this.importantForAccessibilityMap != null) {
                    return;
                } else {
                    this.importantForAccessibilityMap = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.viewRef.get()) {
                    if (z10) {
                        this.importantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.updateImportantForAccessibilityOnSiblings) {
                            m0.t0(childAt, 4);
                        }
                    } else if (this.updateImportantForAccessibilityOnSiblings && (map = this.importantForAccessibilityMap) != null && map.containsKey(childAt)) {
                        m0.t0(childAt, this.importantForAccessibilityMap.get(childAt).intValue());
                    }
                }
            }
            if (z10) {
                return;
            }
            this.importantForAccessibilityMap = null;
        }
    }

    public void addBottomSheetCallback(COUIBottomSheetCallback cOUIBottomSheetCallback) {
        if (this.callbacks.contains(cOUIBottomSheetCallback)) {
            return;
        }
        this.callbacks.add(cOUIBottomSheetCallback);
    }

    public void applyPhysics(float f10, float f11) {
        if (f10 == PHYSICS_UNSET || f11 == PHYSICS_UNSET) {
            this.mPhysicsEnable = false;
            return;
        }
        this.mPhysicsEnable = true;
        this.mDragFrequency = f10;
        this.mDragDampingRatio = f11;
        this.mPhysicalAnimator = l.j(this.mContext);
        this.mDragValueHolder = new d7.k(0.0f);
        d7.h hVar = (d7.h) ((d7.h) new d7.h().K(this.mDragValueHolder)).B(this.mDragFrequency, this.mDragDampingRatio).c(null);
        this.mDragBehavior = hVar;
        this.mPhysicalAnimator.d(hVar);
        this.mPhysicalAnimator.a(this.mDragBehavior, this);
        this.mPhysicalAnimator.c(this.mDragBehavior, this);
    }

    public void disableShapeAnimations() {
        this.interpolatorAnimator = null;
    }

    void dispatchOnSlide(int i10) {
        float f10;
        float expandedOffset;
        V v10 = this.viewRef.get();
        if (v10 == null || this.callbacks.isEmpty()) {
            return;
        }
        int i11 = this.collapsedOffset;
        if (i10 > i11 || i11 == getExpandedOffset()) {
            int i12 = this.collapsedOffset;
            f10 = i12 - i10;
            expandedOffset = this.parentHeight - i12;
        } else {
            int i13 = this.collapsedOffset;
            f10 = i13 - i10;
            expandedOffset = i13 - getExpandedOffset();
        }
        float f11 = f10 / expandedOffset;
        for (int i14 = 0; i14 < this.callbacks.size(); i14++) {
            this.callbacks.get(i14).onSlide(v10, f11);
        }
    }

    View findScrollingChild(View view) {
        if (m0.P(view) && view.getVisibility() == 0) {
            return view;
        }
        if (!(view instanceof ViewGroup) || view.getVisibility() != 0) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View viewFindScrollingChild = findScrollingChild(viewGroup.getChildAt(i10));
            if (viewFindScrollingChild != null) {
                return viewFindScrollingChild;
            }
        }
        return null;
    }

    public COUIPanelDragListener getCOUIPanelDragListener() {
        return this.mCOUIPanelDragListener;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public int getExpandedOffset() {
        return this.fitToContents ? this.fitToContentsOffset : this.expandedOffset;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public float getHalfExpandedRatio() {
        return this.halfExpandedRatio;
    }

    public int getPeekHeight() {
        if (this.peekHeightAuto) {
            return -1;
        }
        return this.peekHeight;
    }

    public int getPeekHeightMin() {
        return this.peekHeightMin;
    }

    public int getSaveFlags() {
        return this.saveFlags;
    }

    public boolean getSkipCollapsed() {
        return this.skipCollapsed;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    @SuppressLint({"WrongConstant"})
    public int getState() {
        return this.state;
    }

    public boolean isCanHideKeyboard() {
        return this.mCanHideKeyboard;
    }

    public boolean isDraggable() {
        return this.draggable;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public boolean isFitToContents() {
        return this.fitToContents;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public boolean isGestureInsetBottomIgnored() {
        return this.gestureInsetBottomIgnored;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public boolean isHideable() {
        return this.hideable;
    }

    @Override // d7.a
    public void onAnimationCancel(d7.d dVar) {
    }

    @Override // d7.a
    public void onAnimationEnd(d7.d dVar) {
    }

    @Override // d7.a
    public void onAnimationStart(d7.d dVar) {
    }

    @Override // d7.b
    public void onAnimationUpdate(d7.d dVar) {
        if (dVar.o() != null) {
            this.mDragCurrentValue = ((Float) dVar.o()).floatValue();
        }
        if (this.mDragChild != null) {
            m0.U(this.mDragChild, -((int) (r2.getTop() - this.mDragCurrentValue)));
            dispatchOnSlide(this.mDragChild.getTop());
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onAttachedToLayoutParams(CoordinatorLayout.f fVar) {
        super.onAttachedToLayoutParams(fVar);
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        androidx.customview.widget.c cVar;
        if (!v10.isShown() || !this.draggable) {
            this.ignoreEvents = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.initialX = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            this.initialY = y10;
            if (!this.mGlobalDrag && !isClickedOnBar(v10, this.initialX, y10)) {
                this.ignoreEvents = true;
                return false;
            }
            this.ignoreEvents = false;
            if (this.state != 2) {
                WeakReference<View> weakReference = this.nestedScrollingChildRef;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.z(view, this.initialX, this.initialY)) {
                    this.activePointerId = motionEvent.getPointerId(UIUtil.getAdjustmentPointerIndex(motionEvent, motionEvent.getActionIndex()));
                    this.touchingScrollingChild = true;
                }
            }
            this.ignoreEvents = this.activePointerId == -1 && !coordinatorLayout.z(v10, this.initialX, this.initialY);
        } else if (actionMasked == 1) {
            COUIPanelPullUpListener cOUIPanelPullUpListener = this.mPullUpListener;
            if (cOUIPanelPullUpListener != null) {
                cOUIPanelPullUpListener.onCancel();
            }
        } else if (actionMasked == 3) {
            this.touchingScrollingChild = false;
            this.activePointerId = -1;
            if (this.ignoreEvents) {
                this.ignoreEvents = false;
                return false;
            }
        }
        if (!this.ignoreEvents && (cVar = this.viewDragHelper) != null && cVar.P(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.nestedScrollingChildRef;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return view2 != null ? (actionMasked != 2 || this.ignoreEvents || this.state == 1 || coordinatorLayout.z(view2, this.initialX, this.initialY) || this.viewDragHelper == null || Math.abs(((float) this.initialY) - motionEvent.getY()) <= ((float) this.viewDragHelper.z())) ? false : true : (actionMasked != 2 || this.ignoreEvents || this.state == 1 || this.viewDragHelper == null || Math.abs(((float) this.initialY) - motionEvent.getY()) <= ((float) this.viewDragHelper.z())) ? false : true;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        boolean hasAnchor;
        i iVar;
        if (m0.s(coordinatorLayout) && !m0.s(v10)) {
            v10.setFitsSystemWindows(true);
        }
        float ratio = 1.0f;
        if (this.viewRef == null) {
            this.peekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(R$dimen.design_bottom_sheet_peek_height_min);
            this.mDialogMaxHeight = this.mContext.getResources().getDimensionPixelOffset(com.support.panel.R$dimen.coui_panel_max_height);
            setSystemGestureInsets(coordinatorLayout);
            this.viewRef = new WeakReference<>(v10);
            if (this.shapeThemingEnabled && (iVar = this.materialShapeDrawable) != null) {
                m0.n0(v10, iVar);
            }
            i iVar2 = this.materialShapeDrawable;
            if (iVar2 != null) {
                float fR = this.elevation;
                if (fR == -1.0f) {
                    fR = m0.r(v10);
                }
                iVar2.setElevation(fR);
                boolean z10 = this.state == 3;
                this.isShapeExpanded = z10;
                this.materialShapeDrawable.setInterpolation(z10 ? 0.0f : 1.0f);
            }
            updateAccessibilityActions();
            if (m0.t(v10) == 0) {
                m0.t0(v10, 1);
            }
        }
        if (this.viewDragHelper == null) {
            this.viewDragHelper = androidx.customview.widget.c.o(coordinatorLayout, this.dragCallback);
        }
        int top = v10.getTop();
        coordinatorLayout.G(v10, i10);
        this.parentWidth = coordinatorLayout.getWidth();
        this.parentHeight = coordinatorLayout.getHeight();
        this.parentRootViewHeight = coordinatorLayout.getRootView().getHeight();
        this.parentMarginTop = COUIViewMarginUtil.getMargin(coordinatorLayout, 1);
        if (DEBUG) {
            Log.d(TAG, "onLayoutChild: parentHeight=" + this.parentHeight + " parentRootViewHeight=" + this.parentRootViewHeight + " marginTop=" + this.parentMarginTop);
        }
        if (v10 instanceof COUIPanelPercentFrameLayout) {
            COUIPanelPercentFrameLayout cOUIPanelPercentFrameLayout = (COUIPanelPercentFrameLayout) v10;
            ratio = cOUIPanelPercentFrameLayout.getRatio();
            hasAnchor = cOUIPanelPercentFrameLayout.getHasAnchor();
        } else {
            hasAnchor = false;
        }
        if (!this.mIsIgnoreExpandedOffsetChange) {
            int marginBottom = getMarginBottom(v10);
            if (hasAnchor) {
                this.fitToContentsOffset = 0;
            } else {
                this.fitToContentsOffset = (int) Math.max(0.0f, ((this.parentHeight - marginBottom) / ratio) - (v10.getHeight() / ratio));
            }
            if (this.mIsHandlePanel) {
                this.expandedOffset = this.fitToContentsOffset;
            }
        }
        if (DEBUG) {
            Log.d(TAG, "updateFollowHandPanelLocation fitToContentsOffset:" + this.fitToContentsOffset + " expandOffset=" + this.expandedOffset + " mIsHandlePanel=" + this.mIsHandlePanel);
        }
        this.mIsIgnoreExpandedOffsetChange = false;
        calculateHalfExpandedOffset();
        calculateCollapsedOffset();
        int i11 = this.state;
        if (i11 == 3) {
            m0.U(v10, getExpandedOffset());
        } else if (i11 == 6) {
            m0.U(v10, this.halfExpandedOffset);
        } else if (this.hideable && i11 == 5) {
            m0.U(v10, this.parentHeight);
        } else if (i11 == 4) {
            m0.U(v10, this.collapsedOffset);
        } else if (i11 == 1 || i11 == 2) {
            m0.U(v10, top - v10.getTop());
        }
        if (DEBUG) {
            Log.e(TAG, "behavior parentHeight: " + this.parentHeight + " marginBottom: " + getMarginBottom(v10) + "\n mDesignBottomSheetFrameLayout.getRatio()" + ratio + " fitToContentsOffset: " + this.fitToContentsOffset + " H: " + v10.getMeasuredHeight() + "\n Y: " + v10.getY() + " getExpandedOffset" + getExpandedOffset());
        }
        this.nestedScrollingChildRef = new WeakReference<>(findScrollingChild(v10));
        return true;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v10, View view, float f10, float f11) {
        WeakReference<View> weakReference = this.nestedScrollingChildRef;
        if (weakReference == null || view != weakReference.get()) {
            return false;
        }
        return this.state != 3 || super.onNestedPreFling(coordinatorLayout, v10, view, f10, f11);
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.nestedScrollingChildRef;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v10.getTop();
        int i13 = top - i11;
        if (i11 > 0) {
            if (i13 < getExpandedOffset()) {
                iArr[1] = top - getExpandedOffset();
                calculatePanelOutsideAlpha(v10);
                if (this.mPhysicsEnable) {
                    dragToNewTop(v10, getExpandedOffset());
                } else {
                    m0.U(v10, -iArr[1]);
                }
                setStateInternal(3);
            } else {
                if (!this.draggable) {
                    return;
                }
                calculatePanelOutsideAlpha(v10);
                iArr[1] = i11;
                if (this.mPhysicsEnable) {
                    dragToNewTop(v10, i13);
                } else {
                    m0.U(v10, -i11);
                }
                setStateInternal(1);
            }
        } else if (i11 < 0 && !view.canScrollVertically(-1)) {
            if (i13 > this.collapsedOffset && !this.hideable) {
                calculatePanelOutsideAlpha(v10);
                int i14 = this.collapsedOffset;
                int i15 = top - i14;
                iArr[1] = i15;
                if (this.mPhysicsEnable) {
                    dragToNewTop(v10, i14);
                } else {
                    m0.U(v10, -i15);
                }
                setStateInternal(4);
            } else {
                if (!this.draggable) {
                    return;
                }
                iArr[1] = i11;
                if (i11 < PULL_UP_DY_THRESHOLD) {
                    i11 = (int) (i11 * 0.5f);
                }
                calculatePanelOutsideAlpha(v10);
                if (this.mPhysicsEnable) {
                    dragToNewTop(v10, i13);
                } else {
                    m0.U(v10, -i11);
                }
                setStateInternal(1);
            }
        }
        if (!this.mPhysicsEnable) {
            dispatchOnSlide(v10.getTop());
        }
        this.lastNestedScrollDy = i11;
        this.nestedScrolled = true;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v10, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v10, savedState.getSuperState());
        restoreOptionalState(savedState);
        int i10 = savedState.state;
        if (i10 == 1 || i10 == 2) {
            this.state = 4;
        } else {
            this.state = i10;
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v10) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v10), (COUIBottomSheetBehavior<?>) this);
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, View view2, int i10, int i11) {
        this.lastNestedScrollDy = 0;
        this.nestedScrolled = false;
        return (i10 & 2) != 0;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v10, View view, int i10) {
        int i11;
        if (this.mPhysicsEnable && this.mDragBehavior.W()) {
            this.mDragBehavior.S(0.0f);
            this.mDragChild = null;
        }
        int i12 = 3;
        if (v10.getTop() == getExpandedOffset()) {
            setStateInternal(3);
            return;
        }
        WeakReference<View> weakReference = this.nestedScrollingChildRef;
        if (weakReference != null && view == weakReference.get() && this.nestedScrolled) {
            if (this.lastNestedScrollDy > 0) {
                if (this.fitToContents) {
                    i11 = this.fitToContentsOffset;
                } else {
                    int top = v10.getTop();
                    int i13 = this.halfExpandedOffset;
                    if (top > i13) {
                        i12 = 6;
                        i11 = i13;
                    } else {
                        i11 = this.expandedOffset;
                    }
                }
            } else if (this.hideable && shouldHide(v10, getYVelocity())) {
                COUIPanelDragListener cOUIPanelDragListener = this.mCOUIPanelDragListener;
                if (cOUIPanelDragListener == null || !cOUIPanelDragListener.onDragWhileEditing()) {
                    i11 = this.parentRootViewHeight;
                    this.mCanHideKeyboard = true;
                    i12 = 5;
                } else {
                    i11 = this.fitToContentsOffset;
                    this.mCanHideKeyboard = false;
                }
            } else if (this.lastNestedScrollDy == 0) {
                int top2 = v10.getTop();
                if (!this.fitToContents) {
                    int i14 = this.halfExpandedOffset;
                    if (top2 < i14) {
                        if (top2 < Math.abs(top2 - this.collapsedOffset)) {
                            i11 = this.expandedOffset;
                        } else {
                            i11 = this.halfExpandedOffset;
                        }
                    } else if (Math.abs(top2 - i14) < Math.abs(top2 - this.collapsedOffset)) {
                        i11 = this.halfExpandedOffset;
                    } else {
                        i11 = this.collapsedOffset;
                        i12 = 4;
                    }
                    i12 = 6;
                } else if (Math.abs(top2 - this.fitToContentsOffset) < Math.abs(top2 - this.collapsedOffset)) {
                    i11 = this.fitToContentsOffset;
                } else {
                    i11 = this.collapsedOffset;
                    i12 = 4;
                }
            } else {
                if (this.fitToContents) {
                    COUIPanelDragListener cOUIPanelDragListener2 = this.mCOUIPanelDragListener;
                    if (cOUIPanelDragListener2 == null) {
                        i11 = this.collapsedOffset;
                    } else if (cOUIPanelDragListener2.onDragWhileEditing()) {
                        i11 = this.fitToContentsOffset;
                    } else {
                        i11 = this.parentRootViewHeight;
                        i12 = 5;
                    }
                } else {
                    int top3 = v10.getTop();
                    if (Math.abs(top3 - this.halfExpandedOffset) < Math.abs(top3 - this.collapsedOffset)) {
                        i11 = this.halfExpandedOffset;
                        i12 = 6;
                    } else {
                        i11 = this.collapsedOffset;
                    }
                }
                i12 = 4;
            }
            startSettlingAnimation(v10, i12, i11, false);
            this.nestedScrolled = false;
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        if (!v10.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.state == 1 && actionMasked == 0) {
            return true;
        }
        androidx.customview.widget.c cVar = this.viewDragHelper;
        if (cVar != null) {
            try {
                cVar.F(motionEvent);
            } catch (Exception e10) {
                e10.printStackTrace();
                return true;
            }
        }
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (actionMasked == 2 && !this.ignoreEvents && this.viewDragHelper != null && Math.abs(this.initialY - motionEvent.getY()) > this.viewDragHelper.z()) {
            this.viewDragHelper.b(v10, motionEvent.getPointerId(UIUtil.getAdjustmentPointerIndex(motionEvent, motionEvent.getActionIndex())));
        }
        return !this.ignoreEvents;
    }

    public void removeBottomSheetCallback(COUIBottomSheetCallback cOUIBottomSheetCallback) {
        this.callbacks.remove(cOUIBottomSheetCallback);
    }

    @Deprecated
    public void setBottomSheetCallback(COUIBottomSheetCallback cOUIBottomSheetCallback) {
        if (DEBUG) {
            Log.w(TAG, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
        }
        this.callbacks.clear();
        if (cOUIBottomSheetCallback != null) {
            this.callbacks.add(cOUIBottomSheetCallback);
        }
    }

    public void setCanHideKeyboard(boolean z10) {
        this.mCanHideKeyboard = z10;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public void setDraggable(boolean z10) {
        this.draggable = z10;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public void setExpandedOffset(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.expandedOffset = i10;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public void setFitToContents(boolean z10) {
        if (this.fitToContents == z10) {
            return;
        }
        this.fitToContents = z10;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
        }
        setStateInternal((this.fitToContents && this.state == 6) ? 3 : this.state);
        updateAccessibilityActions();
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public void setGestureInsetBottomIgnored(boolean z10) {
        this.gestureInsetBottomIgnored = z10;
    }

    public void setGlobalDrag(boolean z10) {
        this.mGlobalDrag = z10;
    }

    public void setHalfExpandOffsetUseParentRootViewHeight(boolean z10) {
        this.mHalfExpandOffsetUseParentRootViewHeight = z10;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public void setHalfExpandedRatio(float f10) {
        if (f10 <= 0.0f || f10 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.halfExpandedRatio = f10;
        if (this.viewRef != null) {
            calculateHalfExpandedOffset();
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    @SuppressLint({"WrongConstant"})
    public void setHideable(boolean z10) {
        if (this.hideable != z10) {
            this.hideable = z10;
            if (!z10 && this.state == 5) {
                setPanelState(4);
            }
            updateAccessibilityActions();
        }
    }

    public void setIsHandlePanel(boolean z10) {
        this.mIsHandlePanel = z10;
    }

    public void setIsInTinyScreen(boolean z10) {
        this.mIsInTinyScreen = z10;
    }

    public void setPanelDragListener(COUIPanelDragListener cOUIPanelDragListener) {
        this.mCOUIPanelDragListener = cOUIPanelDragListener;
    }

    public void setPanelPeekHeight(int i10) {
        setPanelPeekHeight(i10, false);
    }

    public void setPanelSkipCollapsed(boolean z10) {
        this.skipCollapsed = z10;
    }

    public void setPanelState(int i10) {
        if (i10 == this.state) {
            return;
        }
        if (this.viewRef != null) {
            settleToStatePendingLayout(i10);
            return;
        }
        if (i10 == 4 || i10 == 3 || i10 == 6 || (this.hideable && i10 == 5)) {
            this.state = i10;
        }
    }

    public void setPullUpListener(COUIPanelPullUpListener cOUIPanelPullUpListener) {
        this.mPullUpListener = cOUIPanelPullUpListener;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior
    public void setSaveFlags(int i10) {
        this.saveFlags = i10;
    }

    void setStateInternal(int i10) {
        V v10;
        if (this.state == i10) {
            return;
        }
        this.state = i10;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            updateImportantForAccessibility(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            updateImportantForAccessibility(false);
        }
        updateDrawableForTargetState(i10);
        for (int i11 = 0; i11 < this.callbacks.size(); i11++) {
            this.callbacks.get(i11).onStateChanged(v10, i10);
        }
        updateAccessibilityActions();
    }

    public void setUpdateImportantForAccessibilityOnSiblings(boolean z10) {
        this.updateImportantForAccessibilityOnSiblings = z10;
    }

    void settleToState(View view, int i10) {
        int expandedOffset;
        int i11;
        if (i10 == 4) {
            expandedOffset = this.collapsedOffset;
        } else if (i10 == 6) {
            expandedOffset = this.halfExpandedOffset;
            if (this.fitToContents && expandedOffset <= (i11 = this.fitToContentsOffset)) {
                i10 = 3;
                expandedOffset = i11;
            }
        } else if (i10 == 3) {
            expandedOffset = getExpandedOffset();
        } else {
            if (!this.hideable || i10 != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i10);
            }
            expandedOffset = this.parentRootViewHeight;
        }
        startSettlingAnimation(view, i10, expandedOffset, false);
    }

    boolean shouldHide(View view, float f10) {
        if (this.skipCollapsed) {
            return true;
        }
        if (view.getTop() < this.collapsedOffset) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f10 * 0.1f)) - ((float) this.collapsedOffset)) / ((float) calculatePeekHeight()) > 0.5f;
    }

    void startSettlingAnimation(View view, int i10, int i11, boolean z10) {
        if (!((z10 && getState() == 1) ? this.viewDragHelper.O(view.getLeft(), i11) : this.viewDragHelper.Q(view, view.getLeft(), i11))) {
            setStateInternal(i10);
            return;
        }
        setStateInternal(2);
        updateDrawableForTargetState(i10);
        float yVelocity = getYVelocity();
        if (this.mIsInTinyScreen) {
            if (i10 == 5) {
                startPanelTranslateAnimation(view, 0, this.mContext.getResources().getDimensionPixelOffset(com.support.panel.R$dimen.coui_panel_max_height_tiny_screen), DEFAULT_TRANSLATE_HIDING_ANIMATOR_DURATION, new COUIOutEaseInterpolator());
                return;
            } else {
                startSettleRunnable(view, i10);
                return;
            }
        }
        if (i10 != 5 || yVelocity <= 10000.0f) {
            startSettleRunnable(view, i10);
        } else {
            startDragToHiddenAnimation(view);
        }
    }

    private void createMaterialShapeDrawable(Context context, AttributeSet attributeSet, boolean z10, ColorStateList colorStateList) {
        if (this.shapeThemingEnabled) {
            this.shapeAppearanceModelDefault = n.e(context, attributeSet, R$attr.bottomSheetStyle, DEF_STYLE_RES).m();
            i iVar = new i(this.shapeAppearanceModelDefault);
            this.materialShapeDrawable = iVar;
            iVar.initializeElevationOverlay(context);
            if (z10 && colorStateList != null) {
                this.materialShapeDrawable.setFillColor(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
            this.materialShapeDrawable.setTint(typedValue.data);
        }
    }

    private void setPanelPeekHeight(int i10, boolean z10) {
        V v10;
        if (i10 == -1) {
            if (this.peekHeightAuto) {
                return;
            } else {
                this.peekHeightAuto = true;
            }
        } else {
            if (!this.peekHeightAuto && this.peekHeight == i10) {
                return;
            }
            this.peekHeightAuto = false;
            this.peekHeight = Math.max(0, i10);
        }
        if (this.viewRef != null) {
            calculateCollapsedOffset();
            if (this.state != 4 || (v10 = this.viewRef.get()) == null) {
                return;
            }
            if (z10) {
                settleToStatePendingLayout(this.state);
            } else {
                v10.requestLayout();
            }
        }
    }
}
