package com.coui.appcompat.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.PathInterpolator;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import androidx.dynamicanimation.animation.c;
import androidx.dynamicanimation.animation.f;
import androidx.recyclerview.widget.RecyclerView;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.state.COUIMaskEffectDrawable;
import com.coui.appcompat.state.COUIStateEffectDrawable;
import com.coui.appcompat.state.COUIStrokeDrawable;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.coui.appcompat.version.COUIVersionUtil;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.support.appcompat.R$attr;
import com.support.floatingactionbutton.R$color;
import com.support.floatingactionbutton.R$dimen;
import com.support.floatingactionbutton.R$id;
import com.support.floatingactionbutton.R$styleable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import t.h;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public class COUIFloatingButton extends LinearLayout {
    private static final int ACTION_ANIM_DELAY = 50;
    private static final String ANIMATION_TYPE_ALPHA = "alpha";
    private static final String ANIMATION_TYPE_ROTATION = "rotation";
    private static final String ANIMATION_TYPE_SCALE_X = "scaleX";
    private static final String ANIMATION_TYPE_SCALE_Y = "scaleY";
    private static final String ANIMATION_TYPE_TRANSLATION_Y = "translationY";
    private static final float DEFAULT_ALPHA_ANIMATION_MAX_VALUE = 1.0f;
    private static final float DEFAULT_ALPHA_ANIMATION_MIN_VALUE = 0.0f;
    private static final float DEFAULT_ANIMATION_EXPAND_END_VALUE = 1.1f;
    private static final float DEFAULT_ANIMATION_EXPAND_START_VALUE = 1.0f;
    private static final float DEFAULT_ANIMATION_NARROW_END_VALUE = 1.0f;
    private static final float DEFAULT_ANIMATION_NARROW_START_VALUE = 1.1f;
    private static final int DEFAULT_BUTTON_EXPAND_ANIMATION_DURATION = 66;
    private static final int DEFAULT_BUTTON_LABEL_CLOSE_ALPHA_ANIMATION_DURATION = 350;
    private static final float DEFAULT_CLOSE_MENU_ALPHA_ANIMATION_END_VALUE = 0.0f;
    private static final float DEFAULT_CLOSE_MENU_ALPHA_ANIMATION_START_VALUE = 1.0f;
    private static final int DEFAULT_CLOSE_MENU_ANIMATION_DURATION_WITH_SLIDE_OUT = 150;
    private static final float DEFAULT_CLOSE_MENU_NARROW_ANIMATION_END_VALUE = 0.6f;
    private static final float DEFAULT_CLOSE_MENU_NARROW_ANIMATION_START_VALUE = 1.0f;
    private static final int DEFAULT_COUI_FLOATING_BUTTON_SIZE = 56;
    private static final float DEFAULT_DISABLE_ALPHA = 0.3f;
    private static final int DEFAULT_ELEVATION_FLOATING_BUTTON = 24;
    private static final float DEFAULT_ENABLE_ALPHA = 1.0f;
    private static final long DEFAULT_ENLARGE_ANIMATION_DURATION = 350;
    private static final float DEFAULT_EXPAND_MENU_ALPHA_ANIMATION_END_VALUE = 1.0f;
    private static final float DEFAULT_EXPAND_MENU_ALPHA_ANIMATION_START_VALUE = 0.0f;
    private static final float DEFAULT_EXPAND_MENU_EXPAND_ANIMATION_END_VALUE = 1.0f;
    private static final float DEFAULT_EXPAND_MENU_EXPAND_ANIMATION_START_VALUE = 0.6f;
    private static final int DEFAULT_EXPAND_WAY = 0;
    private static final int DEFAULT_LABEL_ALPHA_ANIMATION_DURATION = 200;
    private static final int DEFAULT_MAIN_FLOATING_BUTTON_ANIMATION_DURATION = 300;
    private static final int DEFAULT_MARGIN_BOTTOM_FIRST_CHILD = 32;
    private static final int DEFAULT_MARGIN_BOTTOM_NOT_FIRST_CHILD = 16;
    private static final int DEFAULT_PRESS_FEEDBACK_ANIMATION_DURATION = 200;
    private static final float DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MAX_VALUE = 1.0f;
    private static final float DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MIN_VALUE = 0.88f;
    private static final float DEFAULT_PRESS_FEEDBACK_SCALE_MAX_VALUE = 1.0f;
    private static final float DEFAULT_PRESS_FEEDBACK_SCALE_MIN_VALUE = 0.9f;
    private static final float DEFAULT_PRESS_GUARANTEED_ANIMATION_VALUE = 0.98f;
    private static final int DEFAULT_ROTATE_ANGLE = 45;
    private static final int DEFAULT_ROTATE_ANIMATION_DURATION = 250;
    private static final int DEFAULT_ROTATE_ANIMATION_DURATION_NO_ITEM = 300;
    private static final float DEFAULT_SCALE_ANIMATION_MAX_VALUE = 1.0f;
    private static final float DEFAULT_SCALE_ANIMATION_MIN_VALUE = 0.6f;
    private static final float DEFAULT_SCALE_PERCENT = 0.4f;
    private static final int DEFAULT_SLIDE_IN_ANIMATION_DURATION = 200;
    private static final int DEFAULT_SLIDE_OUT_ANIMATION_DURATION = 250;
    private static final int DEFAULT_SLIDE_OUT_TRANSITION_ANIMATION_DURATION = 140;
    private static final int DEFAULT_SLIDING_THRESHOLD = 10;
    private static final float DEFAULT_SPRING_ANIMATION_DAMPING_RATIO = 0.8f;
    private static final int DEFAULT_SPRING_ANIMATION_START_VELOCITY = 0;
    private static final int DEFAULT_SPRING_ANIMATION_STIFFNESS = 500;
    private static final int DELAY_TIME_NO_ACTION_SLIDE_OUT = 5000;
    private static final int MAIN_FAB_HORIZONTAL_MARGIN_IN_DP = 12;
    private static final int MAIN_FAB_VERTICAL_MARGIN_IN_DP = 8;
    private static final int MAX_COLOR_FLOATING_BUTTON_SIZE = 6;
    private static final int MESSAGE_PAUSE_TIME_SLIDE_OUT = 1;
    private static final int SDK_SUB_VERSION_2 = 2;
    private static final int SDK_VERSION_37 = 37;
    private static final int STATE_COLLAPSED = 1;
    private static final int STATE_COLLAPSING = 4;
    private static final int STATE_DISABLED = -1;
    private static final int STATE_EXPANDED = 2;
    private static final int STATE_EXPANDING = 3;
    private static final String STATE_KEY_EXPANSION_MODE = "expansionMode";
    private static final String STATE_KEY_IS_OPEN = "isOpen";
    private static final String STATE_KEY_SUPER = "superState";
    private static final int STATE_NORMAL = 0;
    private static final String TAG = "COUIFloatingButton";
    private static final float TWO = 2.0f;
    private Runnable mAutoDismissRunnable;
    private int mButtonSize;
    private PathInterpolator mCloseMenuLabelPathInterpolator;
    private PathInterpolator mCloseMenuPathInterpolator;
    private float mCurrentProgress;
    private int mCurrentWindowHeight;
    private int mCurrentWindowHeightOffset;
    private int mDisabledColor;
    private PathInterpolator mExpandMenuAnimationInterpolator;
    private OnFloatingButtonClickListener mFloatingButtonClickListener;
    private List<COUIFloatingButtonLabel> mFloatingButtonLabelList;
    private int mFloatingButtonPixel;
    private ValueAnimator mHideAnimator;
    private final InstanceState mInstanceState;
    private boolean mIsAnimationInStart;
    private boolean mIsAnimationOutStart;
    private boolean mIsFloatingButtonExpandEnable;
    private boolean mIsNeedElevation;
    private boolean mIsNeedToDelayCancelScaleAnim;
    private boolean mIsNeedVibrate;
    private boolean mIsScaleAnimation;
    private PathInterpolator mLabelPathInterpolator;
    private final Rect mMainButtonGlobalRect;
    private final RectF mMainButtonRect;
    private ShapeDrawable mMainButtonShapeDrawable;
    private Drawable mMainFabCloseOriginalDrawable;
    private Drawable mMainFabClosedDrawable;
    private AppCompatImageView mMainFloatingButton;
    private float mMainFloatingButtonX;
    private float mMainFloatingButtonY;
    private COUIMaskEffectDrawable mMaskDrawable;
    private OnActionSelectedListener mOnActionSelectedListener;
    private OnActionSelectedListener mOnActionSelectedProxyListener;
    private OnChangeListener mOnChangeListener;
    private ValueAnimator mPressAnimationRecorder;
    private float mPressValue;
    private ValueAnimator mProgressAnimator;
    private float mRotateAngle;
    private PathInterpolator mRotateBackwardInterpolator;
    private PathInterpolator mRotateForwardInterpolator;
    private final COUIFloatingButtonSeamlessImpl mSeamlessImpl;
    private Bundle mSeamlessViewBundle;
    private int mState;
    private int mStateBeforeDisable;
    private COUIStateEffectDrawable mStateEffectBackground;
    private COUIStrokeDrawable mStrokeEffectDrawable;
    private OnActionSelectedListener mTempOnActionSelectedListener;
    private float mTranslateEnhancementRatio;
    private static final int[] DISABLED_STATE = {-16842910};
    private static final PathInterpolator DEFAULT_ENLARGE_ANIMATION_INTERPOLATOR = new COUIMoveEaseInterpolator();
    private static final PathInterpolator PRESS_FEEDBACK_INTERPOLATOR = new COUIMoveEaseInterpolator();

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$1 */
    class AnonymousClass1 implements OnActionSelectedListener {
        AnonymousClass1() {
        }

        @Override // com.coui.appcompat.floatingactionbutton.COUIFloatingButton.OnActionSelectedListener
        public boolean onActionSelected(COUIFloatingButtonItem cOUIFloatingButtonItem) {
            if (COUIFloatingButton.this.mOnActionSelectedListener == null) {
                return false;
            }
            boolean zOnActionSelected = COUIFloatingButton.this.mOnActionSelectedListener.onActionSelected(cOUIFloatingButtonItem);
            if (!zOnActionSelected) {
                COUIFloatingButton.this.closeFloatingButtonMenu(false, 300);
            }
            return zOnActionSelected;
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$10 */
    class AnonymousClass10 implements Animator.AnimatorListener {
        final /* synthetic */ COUIFloatingButtonLabel val$couiFloatingButtonLabel;
        final /* synthetic */ int val$duration;
        final /* synthetic */ boolean val$needDrop;
        final /* synthetic */ int val$position;

        AnonymousClass10(int i10, boolean z10, COUIFloatingButtonLabel cOUIFloatingButtonLabel, int i11) {
            i = i10;
            z = z10;
            cOUIFloatingButtonLabel = cOUIFloatingButtonLabel;
            i = i11;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            cOUIFloatingButtonLabel.setTranslationY(COUIFloatingButton.this.getTotalLabelHeight(i));
            cOUIFloatingButtonLabel.getChildFloatingButton().setPivotX(cOUIFloatingButtonLabel.getChildFloatingButton().getWidth() / 2.0f);
            cOUIFloatingButtonLabel.getChildFloatingButton().setPivotY(cOUIFloatingButtonLabel.getChildFloatingButton().getHeight() / 2.0f);
            cOUIFloatingButtonLabel.setPivotX(r3.getWidth());
            cOUIFloatingButtonLabel.setPivotY(r3.getHeight());
            if (COUIFloatingButton.this.isLastFloatingButtonLabel(i)) {
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
            }
            COUIFloatingButton.this.setState(1);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (COUIFloatingButton.this.isFirstFloatingButtonLabel(i)) {
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
                COUIFloatingButton.this.setOnActionSelectedListener(null);
            }
            if (z) {
                COUIFloatingButton.this.narrowFloatingButton(cOUIFloatingButtonLabel, i, i, true);
            } else {
                COUIFloatingButton.this.narrowFloatingButton(cOUIFloatingButtonLabel, i, i, false);
            }
            COUIFloatingButton.this.setState(4);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$11 */
    class AnonymousClass11 implements Animator.AnimatorListener {
        final /* synthetic */ ObjectAnimator val$labelAlphaAnimation;

        AnonymousClass11(ObjectAnimator objectAnimator) {
            objectAnimator = objectAnimator;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            objectAnimator.start();
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$2 */
    class AnonymousClass2 implements View.OnTouchListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (COUIFloatingButton.this.isEnabled()) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    COUIFloatingButton.this.mSeamlessImpl.setSeamlessBundle(COUIFloatingButton.this.mMainFloatingButton);
                    COUIFloatingButton.this.animatePress();
                    COUIFloatingButton.this.mStateEffectBackground.setTouched(true);
                } else if (action == 1 || action == 3) {
                    COUIFloatingButton.this.animateNormal(motionEvent);
                    COUIFloatingButton.this.mStateEffectBackground.setTouched(false);
                }
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$3 */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (COUIFloatingButton.this.mFloatingButtonClickListener != null) {
                COUIFloatingButton.this.mFloatingButtonClickListener.onClick();
            }
            COUIFloatingButton.this.handleOnClickFloatingButton();
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$4 */
    class AnonymousClass4 extends ViewOutlineProvider {
        AnonymousClass4() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$5 */
    class AnonymousClass5 implements Animator.AnimatorListener {
        AnonymousClass5() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            COUIFloatingButton.this.mMainFloatingButton.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            COUIFloatingButton.this.mMainFloatingButton.setVisibility(8);
            COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$6 */
    class AnonymousClass6 implements Animator.AnimatorListener {
        AnonymousClass6() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
            cOUIFloatingButton.removeCallbacks(cOUIFloatingButton.mAutoDismissRunnable);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
            COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
            cOUIFloatingButton.removeCallbacks(cOUIFloatingButton.mAutoDismissRunnable);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$7 */
    class AnonymousClass7 implements ValueAnimator.AnimatorUpdateListener {
        AnonymousClass7() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue(COUIFloatingButton.ANIMATION_TYPE_ALPHA)).floatValue();
            float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue(COUIFloatingButton.ANIMATION_TYPE_SCALE_X)).floatValue();
            float fFloatValue3 = ((Float) valueAnimator.getAnimatedValue(COUIFloatingButton.ANIMATION_TYPE_SCALE_Y)).floatValue();
            COUIFloatingButton.this.mMainFloatingButton.setAlpha(fFloatValue);
            COUIFloatingButton.this.mMainFloatingButton.setScaleX(fFloatValue2);
            COUIFloatingButton.this.mMainFloatingButton.setScaleY(fFloatValue3);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$8 */
    class AnonymousClass8 implements Animator.AnimatorListener {
        AnonymousClass8() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
            cOUIFloatingButton.removeCallbacks(cOUIFloatingButton.mAutoDismissRunnable);
            COUIFloatingButton.this.mMainFloatingButton.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            COUIFloatingButton.this.mMainFloatingButton.setVisibility(0);
            COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
            COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
            cOUIFloatingButton.postDelayed(cOUIFloatingButton.mAutoDismissRunnable, 5000L);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$9 */
    class AnonymousClass9 implements Animator.AnimatorListener {
        final /* synthetic */ COUIFloatingButtonLabel val$couiFloatingButtonLabel;
        final /* synthetic */ ObjectAnimator val$labelAlphaAnimation;
        final /* synthetic */ int val$position;
        final /* synthetic */ f val$springAnimation;
        final /* synthetic */ int val$visibility;

        AnonymousClass9(int i10, ObjectAnimator objectAnimator, f fVar, COUIFloatingButtonLabel cOUIFloatingButtonLabel, int i11) {
            i = i10;
            objectAnimator = objectAnimator;
            fVar = fVar;
            cOUIFloatingButtonLabel = cOUIFloatingButtonLabel;
            i = i11;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (COUIFloatingButton.this.isFirstFloatingButtonLabel(i)) {
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
                COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
                cOUIFloatingButton.setOnActionSelectedListener(cOUIFloatingButton.mTempOnActionSelectedListener);
            }
            COUIFloatingButton.this.setState(2);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (COUIFloatingButton.this.isLastFloatingButtonLabel(i)) {
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
                COUIFloatingButton.this.setOnActionSelectedListener(null);
            }
            objectAnimator.start();
            fVar.s(0.0f);
            cOUIFloatingButtonLabel.setVisibility(i);
            COUIFloatingButton.this.setState(3);
        }
    }

    private class AutoDismissRunnable implements Runnable {
        private AutoDismissRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            COUIFloatingButton.this.animationFloatingButtonEnlarge();
        }

        /* synthetic */ AutoDismissRunnable(COUIFloatingButton cOUIFloatingButton, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public interface OnActionSelectedListener {
        boolean onActionSelected(COUIFloatingButtonItem cOUIFloatingButtonItem);
    }

    public interface OnChangeListener {
        boolean onMainActionSelected();

        void onToggleChanged(boolean z10);
    }

    public interface OnFloatingButtonClickListener {
        void onClick();
    }

    public COUIFloatingButton(Context context) {
        super(context);
        this.mMainButtonRect = new RectF();
        this.mMainButtonGlobalRect = new Rect();
        this.mSeamlessImpl = new COUIFloatingButtonSeamlessImpl();
        this.mState = 0;
        this.mStateBeforeDisable = 0;
        this.mCurrentProgress = 1.0f;
        this.mInstanceState = new InstanceState();
        this.mFloatingButtonLabelList = new ArrayList();
        this.mMainFabClosedDrawable = null;
        this.mExpandMenuAnimationInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mCloseMenuPathInterpolator = new COUIMoveEaseInterpolator();
        this.mLabelPathInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mCloseMenuLabelPathInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mRotateForwardInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mRotateBackwardInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mIsNeedElevation = true;
        this.mIsNeedVibrate = true;
        this.mIsScaleAnimation = true;
        this.mProgressAnimator = null;
        this.mOnActionSelectedProxyListener = new OnActionSelectedListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.1
            AnonymousClass1() {
            }

            @Override // com.coui.appcompat.floatingactionbutton.COUIFloatingButton.OnActionSelectedListener
            public boolean onActionSelected(COUIFloatingButtonItem cOUIFloatingButtonItem) {
                if (COUIFloatingButton.this.mOnActionSelectedListener == null) {
                    return false;
                }
                boolean zOnActionSelected = COUIFloatingButton.this.mOnActionSelectedListener.onActionSelected(cOUIFloatingButtonItem);
                if (!zOnActionSelected) {
                    COUIFloatingButton.this.closeFloatingButtonMenu(false, 300);
                }
                return zOnActionSelected;
            }
        };
        init(context, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void animateNormal(android.view.MotionEvent r5) {
        /*
            r4 = this;
            android.animation.ValueAnimator r0 = r4.mProgressAnimator
            if (r0 == 0) goto Lf
            boolean r0 = r0.isRunning()
            if (r0 == 0) goto Lf
            android.animation.ValueAnimator r0 = r4.mProgressAnimator
            r0.cancel()
        Lf:
            int r0 = r4.mState
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L37
            if (r0 == r1) goto L37
            r3 = 2
            if (r0 == r3) goto L1e
            r3 = 4
            if (r0 == r3) goto L37
            return
        L1e:
            float r0 = r5.getRawX()
            int r0 = (int) r0
            float r5 = r5.getRawY()
            int r5 = (int) r5
            boolean r5 = r4.isEventInsideView(r0, r5)
            if (r5 == 0) goto L4c
            r4.closeFloatingButtonMenu()
            com.coui.appcompat.state.COUIMaskEffectDrawable r5 = r4.mMaskDrawable
            r5.setTouchEnterStateLocked(r2, r2, r1)
            goto L4c
        L37:
            float r0 = r5.getRawX()
            int r0 = (int) r0
            float r5 = r5.getRawY()
            int r5 = (int) r5
            boolean r5 = r4.isEventInsideView(r0, r5)
            if (r5 != 0) goto L4c
            com.coui.appcompat.state.COUIMaskEffectDrawable r5 = r4.mMaskDrawable
            r5.setTouchEnterStateLocked(r2, r2, r1)
        L4c:
            android.animation.ValueAnimator r4 = r4.mProgressAnimator
            if (r4 == 0) goto L53
            r4.start()
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.animateNormal(android.view.MotionEvent):void");
    }

    public void animatePress() {
        performHapticFeedback();
        ValueAnimator valueAnimator = this.mProgressAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mProgressAnimator.cancel();
        }
        int i10 = this.mState;
        if (i10 == 0 || i10 == 1) {
            if (hasFloatingButtonLabel()) {
                this.mMaskDrawable.setTouchEnterStateLocked(true, true, true);
            }
        } else if (i10 != 2 && i10 != 3 && i10 != 4) {
            return;
        }
        ValueAnimator valueAnimator2 = this.mProgressAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.start();
        }
    }

    private void animationFloatingButtonMenuClose(COUIFloatingButtonLabel cOUIFloatingButtonLabel, int i10, int i11, int i12, boolean z10) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        int totalLabelHeight = getTotalLabelHeight(i11);
        if (z10) {
            totalLabelHeight += marginLayoutParams.bottomMargin + this.mMainFloatingButton.getHeight();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel, ANIMATION_TYPE_TRANSLATION_Y, totalLabelHeight);
        objectAnimatorOfFloat.setStartDelay(i10);
        objectAnimatorOfFloat.setDuration(i12);
        objectAnimatorOfFloat.setInterpolator(this.mCloseMenuPathInterpolator);
        if (cOUIFloatingButtonLabel.getFloatingButtonLabelText().getText() != "") {
            if (isRtlMode()) {
                cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().setPivotX(0.0f);
                cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().setPivotY(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().getHeight());
            } else {
                cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().setPivotX(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().getWidth());
                cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().setPivotY(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().getHeight());
            }
        }
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.10
            final /* synthetic */ COUIFloatingButtonLabel val$couiFloatingButtonLabel;
            final /* synthetic */ int val$duration;
            final /* synthetic */ boolean val$needDrop;
            final /* synthetic */ int val$position;

            AnonymousClass10(int i112, boolean z102, COUIFloatingButtonLabel cOUIFloatingButtonLabel2, int i122) {
                i = i112;
                z = z102;
                cOUIFloatingButtonLabel = cOUIFloatingButtonLabel2;
                i = i122;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cOUIFloatingButtonLabel.setTranslationY(COUIFloatingButton.this.getTotalLabelHeight(i));
                cOUIFloatingButtonLabel.getChildFloatingButton().setPivotX(cOUIFloatingButtonLabel.getChildFloatingButton().getWidth() / 2.0f);
                cOUIFloatingButtonLabel.getChildFloatingButton().setPivotY(cOUIFloatingButtonLabel.getChildFloatingButton().getHeight() / 2.0f);
                cOUIFloatingButtonLabel.setPivotX(r3.getWidth());
                cOUIFloatingButtonLabel.setPivotY(r3.getHeight());
                if (COUIFloatingButton.this.isLastFloatingButtonLabel(i)) {
                    COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
                }
                COUIFloatingButton.this.setState(1);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (COUIFloatingButton.this.isFirstFloatingButtonLabel(i)) {
                    COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
                    COUIFloatingButton.this.setOnActionSelectedListener(null);
                }
                if (z) {
                    COUIFloatingButton.this.narrowFloatingButton(cOUIFloatingButtonLabel, i, i, true);
                } else {
                    COUIFloatingButton.this.narrowFloatingButton(cOUIFloatingButtonLabel, i, i, false);
                }
                COUIFloatingButton.this.setState(4);
            }
        });
        objectAnimatorOfFloat.start();
    }

    private void animationFloatingButtonMenuExpand(COUIFloatingButtonLabel cOUIFloatingButtonLabel, int i10, int i11, int i12) {
        AnimatorSet animatorSet = new AnimatorSet();
        f fVar = new f(cOUIFloatingButtonLabel, c.f2289n, 0.0f);
        fVar.u().f(500.0f);
        fVar.u().d(DEFAULT_SPRING_ANIMATION_DAMPING_RATIO);
        fVar.n(0.0f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getChildFloatingButton(), ANIMATION_TYPE_SCALE_X, 0.6f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getChildFloatingButton(), ANIMATION_TYPE_SCALE_Y, 0.6f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground(), ANIMATION_TYPE_SCALE_X, 0.6f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground(), ANIMATION_TYPE_SCALE_Y, 0.6f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getChildFloatingButton(), ANIMATION_TYPE_ALPHA, 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground(), ANIMATION_TYPE_ALPHA, 0.0f, 1.0f);
        objectAnimatorOfFloat6.setInterpolator(this.mExpandMenuAnimationInterpolator);
        objectAnimatorOfFloat6.setDuration(DEFAULT_ENLARGE_ANIMATION_DURATION);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat5, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
        animatorSet.setInterpolator(this.mExpandMenuAnimationInterpolator);
        animatorSet.setDuration(300L);
        animatorSet.setStartDelay(i10);
        if (cOUIFloatingButtonLabel.getFloatingButtonLabelText().getText() != "") {
            if (isRtlMode()) {
                cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().setPivotX(0.0f);
                cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().setPivotY(0.0f);
            } else {
                cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().setPivotX(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().getWidth());
                cOUIFloatingButtonLabel.getFloatingButtonLabelBackground().setPivotY(0.0f);
            }
        }
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.9
            final /* synthetic */ COUIFloatingButtonLabel val$couiFloatingButtonLabel;
            final /* synthetic */ ObjectAnimator val$labelAlphaAnimation;
            final /* synthetic */ int val$position;
            final /* synthetic */ f val$springAnimation;
            final /* synthetic */ int val$visibility;

            AnonymousClass9(int i112, ObjectAnimator objectAnimatorOfFloat62, f fVar2, COUIFloatingButtonLabel cOUIFloatingButtonLabel2, int i122) {
                i = i112;
                objectAnimator = objectAnimatorOfFloat62;
                fVar = fVar2;
                cOUIFloatingButtonLabel = cOUIFloatingButtonLabel2;
                i = i122;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (COUIFloatingButton.this.isFirstFloatingButtonLabel(i)) {
                    COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
                    COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
                    cOUIFloatingButton.setOnActionSelectedListener(cOUIFloatingButton.mTempOnActionSelectedListener);
                }
                COUIFloatingButton.this.setState(2);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (COUIFloatingButton.this.isLastFloatingButtonLabel(i)) {
                    COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
                    COUIFloatingButton.this.setOnActionSelectedListener(null);
                }
                objectAnimator.start();
                fVar.s(0.0f);
                cOUIFloatingButtonLabel.setVisibility(i);
                COUIFloatingButton.this.setState(3);
            }
        });
        animatorSet.start();
    }

    private void cancelHideAnimator() {
        ValueAnimator valueAnimator = this.mHideAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.mHideAnimator.cancel();
    }

    private AppCompatImageView createMainFab() {
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_floating_button_item_stroke_width);
        int i10 = this.mButtonSize;
        if (i10 > 0) {
            this.mFloatingButtonPixel = i10;
        } else {
            this.mFloatingButtonPixel = getResources().getDimensionPixelSize(R$dimen.coui_floating_button_size);
        }
        int i11 = this.mFloatingButtonPixel;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i11, i11);
        RectF rectF = this.mMainButtonRect;
        int i12 = this.mFloatingButtonPixel;
        rectF.set(0.0f, 0.0f, i12, i12);
        layoutParams.gravity = 8388613;
        int iDpToPx = dpToPx(getContext(), 0.0f);
        dpToPx(getContext(), 8.0f);
        layoutParams.setMargins(iDpToPx, 0, iDpToPx, 0);
        appCompatImageView.setId(R$id.coui_floating_button_main_fab);
        appCompatImageView.setLayoutParams(layoutParams);
        appCompatImageView.setPaddingRelative(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        appCompatImageView.setScaleType(ImageView.ScaleType.CENTER);
        appCompatImageView.setClickable(true);
        appCompatImageView.setFocusable(true);
        return appCompatImageView;
    }

    private static int dpToPx(Context context, float f10) {
        return Math.round(TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics()));
    }

    private COUIFloatingButtonLabel findFloatingButtonItemByIndex(int i10) {
        if (i10 < this.mFloatingButtonLabelList.size()) {
            return this.mFloatingButtonLabelList.get(i10);
        }
        return null;
    }

    private COUIFloatingButtonLabel findFloatingButtonItemByPosition(int i10) {
        for (COUIFloatingButtonLabel cOUIFloatingButtonLabel : this.mFloatingButtonLabelList) {
            if (cOUIFloatingButtonLabel.getId() == i10) {
                return cOUIFloatingButtonLabel;
            }
        }
        return null;
    }

    private int getBrightnessColor(int i10, float f10) {
        float[] fArr = new float[3];
        d.k(i10, fArr);
        if (this.mTranslateEnhancementRatio != 0.0f) {
            int iA = d.a(fArr);
            return Color.argb((int) (Color.alpha(i10) / f10), Math.min(255, Color.red(iA)), Math.min(255, Color.green(iA)), Math.min(255, Color.blue(iA)));
        }
        fArr[2] = fArr[2] * f10;
        int iA2 = d.a(fArr);
        return Color.argb(Color.alpha(iA2), Math.min(255, Color.red(iA2)), Math.min(255, Color.green(iA2)), Math.min(255, Color.blue(iA2)));
    }

    private float getBrightnessValue(float f10) {
        float f11 = this.mTranslateEnhancementRatio;
        float f12 = f11 != 0.0f ? 1.0f / f11 : DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MIN_VALUE;
        return f12 + ((1.0f - f12) * f10);
    }

    private void getGlobalVisibleRectWithoutTransformation(View view) {
        view.getGlobalVisibleRect(this.mMainButtonGlobalRect);
        float fWidth = this.mMainButtonGlobalRect.width() / view.getScaleX();
        int iWidth = (int) ((fWidth - this.mMainButtonGlobalRect.width()) * (view.getPivotX() / fWidth));
        float fHeight = this.mMainButtonGlobalRect.height() / view.getScaleY();
        int iHeight = (int) ((fHeight - this.mMainButtonGlobalRect.height()) * (view.getPivotY() / fHeight));
        Rect rect = this.mMainButtonGlobalRect;
        rect.set(rect.left - iWidth, rect.top - iHeight, rect.right + iWidth, rect.bottom + iHeight);
    }

    private int getLayoutPosition(int i10) {
        return this.mFloatingButtonLabelList.size() - i10;
    }

    private float getScaleValue(float f10) {
        return (f10 * 0.100000024f) + 0.9f;
    }

    public int getTotalLabelHeight(int i10) {
        if (i10 < 0 || i10 >= this.mFloatingButtonLabelList.size()) {
            return 0;
        }
        return dpToPx(getContext(), (i10 * 72) + 88);
    }

    public void handleOnClickFloatingButton() {
        if (!isOpen()) {
            openFloatingButtonMenu();
            return;
        }
        OnChangeListener onChangeListener = this.mOnChangeListener;
        if (onChangeListener == null || !onChangeListener.onMainActionSelected()) {
            closeFloatingButtonMenu();
        }
    }

    public void hide(FloatingActionButton.b bVar) {
        if (isOpen()) {
            closeFloatingButtonMenu();
            m0.d(this.mMainFloatingButton).f(0.0f).g(0L).m();
        }
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIFloatingButton, 0, 0);
        this.mIsNeedElevation = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIFloatingButton_fabNeedElevation, true);
        this.mIsNeedVibrate = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIFloatingButton_fabNeedVibrate, true);
        this.mButtonSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIFloatingButton_fabButtonSize, 0);
        this.mIsScaleAnimation = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIFloatingButton_fabScaleAnimation, true);
        this.mTranslateEnhancementRatio = typedArrayObtainStyledAttributes.getFloat(R$styleable.COUIFloatingButton_fabTranslateEnhancementRatio, 0.0f);
        this.mMainFloatingButton = createMainFab();
        AnonymousClass4 anonymousClass4 = new ViewOutlineProvider() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.4
            AnonymousClass4() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setOval(0, 0, view.getWidth(), view.getHeight());
            }
        };
        if (this.mIsNeedElevation) {
            ShadowUtils.setElevationToFloatingActionButton(this.mMainFloatingButton, getResources().getDimensionPixelOffset(com.support.appcompat.R$dimen.support_shadow_size_level_three), getResources().getColor(R$color.coui_floating_button_elevation_color));
        }
        this.mMainFloatingButton.setOutlineProvider(anonymousClass4);
        this.mMainFloatingButton.setClipToOutline(true);
        this.mMainFloatingButton.setDefaultFocusHighlightEnabled(false);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        this.mMainButtonShapeDrawable = shapeDrawable;
        shapeDrawable.getPaint().setColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimary, 0));
        this.mMainButtonShapeDrawable.setBounds(0, 0, (int) this.mMainButtonRect.width(), (int) this.mMainButtonRect.height());
        COUIMaskEffectDrawable cOUIMaskEffectDrawable = new COUIMaskEffectDrawable(context, 0);
        this.mMaskDrawable = cOUIMaskEffectDrawable;
        RectF rectF = this.mMainButtonRect;
        cOUIMaskEffectDrawable.setMaskRect(rectF, rectF.width() / 2.0f, this.mMainButtonRect.height() / 2.0f);
        COUIStrokeDrawable cOUIStrokeDrawable = new COUIStrokeDrawable(context);
        this.mStrokeEffectDrawable = cOUIStrokeDrawable;
        RectF rectF2 = this.mMainButtonRect;
        cOUIStrokeDrawable.setStrokeRect(rectF2, rectF2.width() / 2.0f, this.mMainButtonRect.height() / 2.0f);
        View view = new View(getContext());
        int i10 = this.mFloatingButtonPixel;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i10, i10);
        view.setBackground(this.mStrokeEffectDrawable);
        view.setFocusable(false);
        COUIStateEffectDrawable cOUIStateEffectDrawable = new COUIStateEffectDrawable(new Drawable[]{this.mMainButtonShapeDrawable, this.mMaskDrawable});
        this.mStateEffectBackground = cOUIStateEffectDrawable;
        cOUIStateEffectDrawable.enableScaleEffect(this.mMainFloatingButton, 2);
        this.mMainFloatingButton.setBackground(this.mStateEffectBackground);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 8388613;
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setClipChildren(false);
        frameLayout.addView(this.mMainFloatingButton);
        frameLayout.addView(view, layoutParams);
        addView(frameLayout, layoutParams2);
        setClipChildren(false);
        setClipToPadding(false);
        setFocusable(false);
        this.mMainFloatingButton.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.coui.appcompat.floatingactionbutton.a
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z10) {
                this.f7275a.lambda$init$0(view2, z10);
            }
        });
        this.mAutoDismissRunnable = new AutoDismissRunnable();
        this.mDisabledColor = h.d(context.getResources(), R$color.coui_floating_button_disabled_color, context.getTheme());
        try {
            try {
                this.mIsFloatingButtonExpandEnable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIFloatingButton_fabExpandAnimationEnable, true);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIFloatingButton_mainFloatingButtonSrc, Integer.MIN_VALUE);
                if (resourceId != Integer.MIN_VALUE) {
                    setMainFabDrawable(e.a.b(getContext(), resourceId));
                }
                setExpansionMode();
                setMainFloatingButtonBackgroundColor(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIFloatingButton_mainFloatingButtonBackgroundColor));
                setFloatingButtonExpandEnable(this.mIsFloatingButtonExpandEnable);
                setEnabled(typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIFloatingButton_android_enabled, isEnabled()));
            } catch (Exception e10) {
                Log.e(TAG, "Failure setting FabWithLabelView icon" + e10.getMessage());
            }
            typedArrayObtainStyledAttributes.recycle();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private boolean isEventInsideView(int i10, int i11) {
        getGlobalVisibleRectWithoutTransformation(this.mMainFloatingButton);
        return this.mMainButtonGlobalRect.contains(i10, i11);
    }

    public boolean isFirstFloatingButtonLabel(int i10) {
        COUIFloatingButtonLabel cOUIFloatingButtonLabelFindFloatingButtonItemByIndex = findFloatingButtonItemByIndex(i10);
        return cOUIFloatingButtonLabelFindFloatingButtonItemByIndex != null && indexOfChild(cOUIFloatingButtonLabelFindFloatingButtonItemByIndex) == this.mFloatingButtonLabelList.size() - 1;
    }

    public boolean isLastFloatingButtonLabel(int i10) {
        COUIFloatingButtonLabel cOUIFloatingButtonLabelFindFloatingButtonItemByIndex = findFloatingButtonItemByIndex(i10);
        return cOUIFloatingButtonLabelFindFloatingButtonItemByIndex != null && indexOfChild(cOUIFloatingButtonLabelFindFloatingButtonItemByIndex) == 0;
    }

    private boolean isRtlMode() {
        return getLayoutDirection() == 1;
    }

    public /* synthetic */ void lambda$init$0(View view, boolean z10) {
        if (z10) {
            this.mStrokeEffectDrawable.setFocusEntered();
        } else {
            this.mStrokeEffectDrawable.setFocusExited();
        }
    }

    public void narrowFloatingButton(COUIFloatingButtonLabel cOUIFloatingButtonLabel, int i10, int i11, boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getChildFloatingButton(), ANIMATION_TYPE_SCALE_X, 1.0f, 0.6f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getChildFloatingButton(), ANIMATION_TYPE_SCALE_Y, 1.0f, 0.6f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground(), ANIMATION_TYPE_SCALE_X, 1.0f, 0.6f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground(), ANIMATION_TYPE_SCALE_Y, 1.0f, 0.6f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getChildFloatingButton(), ANIMATION_TYPE_ALPHA, 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(cOUIFloatingButtonLabel.getFloatingButtonLabelBackground(), ANIMATION_TYPE_ALPHA, 1.0f, 0.0f);
        objectAnimatorOfFloat6.setInterpolator(this.mCloseMenuLabelPathInterpolator);
        objectAnimatorOfFloat6.setDuration(200L);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat5, objectAnimatorOfFloat4, objectAnimatorOfFloat3);
        animatorSet.setInterpolator(this.mCloseMenuPathInterpolator);
        animatorSet.setDuration(i11);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.11
            final /* synthetic */ ObjectAnimator val$labelAlphaAnimation;

            AnonymousClass11(ObjectAnimator objectAnimatorOfFloat62) {
                objectAnimator = objectAnimatorOfFloat62;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                objectAnimator.start();
            }
        });
        animatorSet.start();
    }

    private void performHapticFeedback() {
        if (this.mIsNeedVibrate) {
            performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
        }
    }

    private void setExpansionMode() {
        setOrientation(1);
        Iterator<COUIFloatingButtonLabel> it = this.mFloatingButtonLabelList.iterator();
        while (it.hasNext()) {
            it.next().setOrientation(0);
        }
        closeFloatingButtonMenu(false, 300);
        ArrayList<COUIFloatingButtonItem> actionItems = getActionItems();
        removeAllActionItems();
        addAllActionItems(actionItems);
    }

    private void setFloatingButtonPosition(COUIFloatingButtonLabel cOUIFloatingButtonLabel, int i10) {
        cOUIFloatingButtonLabel.setVisibility(0);
        cOUIFloatingButtonLabel.getChildFloatingButton().setAlpha(0.0f);
    }

    public boolean setState(int i10) {
        int i11 = this.mState;
        if (i11 != -1) {
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4 && i10 == 1) {
                                this.mState = i10;
                            }
                        } else if (i10 == 2) {
                            this.mState = i10;
                        }
                    } else if (i10 == 4 || i10 == -1) {
                        this.mState = i10;
                    }
                } else if (i10 == 3 || i10 == -1 || i10 == 0) {
                    this.mState = i10;
                }
            } else if (i10 == -1 || i10 == 1) {
                this.mState = i10;
            }
        } else if (i10 == 0 || i10 == 1) {
            this.mState = i10;
        }
        return i10 == this.mState;
    }

    public static boolean supportSeamlessAnimation() {
        return COUIVersionUtil.checkOPlusViewSubSDK(SDK_VERSION_37, 2);
    }

    private void toggle(boolean z10, boolean z11, int i10, boolean z12) {
        if (this.mIsNeedElevation) {
            if (z10 && this.mFloatingButtonLabelList.isEmpty()) {
                OnChangeListener onChangeListener = this.mOnChangeListener;
                if (onChangeListener != null) {
                    onChangeListener.onMainActionSelected();
                }
                z10 = false;
            }
            if (isOpen() == z10) {
                return;
            }
            if (!isAnimationRunning()) {
                visibilitySetup(z10, z11, i10, z12);
                updateMainFabDrawable(z11, z12);
            }
            OnChangeListener onChangeListener2 = this.mOnChangeListener;
            if (onChangeListener2 != null) {
                onChangeListener2.onToggleChanged(z10);
            }
        }
    }

    private void updateMainFabDrawable(boolean z10, boolean z11) {
        if (isOpen()) {
            rotateForward(this.mMainFloatingButton, 45.0f, z11);
            return;
        }
        rotateBackward(z11).start();
        Drawable drawable = this.mMainFabClosedDrawable;
        if (drawable != null) {
            this.mMainFloatingButton.setImageDrawable(drawable);
        }
    }

    private void updateMainFloatingButtonBackgroundColor() {
        ColorStateList mainFloatingButtonBackgroundColor = getMainFloatingButtonBackgroundColor();
        if (mainFloatingButtonBackgroundColor == null || mainFloatingButtonBackgroundColor == ColorStateList.valueOf(Integer.MIN_VALUE)) {
            this.mMainButtonShapeDrawable.getPaint().setColor(isEnabled() ? COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimary, 0) : this.mDisabledColor);
        } else {
            this.mMainButtonShapeDrawable.getPaint().setColor(isEnabled() ? mainFloatingButtonBackgroundColor.getDefaultColor() : mainFloatingButtonBackgroundColor.getColorForState(DISABLED_STATE, this.mDisabledColor));
        }
    }

    private void visibilitySetup(boolean z10, boolean z11, int i10, boolean z12) {
        int size = this.mFloatingButtonLabelList.size();
        if (!z10) {
            for (int i11 = 0; i11 < size; i11++) {
                COUIFloatingButtonLabel cOUIFloatingButtonLabel = this.mFloatingButtonLabelList.get(i11);
                if (z11) {
                    animationFloatingButtonMenuClose(cOUIFloatingButtonLabel, i11 * 50, i11, i10, z12);
                }
            }
            this.mMaskDrawable.setTouchEnterStateLocked(false, false, true);
            this.mInstanceState.mCOUIFloatingButtonMenuIsOpen = false;
            return;
        }
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = (size - 1) - i12;
            COUIFloatingButtonLabel cOUIFloatingButtonLabel2 = this.mFloatingButtonLabelList.get(i13);
            if (this.mCurrentWindowHeight != 0) {
                if (isAllowLabelDisplay(i13)) {
                    cOUIFloatingButtonLabel2.setVisibility(0);
                    if (z11) {
                        animationFloatingButtonMenuExpand(cOUIFloatingButtonLabel2, i12 * 50, i13, 0);
                    }
                } else {
                    cOUIFloatingButtonLabel2.setVisibility(8);
                    if (z11) {
                        animationFloatingButtonMenuExpand(cOUIFloatingButtonLabel2, i12 * 50, i13, 8);
                    }
                }
            } else if (z11) {
                animationFloatingButtonMenuExpand(cOUIFloatingButtonLabel2, i12 * 50, i13, 0);
            }
        }
        this.mInstanceState.mCOUIFloatingButtonMenuIsOpen = true;
    }

    public COUIFloatingButtonLabel addActionItem(COUIFloatingButtonItem cOUIFloatingButtonItem) {
        return addActionItem(cOUIFloatingButtonItem, this.mFloatingButtonLabelList.size());
    }

    public Collection<COUIFloatingButtonLabel> addAllActionItems(Collection<COUIFloatingButtonItem> collection) {
        ArrayList arrayList = new ArrayList();
        Iterator<COUIFloatingButtonItem> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(addActionItem(it.next()));
        }
        return arrayList;
    }

    public void animationFloatingButtonEnlarge() {
        m0.d(this.mMainFloatingButton).c();
        cancelHideAnimator();
        this.mMainFloatingButton.setVisibility(0);
        this.mMainFloatingButton.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setInterpolator(DEFAULT_ENLARGE_ANIMATION_INTERPOLATOR).setDuration(DEFAULT_ENLARGE_ANIMATION_DURATION).setListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.6
            AnonymousClass6() {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
                cOUIFloatingButton.removeCallbacks(cOUIFloatingButton.mAutoDismissRunnable);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
                COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
                cOUIFloatingButton.removeCallbacks(cOUIFloatingButton.mAutoDismissRunnable);
            }
        });
    }

    public ValueAnimator animationFloatingButtonShrink(Animator.AnimatorListener animatorListener) {
        m0.d(this.mMainFloatingButton).c();
        ValueAnimator valueAnimatorOfPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofFloat(ANIMATION_TYPE_ALPHA, this.mMainFloatingButton.getAlpha(), 0.0f), PropertyValuesHolder.ofFloat(ANIMATION_TYPE_SCALE_X, this.mMainFloatingButton.getScaleX(), 0.6f), PropertyValuesHolder.ofFloat(ANIMATION_TYPE_SCALE_Y, this.mMainFloatingButton.getScaleY(), 0.6f));
        this.mHideAnimator = valueAnimatorOfPropertyValuesHolder;
        valueAnimatorOfPropertyValuesHolder.setInterpolator(DEFAULT_ENLARGE_ANIMATION_INTERPOLATOR);
        this.mHideAnimator.setDuration(DEFAULT_ENLARGE_ANIMATION_DURATION);
        this.mHideAnimator.addListener(animatorListener);
        this.mHideAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.7
            AnonymousClass7() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue(COUIFloatingButton.ANIMATION_TYPE_ALPHA)).floatValue();
                float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue(COUIFloatingButton.ANIMATION_TYPE_SCALE_X)).floatValue();
                float fFloatValue3 = ((Float) valueAnimator.getAnimatedValue(COUIFloatingButton.ANIMATION_TYPE_SCALE_Y)).floatValue();
                COUIFloatingButton.this.mMainFloatingButton.setAlpha(fFloatValue);
                COUIFloatingButton.this.mMainFloatingButton.setScaleX(fFloatValue2);
                COUIFloatingButton.this.mMainFloatingButton.setScaleY(fFloatValue3);
            }
        });
        return this.mHideAnimator;
    }

    @Deprecated
    public void animationFloatingButtonSlideIn(int i10) {
        animationFloatingButtonEnlarge();
    }

    @Deprecated
    public ValueAnimator animationFloatingButtonSlideOut() {
        return animationFloatingButtonShrink(new Animator.AnimatorListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.8
            AnonymousClass8() {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
                cOUIFloatingButton.removeCallbacks(cOUIFloatingButton.mAutoDismissRunnable);
                COUIFloatingButton.this.mMainFloatingButton.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                COUIFloatingButton.this.mMainFloatingButton.setVisibility(0);
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
                COUIFloatingButton cOUIFloatingButton = COUIFloatingButton.this;
                cOUIFloatingButton.postDelayed(cOUIFloatingButton.mAutoDismissRunnable, 5000L);
            }
        });
    }

    public void closeFloatingButtonMenu() {
        toggle(false, true, 300, false);
    }

    public ArrayList<COUIFloatingButtonItem> getActionItems() {
        ArrayList<COUIFloatingButtonItem> arrayList = new ArrayList<>(this.mFloatingButtonLabelList.size());
        Iterator<COUIFloatingButtonLabel> it = this.mFloatingButtonLabelList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getFloatingButtonItem());
        }
        return arrayList;
    }

    public COUIFloatingButtonLabel getChildFloatingButtonWithPosition(int i10) {
        return findFloatingButtonItemByPosition(i10);
    }

    public AppCompatImageView getMainFloatingButton() {
        return this.mMainFloatingButton;
    }

    public ColorStateList getMainFloatingButtonBackgroundColor() {
        return this.mInstanceState.mMainCOUIFloatingButtonBackgroundColor;
    }

    public Bundle getSeamlessViewBundle() {
        return this.mSeamlessImpl.getSeamlessViewBundle();
    }

    public boolean hasFloatingButtonLabel() {
        return this.mFloatingButtonLabelList.size() > 0;
    }

    public boolean isAllowLabelDisplay(int i10) {
        if (i10 < 0 || i10 >= this.mFloatingButtonLabelList.size()) {
            return false;
        }
        return (((float) getTotalLabelHeight(i10)) + ((float) ((ViewGroup.MarginLayoutParams) getLayoutParams()).bottomMargin)) + ((float) this.mMainFloatingButton.getHeight()) <= ((float) (this.mCurrentWindowHeight + this.mCurrentWindowHeightOffset));
    }

    public boolean isAnimationRunning() {
        return this.mInstanceState.mCOUIFloatingButtonAnimationIsRun;
    }

    public boolean isFloatingButtonHasChildItem() {
        return this.mFloatingButtonLabelList.size() != 0;
    }

    public boolean isOpen() {
        return this.mInstanceState.mCOUIFloatingButtonMenuIsOpen;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mButtonSize <= 0) {
            Context contextCreateConfigurationContext = getContext().createConfigurationContext(configuration);
            if (COUIResponsiveUtils.isSmallScreenDp(configuration.screenWidthDp)) {
                this.mFloatingButtonPixel = contextCreateConfigurationContext.getResources().getDimensionPixelOffset(R$dimen.coui_floating_button_normal_size);
            } else {
                this.mFloatingButtonPixel = contextCreateConfigurationContext.getResources().getDimensionPixelOffset(R$dimen.coui_floating_button_large_size);
            }
            ViewGroup.LayoutParams layoutParams = this.mMainFloatingButton.getLayoutParams();
            int i10 = this.mFloatingButtonPixel;
            layoutParams.width = i10;
            layoutParams.height = i10;
            this.mMainFloatingButton.setLayoutParams(layoutParams);
            RectF rectF = this.mMainButtonRect;
            int i11 = this.mFloatingButtonPixel;
            rectF.set(0.0f, 0.0f, i11, i11);
            COUIMaskEffectDrawable cOUIMaskEffectDrawable = this.mMaskDrawable;
            RectF rectF2 = this.mMainButtonRect;
            cOUIMaskEffectDrawable.setMaskRect(rectF2, rectF2.width() / 2.0f, this.mMainButtonRect.height() / 2.0f);
            COUIStrokeDrawable cOUIStrokeDrawable = this.mStrokeEffectDrawable;
            RectF rectF3 = this.mMainButtonRect;
            cOUIStrokeDrawable.setStrokeRect(rectF3, rectF3.width() / 2.0f, this.mMainButtonRect.height() / 2.0f);
        }
    }

    public void openFloatingButtonMenu() {
        toggle(true, true, 300, false);
    }

    public COUIFloatingButtonItem removeActionItem(int i10) {
        if (this.mFloatingButtonLabelList.size() <= i10) {
            COUILog.e(TAG, "The position cannot be greater than or equal to mFloatingButtonLabelList.size");
            return null;
        }
        COUIFloatingButtonItem floatingButtonItem = this.mFloatingButtonLabelList.get(i10).getFloatingButtonItem();
        removeActionItem(floatingButtonItem);
        return floatingButtonItem;
    }

    public COUIFloatingButtonItem removeActionItemByPosition(int i10) {
        return removeActionItem(findFloatingButtonItemByPosition(i10));
    }

    public void removeAllActionItems() {
        Iterator<COUIFloatingButtonLabel> it = this.mFloatingButtonLabelList.iterator();
        while (it.hasNext()) {
            removeActionItem(it.next(), it, true);
        }
    }

    public void removeFloatingButtonItemWithWindowHeight(int i10) {
        removeFloatingButtonItemWithWindowHeight(i10, 0);
    }

    public COUIFloatingButtonLabel replaceActionItem(COUIFloatingButtonItem cOUIFloatingButtonItem, int i10) {
        if (this.mFloatingButtonLabelList.isEmpty()) {
            return null;
        }
        return replaceActionItem(this.mFloatingButtonLabelList.get(i10).getFloatingButtonItem(), cOUIFloatingButtonItem);
    }

    public ObjectAnimator rotateBackward(boolean z10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mMainFloatingButton, ANIMATION_TYPE_ROTATION, this.mRotateAngle, 0.0f);
        objectAnimatorOfFloat.setInterpolator(this.mRotateBackwardInterpolator);
        objectAnimatorOfFloat.setDuration(z10 ? 250L : 300L);
        return objectAnimatorOfFloat;
    }

    public void rotateForward(View view, float f10, boolean z10) {
        this.mRotateAngle = f10;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mMainFloatingButton, ANIMATION_TYPE_ROTATION, 0.0f, f10);
        objectAnimatorOfFloat.setInterpolator(this.mRotateForwardInterpolator);
        objectAnimatorOfFloat.setDuration(z10 ? 250L : 300L);
        objectAnimatorOfFloat.start();
    }

    public void setAutoSlideInDisable() {
        Runnable runnable = this.mAutoDismissRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        getMainFloatingButton().setEnabled(z10);
        if (z10) {
            this.mMainFloatingButton.setAlpha(1.0f);
            setState(this.mStateBeforeDisable);
        } else {
            this.mMainFloatingButton.setAlpha(0.3f);
            this.mStateBeforeDisable = this.mState;
            setState(-1);
        }
    }

    public void setFloatingButtonClickListener(OnFloatingButtonClickListener onFloatingButtonClickListener) {
        this.mFloatingButtonClickListener = onFloatingButtonClickListener;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setFloatingButtonExpandEnable(boolean z10) {
        if (z10) {
            this.mMainFloatingButton.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.2
                AnonymousClass2() {
                }

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (COUIFloatingButton.this.isEnabled()) {
                        int action = motionEvent.getAction();
                        if (action == 0) {
                            COUIFloatingButton.this.mSeamlessImpl.setSeamlessBundle(COUIFloatingButton.this.mMainFloatingButton);
                            COUIFloatingButton.this.animatePress();
                            COUIFloatingButton.this.mStateEffectBackground.setTouched(true);
                        } else if (action == 1 || action == 3) {
                            COUIFloatingButton.this.animateNormal(motionEvent);
                            COUIFloatingButton.this.mStateEffectBackground.setTouched(false);
                        }
                    }
                    return false;
                }
            });
        }
        this.mMainFloatingButton.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.3
            AnonymousClass3() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (COUIFloatingButton.this.mFloatingButtonClickListener != null) {
                    COUIFloatingButton.this.mFloatingButtonClickListener.onClick();
                }
                COUIFloatingButton.this.handleOnClickFloatingButton();
            }
        });
    }

    public void setIsFloatingButtonExpandEnable(boolean z10) {
        this.mIsFloatingButtonExpandEnable = z10;
        if (z10) {
            setState(1);
        } else {
            setState(0);
        }
    }

    public void setMainFabDrawable(Drawable drawable) {
        this.mMainFabClosedDrawable = drawable;
        updateMainFabDrawable(false, false);
    }

    public void setMainFloatingButtonBackgroundColor(ColorStateList colorStateList) {
        this.mInstanceState.mMainCOUIFloatingButtonBackgroundColor = colorStateList;
        if (colorStateList != null) {
            this.mInstanceState.mShadowColor = colorStateList.getDefaultColor();
            if (this.mIsNeedElevation) {
                ShadowUtils.setElevationToFloatingActionButton(this.mMainFloatingButton, getResources().getDimensionPixelOffset(com.support.appcompat.R$dimen.support_shadow_size_level_three), getResources().getColor(R$color.coui_floating_button_elevation_color), this.mInstanceState.mShadowColor);
            }
        }
        updateMainFloatingButtonBackgroundColor();
    }

    public void setOnActionSelectedListener(OnActionSelectedListener onActionSelectedListener) {
        this.mOnActionSelectedListener = onActionSelectedListener;
        if (onActionSelectedListener != null) {
            this.mTempOnActionSelectedListener = onActionSelectedListener;
        }
        for (int i10 = 0; i10 < this.mFloatingButtonLabelList.size(); i10++) {
            this.mFloatingButtonLabelList.get(i10).setOnActionSelectedListener(this.mOnActionSelectedProxyListener);
        }
    }

    public void setOnChangeListener(OnChangeListener onChangeListener) {
        this.mOnChangeListener = onChangeListener;
    }

    public void setScaleAnimation(boolean z10) {
        this.mIsScaleAnimation = z10;
    }

    public void show() {
        animationFloatingButtonEnlarge();
    }

    public static class COUIFloatingButtonBehavior extends CoordinatorLayout.c {
        private static final boolean AUTO_HIDE_DEFAULT = true;
        private boolean mAutoHideEnabled;
        private FloatingActionButton.b mInternalAutoHideListener;
        private Rect mTmpRect;

        public COUIFloatingButtonBehavior() {
            this.mAutoHideEnabled = true;
        }

        private int getMinimumHeightForVisibleOverlappingContent(AppBarLayout appBarLayout) {
            int iX = m0.x(appBarLayout);
            if (iX != 0) {
                return iX * 2;
            }
            int childCount = appBarLayout.getChildCount();
            if (childCount >= 1) {
                return m0.x(appBarLayout.getChildAt(childCount - 1)) * 2;
            }
            return 0;
        }

        private static boolean isBottomSheet(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean shouldUpdateVisibility(View view, View view2) {
            return this.mAutoHideEnabled && ((CoordinatorLayout.f) view2.getLayoutParams()).e() == view.getId() && view2.getVisibility() == 0;
        }

        private boolean updateFabVisibilityForAppBarLayout(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view) {
            if (!shouldUpdateVisibility(appBarLayout, view)) {
                return false;
            }
            if (this.mTmpRect == null) {
                this.mTmpRect = new Rect();
            }
            Rect rect = this.mTmpRect;
            ViewGroupUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= getMinimumHeightForVisibleOverlappingContent(appBarLayout)) {
                view.setVisibility(8);
                return true;
            }
            view.setVisibility(0);
            return true;
        }

        private boolean updateFabVisibilityForBottomSheet(View view, View view2) {
            if (!shouldUpdateVisibility(view, view2)) {
                return false;
            }
            if (view.getTop() < (view2.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) view2.getLayoutParams())).topMargin) {
                hide(view2);
                return true;
            }
            show(view2);
            return true;
        }

        protected void hide(View view) {
            if (view instanceof FloatingActionButton) {
                ((FloatingActionButton) view).l(this.mInternalAutoHideListener);
            } else if (view instanceof COUIFloatingButton) {
                ((COUIFloatingButton) view).hide(this.mInternalAutoHideListener);
            } else {
                view.setVisibility(4);
            }
        }

        public boolean isAutoHideEnabled() {
            return this.mAutoHideEnabled;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void onAttachedToLayoutParams(CoordinatorLayout.f fVar) {
            if (fVar.f1875h == 0) {
                fVar.f1875h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                updateFabVisibilityForAppBarLayout(coordinatorLayout, (AppBarLayout) view2, view);
                return false;
            }
            if (!isBottomSheet(view2)) {
                return false;
            }
            updateFabVisibilityForBottomSheet(view2, view);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
            List listP = coordinatorLayout.p(view);
            int size = listP.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view2 = (View) listP.get(i11);
                if (!(view2 instanceof AppBarLayout)) {
                    if (isBottomSheet(view2) && updateFabVisibilityForBottomSheet(view2, view)) {
                        break;
                    }
                } else {
                    if (updateFabVisibilityForAppBarLayout(coordinatorLayout, (AppBarLayout) view2, view)) {
                        break;
                    }
                }
            }
            coordinatorLayout.G(view, i10);
            return true;
        }

        public void setAutoHideEnabled(boolean z10) {
            this.mAutoHideEnabled = z10;
        }

        void setInternalAutoHideListener(FloatingActionButton.b bVar) {
            this.mInternalAutoHideListener = bVar;
        }

        protected void show(View view) {
            if (view instanceof FloatingActionButton) {
                ((FloatingActionButton) view).r(this.mInternalAutoHideListener);
            } else if (view instanceof COUIFloatingButton) {
                view.setVisibility(0);
            } else {
                view.setVisibility(0);
            }
        }

        public COUIFloatingButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.google.android.material.R$styleable.FloatingActionButton_Behavior_Layout);
            this.mAutoHideEnabled = typedArrayObtainStyledAttributes.getBoolean(com.google.android.material.R$styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public COUIFloatingButtonLabel addActionItem(COUIFloatingButtonItem cOUIFloatingButtonItem, int i10) {
        return addActionItem(cOUIFloatingButtonItem, i10, true);
    }

    public void closeFloatingButtonMenu(boolean z10) {
        toggle(false, true, 300, false);
    }

    public void openFloatingButtonMenu(boolean z10) {
        toggle(true, z10, 300, false);
    }

    public void removeFloatingButtonItemWithWindowHeight(int i10, int i11) {
        this.mCurrentWindowHeight = i10;
        this.mCurrentWindowHeightOffset = i11;
        int size = this.mFloatingButtonLabelList.size();
        for (int i12 = 0; i12 < size; i12++) {
            if (isAllowLabelDisplay(i12)) {
                this.mFloatingButtonLabelList.get(i12).setVisibility(0);
            } else {
                this.mFloatingButtonLabelList.get(i12).setVisibility(8);
            }
        }
    }

    public static class ScrollViewBehavior extends COUIFloatingButtonBehavior {
        ValueAnimator mObjectAnimator;
        private boolean mOnScrollListenerIsAdd;

        /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$ScrollViewBehavior$1 */
        class AnonymousClass1 extends RecyclerView.u {
            final /* synthetic */ View val$child;

            AnonymousClass1(View view) {
                view = view;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.u
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                super.onScrollStateChanged(recyclerView, i10);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.u
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                super.onScrolled(recyclerView, i10, i11);
                View view = view;
                if (view instanceof COUIFloatingButton) {
                    ScrollViewBehavior.this.behaviorAnimate((COUIFloatingButton) view, i11);
                }
            }
        }

        public ScrollViewBehavior() {
            this.mObjectAnimator = new ObjectAnimator();
            this.mOnScrollListenerIsAdd = false;
        }

        public void behaviorAnimate(COUIFloatingButton cOUIFloatingButton, int i10) {
            if (i10 <= 10 || cOUIFloatingButton.getVisibility() != 0) {
                if (i10 < -10) {
                    cOUIFloatingButton.animationFloatingButtonEnlarge();
                    return;
                }
                return;
            }
            if (!cOUIFloatingButton.isOpen() || this.mObjectAnimator.isRunning()) {
                if (this.mObjectAnimator.isRunning()) {
                    return;
                }
                ValueAnimator valueAnimatorAnimationFloatingButtonSlideOut = cOUIFloatingButton.animationFloatingButtonSlideOut();
                this.mObjectAnimator = valueAnimatorAnimationFloatingButtonSlideOut;
                valueAnimatorAnimationFloatingButtonSlideOut.start();
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            ValueAnimator valueAnimatorAnimationFloatingButtonSlideOut2 = cOUIFloatingButton.animationFloatingButtonSlideOut();
            this.mObjectAnimator = valueAnimatorAnimationFloatingButtonSlideOut2;
            animatorSet.playTogether(valueAnimatorAnimationFloatingButtonSlideOut2, cOUIFloatingButton.rotateBackward(true));
            animatorSet.setDuration(150L);
            cOUIFloatingButton.closeFloatingButtonMenu(true, 250, true);
            animatorSet.start();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
            super.onNestedPreScroll(coordinatorLayout, view, view2, i10, i11, iArr, i12);
            if (view instanceof COUIFloatingButton) {
                behaviorAnimate((COUIFloatingButton) view, i11);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
            if (view3 instanceof RecyclerView) {
                RecyclerView recyclerView = (RecyclerView) view3;
                int itemCount = recyclerView.getAdapter().getItemCount();
                if (recyclerView.getChildCount() != 0 && itemCount != 0 && !this.mOnScrollListenerIsAdd) {
                    recyclerView.addOnScrollListener(new RecyclerView.u() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.ScrollViewBehavior.1
                        final /* synthetic */ View val$child;

                        AnonymousClass1(View view4) {
                            view = view4;
                        }

                        @Override // androidx.recyclerview.widget.RecyclerView.u
                        public void onScrollStateChanged(RecyclerView recyclerView2, int i102) {
                            super.onScrollStateChanged(recyclerView2, i102);
                        }

                        @Override // androidx.recyclerview.widget.RecyclerView.u
                        public void onScrolled(RecyclerView recyclerView2, int i102, int i112) {
                            super.onScrolled(recyclerView2, i102, i112);
                            View view4 = view;
                            if (view4 instanceof COUIFloatingButton) {
                                ScrollViewBehavior.this.behaviorAnimate((COUIFloatingButton) view4, i112);
                            }
                        }
                    });
                    this.mOnScrollListenerIsAdd = true;
                }
                return false;
            }
            if (view3 instanceof AbsListView) {
                AbsListView absListView = (AbsListView) view3;
                int count = absListView.getCount();
                int childCount = absListView.getChildCount();
                View childAt = absListView.getChildAt(0);
                int top = view3.getTop() - view3.getPaddingTop();
                int bottom = view3.getBottom() - view3.getPaddingBottom();
                View childAt2 = absListView.getChildAt(childCount - 1);
                if (childCount > 0 && count > 0) {
                    if (absListView.getFirstVisiblePosition() == 0 && childAt.getTop() >= (-top)) {
                        return false;
                    }
                    if (childAt2 != null && absListView.getLastVisiblePosition() == count - 1 && childAt2.getBottom() <= bottom) {
                        return false;
                    }
                }
            }
            return true;
        }

        public ScrollViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mObjectAnimator = new ObjectAnimator();
            this.mOnScrollListenerIsAdd = false;
        }
    }

    public COUIFloatingButtonLabel addActionItem(COUIFloatingButtonItem cOUIFloatingButtonItem, int i10, boolean z10) {
        return addActionItem(cOUIFloatingButtonItem, i10, z10, 0);
    }

    public void closeFloatingButtonMenu(boolean z10, int i10) {
        toggle(false, z10, i10, false);
    }

    public void openFloatingButtonMenu(boolean z10, int i10) {
        toggle(true, z10, i10, false);
    }

    public COUIFloatingButtonLabel replaceActionItem(COUIFloatingButtonItem cOUIFloatingButtonItem, COUIFloatingButtonItem cOUIFloatingButtonItem2) {
        COUIFloatingButtonLabel cOUIFloatingButtonLabelFindFloatingButtonItemByPosition;
        int iIndexOf;
        if (cOUIFloatingButtonItem == null || (cOUIFloatingButtonLabelFindFloatingButtonItemByPosition = findFloatingButtonItemByPosition(cOUIFloatingButtonItem.getFloatingButtonItemLocation())) == null || (iIndexOf = this.mFloatingButtonLabelList.indexOf(cOUIFloatingButtonLabelFindFloatingButtonItemByPosition)) < 0) {
            return null;
        }
        int visibility = cOUIFloatingButtonLabelFindFloatingButtonItemByPosition.getVisibility();
        removeActionItem(findFloatingButtonItemByPosition(cOUIFloatingButtonItem2.getFloatingButtonItemLocation()), null, false);
        removeActionItem(findFloatingButtonItemByPosition(cOUIFloatingButtonItem.getFloatingButtonItemLocation()), null, false);
        return addActionItem(cOUIFloatingButtonItem2, iIndexOf, false, visibility);
    }

    public COUIFloatingButtonLabel addActionItem(COUIFloatingButtonItem cOUIFloatingButtonItem, int i10, boolean z10, int i11) {
        COUIFloatingButtonLabel cOUIFloatingButtonLabelFindFloatingButtonItemByPosition = findFloatingButtonItemByPosition(cOUIFloatingButtonItem.getFloatingButtonItemLocation());
        if (cOUIFloatingButtonLabelFindFloatingButtonItemByPosition != null) {
            return replaceActionItem(cOUIFloatingButtonLabelFindFloatingButtonItemByPosition.getFloatingButtonItem(), cOUIFloatingButtonItem);
        }
        COUIFloatingButtonLabel cOUIFloatingButtonLabelCreateFabWithLabelView = cOUIFloatingButtonItem.createFabWithLabelView(getContext());
        cOUIFloatingButtonLabelCreateFabWithLabelView.setMainButtonSize(this.mButtonSize);
        cOUIFloatingButtonLabelCreateFabWithLabelView.setOrientation(getOrientation() == 1 ? 0 : 1);
        cOUIFloatingButtonLabelCreateFabWithLabelView.setOnActionSelectedListener(this.mOnActionSelectedProxyListener);
        cOUIFloatingButtonLabelCreateFabWithLabelView.setVisibility(i11);
        int layoutPosition = getLayoutPosition(i10);
        if (i10 == 0) {
            cOUIFloatingButtonLabelCreateFabWithLabelView.setPaddingRelative(getPaddingStart(), getPaddingTop(), getPaddingEnd(), getResources().getDimensionPixelSize(R$dimen.coui_floating_button_item_first_bottom_margin));
            addView(cOUIFloatingButtonLabelCreateFabWithLabelView, layoutPosition);
        } else {
            cOUIFloatingButtonLabelCreateFabWithLabelView.setPaddingRelative(getPaddingStart(), getPaddingTop(), getPaddingEnd(), getResources().getDimensionPixelSize(R$dimen.coui_floating_button_item_normal_bottom_margin));
            addView(cOUIFloatingButtonLabelCreateFabWithLabelView, layoutPosition);
        }
        this.mFloatingButtonLabelList.add(i10, cOUIFloatingButtonLabelCreateFabWithLabelView);
        animationFloatingButtonMenuClose(cOUIFloatingButtonLabelCreateFabWithLabelView, 0, i10, 300, false);
        return cOUIFloatingButtonLabelCreateFabWithLabelView;
    }

    public void closeFloatingButtonMenu(boolean z10, int i10, boolean z11) {
        toggle(false, z10, i10, z11);
    }

    public void hide() {
        animationFloatingButtonShrink(new Animator.AnimatorListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.5
            AnonymousClass5() {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                COUIFloatingButton.this.mMainFloatingButton.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                COUIFloatingButton.this.mMainFloatingButton.setVisibility(8);
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                COUIFloatingButton.this.mInstanceState.mCOUIFloatingButtonAnimationIsRun = true;
            }
        }).start();
    }

    public boolean removeActionItem(COUIFloatingButtonItem cOUIFloatingButtonItem) {
        return (cOUIFloatingButtonItem == null || removeActionItemByPosition(cOUIFloatingButtonItem.getFloatingButtonItemLocation()) == null) ? false : true;
    }

    private COUIFloatingButtonItem removeActionItem(COUIFloatingButtonLabel cOUIFloatingButtonLabel, Iterator<COUIFloatingButtonLabel> it, boolean z10) {
        if (cOUIFloatingButtonLabel == null) {
            return null;
        }
        COUIFloatingButtonItem floatingButtonItem = cOUIFloatingButtonLabel.getFloatingButtonItem();
        if (it != null) {
            it.remove();
        } else {
            this.mFloatingButtonLabelList.remove(cOUIFloatingButtonLabel);
        }
        removeView(cOUIFloatingButtonLabel);
        return floatingButtonItem;
    }

    private static class InstanceState implements Parcelable {
        public static final Parcelable.Creator<InstanceState> CREATOR = new Parcelable.Creator<InstanceState>() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.InstanceState.1
            AnonymousClass1() {
            }

            @Override // android.os.Parcelable.Creator
            public InstanceState createFromParcel(Parcel parcel) {
                return new InstanceState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public InstanceState[] newArray(int i10) {
                return new InstanceState[i10];
            }
        };
        private boolean mCOUIFloatingButtonAnimationIsRun;
        private ArrayList<COUIFloatingButtonItem> mCOUIFloatingButtonItems;
        private boolean mCOUIFloatingButtonMenuIsOpen;
        private ColorStateList mMainCOUIFloatingButtonBackgroundColor;
        private int mShadowColor;
        private boolean mUseReverseAnimationOnClose;

        /* JADX INFO: renamed from: com.coui.appcompat.floatingactionbutton.COUIFloatingButton$InstanceState$1 */
        class AnonymousClass1 implements Parcelable.Creator<InstanceState> {
            AnonymousClass1() {
            }

            @Override // android.os.Parcelable.Creator
            public InstanceState createFromParcel(Parcel parcel) {
                return new InstanceState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public InstanceState[] newArray(int i10) {
                return new InstanceState[i10];
            }
        }

        public InstanceState() {
            this.mCOUIFloatingButtonMenuIsOpen = false;
            this.mCOUIFloatingButtonAnimationIsRun = false;
            this.mMainCOUIFloatingButtonBackgroundColor = ColorStateList.valueOf(Integer.MIN_VALUE);
            this.mUseReverseAnimationOnClose = false;
            this.mCOUIFloatingButtonItems = new ArrayList<>();
            this.mShadowColor = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeByte(this.mCOUIFloatingButtonMenuIsOpen ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mCOUIFloatingButtonAnimationIsRun ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mUseReverseAnimationOnClose ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.mShadowColor);
            parcel.writeTypedList(this.mCOUIFloatingButtonItems);
        }

        protected InstanceState(Parcel parcel) {
            this.mCOUIFloatingButtonMenuIsOpen = false;
            this.mCOUIFloatingButtonAnimationIsRun = false;
            this.mMainCOUIFloatingButtonBackgroundColor = ColorStateList.valueOf(Integer.MIN_VALUE);
            this.mUseReverseAnimationOnClose = false;
            this.mCOUIFloatingButtonItems = new ArrayList<>();
            this.mShadowColor = -1;
            this.mCOUIFloatingButtonMenuIsOpen = parcel.readByte() != 0;
            this.mCOUIFloatingButtonAnimationIsRun = parcel.readByte() != 0;
            this.mUseReverseAnimationOnClose = parcel.readByte() != 0;
            this.mShadowColor = parcel.readInt();
            this.mCOUIFloatingButtonItems = parcel.createTypedArrayList(COUIFloatingButtonItem.CREATOR);
        }
    }

    private COUIFloatingButtonItem removeActionItem(COUIFloatingButtonLabel cOUIFloatingButtonLabel) {
        return removeActionItem(cOUIFloatingButtonLabel, null, true);
    }

    public COUIFloatingButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMainButtonRect = new RectF();
        this.mMainButtonGlobalRect = new Rect();
        this.mSeamlessImpl = new COUIFloatingButtonSeamlessImpl();
        this.mState = 0;
        this.mStateBeforeDisable = 0;
        this.mCurrentProgress = 1.0f;
        this.mInstanceState = new InstanceState();
        this.mFloatingButtonLabelList = new ArrayList();
        this.mMainFabClosedDrawable = null;
        this.mExpandMenuAnimationInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mCloseMenuPathInterpolator = new COUIMoveEaseInterpolator();
        this.mLabelPathInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mCloseMenuLabelPathInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mRotateForwardInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mRotateBackwardInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mIsNeedElevation = true;
        this.mIsNeedVibrate = true;
        this.mIsScaleAnimation = true;
        this.mProgressAnimator = null;
        this.mOnActionSelectedProxyListener = new OnActionSelectedListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.1
            AnonymousClass1() {
            }

            @Override // com.coui.appcompat.floatingactionbutton.COUIFloatingButton.OnActionSelectedListener
            public boolean onActionSelected(COUIFloatingButtonItem cOUIFloatingButtonItem) {
                if (COUIFloatingButton.this.mOnActionSelectedListener == null) {
                    return false;
                }
                boolean zOnActionSelected = COUIFloatingButton.this.mOnActionSelectedListener.onActionSelected(cOUIFloatingButtonItem);
                if (!zOnActionSelected) {
                    COUIFloatingButton.this.closeFloatingButtonMenu(false, 300);
                }
                return zOnActionSelected;
            }
        };
        init(context, attributeSet);
    }

    public COUIFloatingButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mMainButtonRect = new RectF();
        this.mMainButtonGlobalRect = new Rect();
        this.mSeamlessImpl = new COUIFloatingButtonSeamlessImpl();
        this.mState = 0;
        this.mStateBeforeDisable = 0;
        this.mCurrentProgress = 1.0f;
        this.mInstanceState = new InstanceState();
        this.mFloatingButtonLabelList = new ArrayList();
        this.mMainFabClosedDrawable = null;
        this.mExpandMenuAnimationInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mCloseMenuPathInterpolator = new COUIMoveEaseInterpolator();
        this.mLabelPathInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mCloseMenuLabelPathInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mRotateForwardInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mRotateBackwardInterpolator = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
        this.mIsNeedElevation = true;
        this.mIsNeedVibrate = true;
        this.mIsScaleAnimation = true;
        this.mProgressAnimator = null;
        this.mOnActionSelectedProxyListener = new OnActionSelectedListener() { // from class: com.coui.appcompat.floatingactionbutton.COUIFloatingButton.1
            AnonymousClass1() {
            }

            @Override // com.coui.appcompat.floatingactionbutton.COUIFloatingButton.OnActionSelectedListener
            public boolean onActionSelected(COUIFloatingButtonItem cOUIFloatingButtonItem) {
                if (COUIFloatingButton.this.mOnActionSelectedListener == null) {
                    return false;
                }
                boolean zOnActionSelected = COUIFloatingButton.this.mOnActionSelectedListener.onActionSelected(cOUIFloatingButtonItem);
                if (!zOnActionSelected) {
                    COUIFloatingButton.this.closeFloatingButtonMenu(false, 300);
                }
                return zOnActionSelected;
            }
        };
        init(context, attributeSet);
    }
}
