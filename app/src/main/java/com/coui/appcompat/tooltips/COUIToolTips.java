package com.coui.appcompat.tooltips;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.dynamicanimation.animation.d;
import com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringForce;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.poplist.COUIPopupWindow;
import com.coui.appcompat.poplist.WindowSpacingControlHelper;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.tooltips.COUIDefaultBubbleStyleImpl;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.coui.appcompat.uiutil.UIUtil;
import com.oplus.graphics.OplusOutline;
import com.oplus.graphics.OplusOutlineAdapter;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$dimen;
import com.support.tips.R$color;
import com.support.tips.R$drawable;
import com.support.tips.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIToolTips extends COUIPopupWindow {
    public static final int ALIGN_BOTTOM = 128;
    public static final int ALIGN_END = 64;
    public static final int ALIGN_LEFT = 16;
    public static final int ALIGN_RIGHT = 8;
    public static final int ALIGN_START = 32;
    public static final int ALIGN_TOP = 256;
    public static final int ANIMATION_DURATION = 300;
    public static final int ANIMATION_EXIT_DURATION = 20;
    private static final int ARROW_DOWN = 8;
    private static final int ARROW_DOWN_LEFT = 9;
    private static final int ARROW_DOWN_RIGHT = 7;
    private static final int ARROW_LEFT = 11;
    private static final int ARROW_LEFT_DOWN = 10;
    private static final int ARROW_LEFT_UP = 12;
    private static final int ARROW_RIGHT = 5;
    private static final int ARROW_RIGHT_DOWN = 6;
    private static final int ARROW_RIGHT_UP = 4;
    private static final int ARROW_UP = 2;
    private static final int ARROW_UP_LEFT = 1;
    private static final int ARROW_UP_RIGHT = 3;
    public static final int DEFAULT_ALIGN_DIRECTION = 4;
    private static final float DEFAULT_SPRING_FACTOR = 10000.0f;
    private static final float DEFAULT_TOOLTIPS_ALPHA_SPRING_RESPONSE = 0.3f;
    private static final float DEFAULT_TOOLTIPS_SCALE_SPRING_RESPONSE = 0.4f;
    private static final float DEFAULT_TOOLTIPS_SPRING_BOUNCE = 0.2f;
    public static final int MODE_INFO = 1;
    public static final int MODE_TOOLTIPS = 0;
    private static final float ONE = 1.0f;
    private static final float POINT_FIVE = 0.5f;
    private static final float ROTATION_ANGLE_0 = 0.0f;
    private static final float ROTATION_ANGLE_180 = 180.0f;
    private static final float ROTATION_ANGLE_270 = 270.0f;
    private static final float ROTATION_ANGLE_90 = 90.0f;
    private static final String TAG = "COUIToolTips";
    private static final float ZERO = 0.0f;
    private IToolTipsAction mAction;
    private View mAnchor;
    private int mArrowDirection;
    private Drawable mArrowDownDrawable;
    private Drawable mArrowDownLeftDrawable;
    private Drawable mArrowDownRightDrawable;
    private Drawable mArrowLeftDownDrawable;
    private Drawable mArrowLeftDrawable;
    private Drawable mArrowLeftUpDrawable;
    private int mArrowOverflow;
    private Drawable mArrowRightDownDrawable;
    private Drawable mArrowRightDrawable;
    private Drawable mArrowRightUpDrawable;
    private int mArrowType;
    private Drawable mArrowUpDrawable;
    private Drawable mArrowUpLeftDrawable;
    private Drawable mArrowUpRightDrawable;
    private ImageView mArrowView;
    private int mBubbleHorizontalPadding;
    private COUIIBubbleStyle mBubbleStyle;
    private Runnable mCheckAnimateExit;
    private ViewGroup mContentContainer;
    private Rect mContentRectOnScreen;
    private final Context mContext;
    private final Point mCoordsOnWindow;
    private boolean mHasIndicator;
    private int mIndicatorEmbedDistance;
    private boolean mIndicatorFollowContent;
    private boolean mIsDismissing;
    private boolean mIsEntering;
    private ViewGroup mMainPanel;
    private int mMode;
    private int mOffsetY;
    private OnCloseIconClickListener mOnCloseIconClickListener;
    private View.OnLayoutChangeListener mOnLayoutChangeListener;
    private PopupWindow.OnDismissListener mOnPopupWindowDismissListener;
    private View mParent;
    private Rect mParentRectOnScreen;
    private float mPivotX;
    private float mPivotY;
    private int mShowDirection;
    private final int[] mTmpCoords;
    private final d mToolTipsAlphaProperty;
    private float mToolTipsAnimationAlphaProgress;
    private float mToolTipsAnimationScaleProgress;
    private final d mToolTipsScaleProperty;
    private Rect mViewPortOnScreen;
    private Rect mViewportOffset;
    private int[] mWindowLocationOnScreen;

    /* JADX INFO: renamed from: com.coui.appcompat.tooltips.COUIToolTips$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnLayoutChangeListener {
        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayoutChange$0() {
            COUIToolTips.this.refreshWhileLayoutChange();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            Rect rect = new Rect(i10, i11, i12, i13);
            Rect rect2 = new Rect(i14, i15, i16, i17);
            if (!COUIToolTips.this.isShowing() || rect.equals(rect2) || COUIToolTips.this.mAnchor == null) {
                return;
            }
            try {
                view.post(new Runnable() { // from class: com.coui.appcompat.tooltips.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f7396a.lambda$onLayoutChange$0();
                    }
                });
            } catch (Exception e10) {
                Log.e(COUIToolTips.TAG, "refreshWhileLayoutChange fail,e:" + e10.getMessage());
            }
        }
    }

    public interface OnCloseIconClickListener {
        void onCloseIconClick();
    }

    @Deprecated
    public COUIToolTips(Window window) {
        this(window, 0);
    }

    private void addIndicator(Rect rect, int i10) {
        int i11 = this.mShowDirection;
        if (i11 == 128 || i11 == 4) {
            i10 = 0;
        }
        this.mArrowView = new ImageView(this.mContext);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i12 = this.mShowDirection;
        if (i12 == 4 || i12 == 128) {
            handleAlignVerticalDirection(rect, layoutParams, i10);
        } else if (i12 == 16) {
            handleAlignLeftDirection(rect, layoutParams, i10);
        } else {
            handleAlignRightDirection(rect, layoutParams, i10);
        }
        this.mContentContainer.addView(this.mArrowView, layoutParams);
        UIUtil.safeForceHasOverlappingRendering(this.mArrowView, false);
    }

    private void animateEnter() {
        ShadowUtils.setElevationToView(this.mMainPanel, 3, this.mContext.getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_four), this.mContext.getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_two), r.a.c(this.mContext, R$color.coui_tool_tips_shadow_color));
        ShadowUtils.setElevationToView(this.mArrowView, 3, this.mContext.getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_four), this.mContext.getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_two), r.a.c(this.mContext, R$color.coui_tool_tips_shadow_color));
        animateSpring(true);
    }

    private void animateExit() {
        ShadowUtils.clearShadow(this.mMainPanel);
        ShadowUtils.clearShadow(this.mArrowView);
        animateSpring(false);
        this.mIsDismissing = true;
        this.mContentContainer.removeCallbacks(this.mCheckAnimateExit);
        this.mContentContainer.postDelayed(this.mCheckAnimateExit, 320L);
    }

    private void animateSpring(boolean z10) {
        this.mIsEntering = z10;
        this.mContentContainer.setPivotX(this.mPivotX * getWidth());
        this.mContentContainer.setPivotY(this.mPivotY * getHeight());
        COUISpringAnimation cOUISpringAnimation = new COUISpringAnimation(Float.valueOf(this.mToolTipsAnimationScaleProgress), this.mToolTipsScaleProperty);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(0.2f);
        cOUISpringForce.setResponse(DEFAULT_TOOLTIPS_SCALE_SPRING_RESPONSE);
        cOUISpringAnimation.setSpring(cOUISpringForce);
        cOUISpringAnimation.setStartValue(0.0f);
        cOUISpringAnimation.animateToFinalPosition(10000.0f);
        COUISpringAnimation cOUISpringAnimation2 = new COUISpringAnimation(Float.valueOf(this.mToolTipsAnimationAlphaProgress), this.mToolTipsAlphaProperty);
        COUISpringForce cOUISpringForce2 = new COUISpringForce();
        cOUISpringForce2.setBounce(0.2f);
        cOUISpringForce2.setResponse(0.3f);
        cOUISpringAnimation2.setSpring(cOUISpringForce2);
        cOUISpringAnimation2.setStartValue(0.0f);
        cOUISpringAnimation2.animateToFinalPosition(10000.0f);
    }

    private void calculatePivot() {
        int i10 = this.mShowDirection;
        if (i10 != 4 && i10 != 128) {
            this.mPivotX = i10 == 16 ? 1.0f : 0.0f;
            this.mPivotY = ((this.mContentRectOnScreen.centerY() - this.mCoordsOnWindow.y) - this.mWindowLocationOnScreen[1]) / getViewportHeight();
            return;
        }
        if ((this.mContentRectOnScreen.centerX() - this.mWindowLocationOnScreen[0]) - this.mCoordsOnWindow.x >= getViewportWidth()) {
            this.mPivotX = 1.0f;
        } else if (getViewportWidth() != 0) {
            int iCenterX = (this.mContentRectOnScreen.centerX() - this.mWindowLocationOnScreen[0]) - this.mCoordsOnWindow.x;
            if (iCenterX <= 0) {
                iCenterX = -iCenterX;
            }
            this.mPivotX = iCenterX / getViewportWidth();
        } else {
            this.mPivotX = 0.5f;
        }
        if (this.mCoordsOnWindow.y >= this.mContentRectOnScreen.top - this.mWindowLocationOnScreen[1]) {
            this.mPivotY = 0.0f;
        } else {
            this.mPivotY = 1.0f;
        }
    }

    private void calculatePosition() {
        this.mParent.getWindowVisibleDisplayFrame(this.mViewPortOnScreen);
        registerOrientationHandler();
        Rect rect = new Rect();
        this.mContentRectOnScreen = rect;
        this.mAnchor.getGlobalVisibleRect(rect);
        Rect rect2 = new Rect();
        this.mParentRectOnScreen = rect2;
        this.mParent.getGlobalVisibleRect(rect2);
        int[] iArr = new int[2];
        this.mParent.getLocationOnScreen(iArr);
        this.mContentRectOnScreen.offset(iArr[0], iArr[1]);
        this.mParentRectOnScreen.offset(iArr[0], iArr[1]);
        int[] iArr2 = new int[2];
        Rect rect3 = this.mContentRectOnScreen;
        this.mWindowSpacingControlHelper.setOriginCenterPoint(new int[]{rect3.left, rect3.top}, iArr2, this.mAnchor);
        int width = this.mAnchor.getWidth();
        int height = this.mAnchor.getHeight();
        Rect rect4 = this.mContentRectOnScreen;
        int i10 = iArr2[0];
        int i11 = width / 2;
        rect4.left = i10 - i11;
        int i12 = iArr2[1];
        int i13 = height / 2;
        rect4.top = i12 - i13;
        rect4.right = i10 + i11;
        rect4.bottom = i12 + i13;
        Rect rect5 = this.mViewPortOnScreen;
        rect5.left = Math.max(rect5.left, this.mParentRectOnScreen.left);
        Rect rect6 = this.mViewPortOnScreen;
        rect6.top = Math.max(rect6.top, this.mParentRectOnScreen.top);
        Rect rect7 = this.mViewPortOnScreen;
        rect7.right = Math.min(rect7.right, this.mParentRectOnScreen.right);
        Rect rect8 = this.mViewPortOnScreen;
        rect8.bottom = Math.min(rect8.bottom, this.mParentRectOnScreen.bottom);
        sizePopupWindow();
        refreshCoordinated(this.mContentRectOnScreen);
        if (this.mIndicatorFollowContent) {
            prepareContent(this.mContentRectOnScreen, this.mHasIndicator, 0);
        } else {
            prepareContent(this.mContentRectOnScreen, this.mHasIndicator, -this.mOffsetY);
        }
        setContentView(this.mContentContainer);
        calculatePivot();
        animateEnter();
        this.mCoordsOnWindow.y += this.mOffsetY;
    }

    private void checkViewTypeEnum(WindowSpacingControlHelper.AnchorViewTypeEnum anchorViewTypeEnum) {
        WindowSpacingControlHelper.AnchorViewTypeEnum anchorViewTypeEnum2 = this.mWindowSpacingControlHelper.getAnchorViewTypeEnum(this.mAnchor);
        if (anchorViewTypeEnum2 == WindowSpacingControlHelper.AnchorViewTypeEnum.TOOLBAR || anchorViewTypeEnum2 == WindowSpacingControlHelper.AnchorViewTypeEnum.NAVIGATION) {
            return;
        }
        this.mArrowOverflow = getAnchorViewSpacing(anchorViewTypeEnum);
    }

    private ViewGroup createContentContainer(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissPopupWindow() {
        this.mBubbleStyle.dismissWindow();
        unregisterOrientationHandler();
        this.mParent = null;
        super.dismiss();
        this.mContentContainer.removeAllViews();
        this.mContentContainer.removeCallbacks(this.mCheckAnimateExit);
    }

    private int getViewportHeight() {
        int height = getHeight();
        Rect rect = this.mViewportOffset;
        return (height - rect.top) + rect.bottom;
    }

    private int getViewportWidth() {
        int width = getWidth();
        Rect rect = this.mViewportOffset;
        return (width - rect.left) + rect.right;
    }

    private void handleAlignBottomDirection(FrameLayout.LayoutParams layoutParams, float f10, float f11, float f12, int i10) {
        float f13 = f11 + f10;
        if (layoutParams.leftMargin < f13) {
            if (this.mArrowUpLeftDrawable == null) {
                this.mArrowUpLeftDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, 0.0f, true);
            }
            this.mArrowDirection = 1;
            this.mArrowView.setBackground(this.mArrowUpLeftDrawable);
            layoutParams.leftMargin = (int) f13;
            layoutParams.rightMargin = (getWidth() - layoutParams.leftMargin) - this.mArrowUpLeftDrawable.getIntrinsicWidth();
            layoutParams.topMargin = (this.mMainPanel.getPaddingTop() - this.mArrowUpLeftDrawable.getIntrinsicHeight()) + this.mIndicatorEmbedDistance;
        } else {
            float f14 = f10 + f12;
            if (layoutParams.rightMargin < f14) {
                this.mArrowDirection = 3;
                this.mArrowView.setBackground(this.mArrowUpRightDrawable);
                layoutParams.rightMargin = (int) f14;
                layoutParams.leftMargin = (getWidth() - layoutParams.rightMargin) - this.mArrowUpRightDrawable.getIntrinsicWidth();
                layoutParams.topMargin = (this.mMainPanel.getPaddingTop() - this.mArrowUpRightDrawable.getIntrinsicHeight()) + this.mIndicatorEmbedDistance;
            } else {
                this.mArrowDirection = 2;
                this.mArrowView.setBackground(this.mArrowUpDrawable);
                layoutParams.topMargin = (this.mMainPanel.getPaddingTop() - this.mArrowUpDrawable.getIntrinsicHeight()) + this.mIndicatorEmbedDistance;
            }
        }
        layoutParams.topMargin += i10;
    }

    private void handleAlignLeftDirection(Rect rect, FrameLayout.LayoutParams layoutParams, int i10) {
        if (this.mArrowRightDrawable == null) {
            this.mArrowRightDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpDrawable, ROTATION_ANGLE_90, false);
        }
        layoutParams.rightMargin = (this.mMainPanel.getPaddingRight() - this.mArrowRightDrawable.getIntrinsicWidth()) + this.mIndicatorEmbedDistance;
        layoutParams.leftMargin = ((getWidth() - layoutParams.rightMargin) - this.mArrowRightDrawable.getIntrinsicWidth()) - this.mIndicatorEmbedDistance;
        layoutParams.topMargin = ((rect.centerY() - this.mCoordsOnWindow.y) - this.mWindowLocationOnScreen[1]) - (this.mArrowRightDrawable.getIntrinsicHeight() / 2);
        layoutParams.bottomMargin = (getHeight() - layoutParams.topMargin) - this.mArrowRightDrawable.getIntrinsicHeight();
        float attrDimensFloat = COUIContextUtil.getAttrDimensFloat(this.mContext, RoundCornerUtil.isVersionSupport() ? R$attr.couiRoundCornerMRadius : R$attr.couiRoundCornerM);
        float paddingTop = this.mMainPanel.getPaddingTop();
        float paddingBottom = this.mMainPanel.getPaddingBottom();
        float f10 = paddingTop + attrDimensFloat;
        if (layoutParams.topMargin < f10) {
            if (this.mArrowRightUpDrawable == null) {
                this.mArrowRightUpDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_90, true);
            }
            this.mArrowDirection = 4;
            this.mArrowView.setBackground(this.mArrowRightUpDrawable);
            layoutParams.topMargin = (int) f10;
            layoutParams.bottomMargin = (getHeight() - layoutParams.topMargin) - this.mArrowRightUpDrawable.getIntrinsicHeight();
        } else {
            float f11 = attrDimensFloat + paddingBottom;
            if (layoutParams.bottomMargin < f11) {
                if (this.mArrowRightDownDrawable == null) {
                    this.mArrowRightDownDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_90, false);
                }
                this.mArrowDirection = 6;
                this.mArrowView.setBackground(this.mArrowRightDownDrawable);
                layoutParams.bottomMargin = (int) f11;
                layoutParams.topMargin = (getHeight() - layoutParams.bottomMargin) - this.mArrowRightDownDrawable.getIntrinsicHeight();
            } else {
                this.mArrowDirection = 5;
                this.mArrowView.setBackground(this.mArrowRightDrawable);
            }
        }
        layoutParams.topMargin += i10;
    }

    private void handleAlignRightDirection(Rect rect, FrameLayout.LayoutParams layoutParams, int i10) {
        if (this.mArrowLeftDrawable == null) {
            this.mArrowLeftDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpDrawable, ROTATION_ANGLE_270, false);
        }
        layoutParams.leftMargin = (this.mMainPanel.getPaddingLeft() - this.mArrowLeftDrawable.getIntrinsicWidth()) + this.mIndicatorEmbedDistance;
        layoutParams.rightMargin = ((getWidth() - layoutParams.leftMargin) - this.mArrowLeftDrawable.getIntrinsicWidth()) - this.mIndicatorEmbedDistance;
        layoutParams.topMargin = ((rect.centerY() - this.mCoordsOnWindow.y) - this.mWindowLocationOnScreen[1]) - (this.mArrowLeftDrawable.getIntrinsicHeight() / 2);
        layoutParams.bottomMargin = (getHeight() - layoutParams.topMargin) - this.mArrowLeftDrawable.getIntrinsicHeight();
        float attrDimensFloat = COUIContextUtil.getAttrDimensFloat(this.mContext, RoundCornerUtil.isVersionSupport() ? R$attr.couiRoundCornerMRadius : R$attr.couiRoundCornerM);
        float paddingTop = this.mMainPanel.getPaddingTop();
        float paddingBottom = this.mMainPanel.getPaddingBottom();
        float f10 = paddingTop + attrDimensFloat;
        if (layoutParams.topMargin < f10) {
            if (this.mArrowLeftUpDrawable == null) {
                this.mArrowLeftUpDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_270, false);
            }
            this.mArrowDirection = 12;
            this.mArrowView.setBackground(this.mArrowLeftUpDrawable);
            layoutParams.topMargin = (int) f10;
            layoutParams.bottomMargin = (getHeight() - layoutParams.topMargin) - this.mArrowLeftUpDrawable.getIntrinsicHeight();
        } else if (layoutParams.bottomMargin < attrDimensFloat + paddingBottom) {
            if (this.mArrowLeftDownDrawable == null) {
                this.mArrowLeftDownDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_270, true);
            }
            this.mArrowDirection = 10;
            this.mArrowView.setBackground(this.mArrowLeftDownDrawable);
            layoutParams.bottomMargin = (int) f10;
            layoutParams.topMargin = (getHeight() - layoutParams.bottomMargin) - this.mArrowLeftDownDrawable.getIntrinsicHeight();
        } else {
            this.mArrowDirection = 11;
            this.mArrowView.setBackground(this.mArrowLeftDrawable);
        }
        layoutParams.topMargin += i10;
    }

    private void handleAlignTopDirection(FrameLayout.LayoutParams layoutParams, float f10, float f11, float f12, int i10) {
        layoutParams.gravity = 80;
        float f13 = f11 + f10;
        if (layoutParams.leftMargin < f13) {
            if (this.mArrowDownLeftDrawable == null) {
                this.mArrowDownLeftDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_180, false);
            }
            this.mArrowDirection = 9;
            this.mArrowView.setBackground(this.mArrowDownLeftDrawable);
            layoutParams.leftMargin = (int) f13;
            layoutParams.rightMargin = (getWidth() - layoutParams.leftMargin) - this.mArrowDownLeftDrawable.getIntrinsicWidth();
            layoutParams.bottomMargin = (this.mMainPanel.getPaddingBottom() - this.mArrowDownLeftDrawable.getIntrinsicHeight()) + this.mIndicatorEmbedDistance;
        } else if (layoutParams.rightMargin < f10 + f12) {
            if (this.mArrowDownRightDrawable == null) {
                this.mArrowDownRightDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_180, true);
            }
            this.mArrowDirection = 7;
            this.mArrowView.setBackground(this.mArrowDownRightDrawable);
            layoutParams.rightMargin = (int) f13;
            layoutParams.leftMargin = (getWidth() - layoutParams.rightMargin) - this.mArrowDownRightDrawable.getIntrinsicWidth();
            layoutParams.bottomMargin = (this.mMainPanel.getPaddingBottom() - this.mArrowDownRightDrawable.getIntrinsicHeight()) + this.mIndicatorEmbedDistance;
        } else {
            if (this.mArrowDownDrawable == null) {
                this.mArrowDownDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpDrawable, ROTATION_ANGLE_180, false);
            }
            this.mArrowDirection = 8;
            this.mArrowView.setBackground(this.mArrowDownDrawable);
            layoutParams.bottomMargin = (this.mMainPanel.getPaddingBottom() - this.mArrowDownDrawable.getIntrinsicHeight()) + this.mIndicatorEmbedDistance;
        }
        layoutParams.bottomMargin -= i10;
    }

    private void handleAlignVerticalDirection(Rect rect, FrameLayout.LayoutParams layoutParams, int i10) {
        this.mParent.getRootView().getLocationOnScreen(this.mTmpCoords);
        int i11 = this.mTmpCoords[0];
        this.mParent.getRootView().getLocationInWindow(this.mTmpCoords);
        layoutParams.leftMargin = ((rect.centerX() - this.mCoordsOnWindow.x) - (i11 - this.mTmpCoords[0])) - (this.mArrowUpDrawable.getIntrinsicWidth() / 2);
        layoutParams.rightMargin = (getWidth() - layoutParams.leftMargin) - this.mArrowUpDrawable.getIntrinsicWidth();
        int i12 = rect.top - this.mWindowLocationOnScreen[1];
        float attrDimensFloat = COUIContextUtil.getAttrDimensFloat(this.mContext, RoundCornerUtil.isVersionSupport() ? R$attr.couiRoundCornerMRadius : R$attr.couiRoundCornerM);
        float paddingLeft = this.mMainPanel.getPaddingLeft();
        float paddingRight = this.mMainPanel.getPaddingRight();
        if (this.mCoordsOnWindow.y >= i12) {
            handleAlignBottomDirection(layoutParams, attrDimensFloat, paddingLeft, paddingRight, i10);
        } else {
            handleAlignTopDirection(layoutParams, attrDimensFloat, paddingLeft, paddingRight, i10);
        }
    }

    private void offsetRect(Rect rect, Rect rect2) {
        if (rect2 == null) {
            return;
        }
        rect.left += rect2.left;
        rect.top += rect2.top;
        rect.right += rect2.right;
        rect.bottom += rect2.bottom;
    }

    private void prepareContent(Rect rect, boolean z10, int i10) {
        this.mContentContainer.removeAllViews();
        this.mContentContainer.addView(this.mMainPanel);
        if (z10) {
            addIndicator(rect, i10);
        }
    }

    private void refreshCoordinated(Rect rect) {
        int viewportWidth;
        int iMax;
        int viewportHeight;
        int i10;
        this.mArrowType = -1;
        int anchorViewSpacing = getAnchorViewSpacing(this.mWindowSpacingControlHelper.getAnchorViewTypeEnum(this.mAnchor));
        int i11 = this.mShowDirection;
        if (i11 == 4) {
            viewportWidth = Math.min(rect.centerX() - (getViewportWidth() / 2), this.mViewPortOnScreen.right - ((getViewportWidth() - this.mMainPanel.getPaddingRight()) + this.mBubbleHorizontalPadding));
            int i12 = rect.top;
            Rect rect2 = this.mViewPortOnScreen;
            int i13 = i12 - rect2.top;
            int i14 = (rect2.bottom - rect.bottom) - anchorViewSpacing;
            viewportHeight = getViewportHeight();
            if (i13 >= viewportHeight) {
                this.mArrowType = 4;
                i10 = rect.top;
                iMax = i10 - viewportHeight;
            } else if (i14 >= viewportHeight) {
                this.mArrowType = 128;
                iMax = rect.bottom;
            } else if (i13 > i14) {
                this.mArrowType = 4;
                iMax = this.mViewPortOnScreen.top;
                setHeight(i13);
            } else {
                this.mArrowType = 128;
                iMax = rect.bottom;
                setHeight(i14);
            }
        } else if (i11 == 128) {
            viewportWidth = Math.min(rect.centerX() - (getViewportWidth() / 2), this.mViewPortOnScreen.right - ((getViewportWidth() - this.mMainPanel.getPaddingRight()) + this.mBubbleHorizontalPadding));
            int i15 = rect.top;
            Rect rect3 = this.mViewPortOnScreen;
            int i16 = i15 - rect3.top;
            int i17 = (rect3.bottom - rect.bottom) - anchorViewSpacing;
            viewportHeight = getViewportHeight();
            if (i17 >= viewportHeight) {
                this.mArrowType = 128;
                iMax = rect.bottom;
            } else if (i16 >= viewportHeight) {
                this.mArrowType = 4;
                i10 = rect.top;
                iMax = i10 - viewportHeight;
            } else if (i16 > i17) {
                this.mArrowType = 4;
                iMax = this.mViewPortOnScreen.top;
                setHeight(i16);
            } else {
                this.mArrowType = 128;
                iMax = rect.bottom;
                setHeight(i17);
            }
        } else {
            viewportWidth = i11 == 16 ? rect.left - getViewportWidth() : rect.right;
            iMax = Math.max(rect.centerY() - (((getViewportHeight() + this.mMainPanel.getPaddingTop()) - this.mMainPanel.getPaddingBottom()) / 2), (this.mViewPortOnScreen.top + this.mViewportOffset.top) - this.mMainPanel.getPaddingTop());
        }
        this.mParent.getRootView().getLocationOnScreen(this.mTmpCoords);
        int[] iArr = this.mTmpCoords;
        int i18 = iArr[0];
        int i19 = iArr[1];
        this.mParent.getRootView().getLocationInWindow(this.mTmpCoords);
        int[] iArr2 = this.mTmpCoords;
        int i20 = iArr2[0];
        int i21 = iArr2[1];
        int[] iArr3 = this.mWindowLocationOnScreen;
        int i22 = i18 - i20;
        iArr3[0] = i22;
        int i23 = i19 - i21;
        iArr3[1] = i23;
        int i24 = viewportWidth - i22;
        Rect rect4 = this.mViewportOffset;
        int i25 = i24 - rect4.left;
        int i26 = (iMax - i23) - rect4.top;
        int i27 = this.mShowDirection;
        if (i27 == 8) {
            checkViewTypeEnum(WindowSpacingControlHelper.AnchorViewTypeEnum.END);
            i25 += this.mArrowOverflow;
        } else if (i27 == 16) {
            checkViewTypeEnum(WindowSpacingControlHelper.AnchorViewTypeEnum.START);
            i25 -= this.mArrowOverflow;
        } else {
            int i28 = this.mArrowType;
            if (i28 == 4) {
                checkViewTypeEnum(WindowSpacingControlHelper.AnchorViewTypeEnum.TOP);
                i26 -= this.mArrowOverflow;
            } else if (i28 == 128) {
                checkViewTypeEnum(WindowSpacingControlHelper.AnchorViewTypeEnum.BOTTOM);
                i26 += this.mArrowOverflow;
            }
        }
        this.mCoordsOnWindow.set(Math.max(this.mBubbleHorizontalPadding - this.mMainPanel.getPaddingLeft(), i25), Math.max(0, i26));
    }

    private void registerOrientationHandler() {
        unregisterOrientationHandler();
        this.mParent.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
    }

    private void setArrowViewDrawable() {
        ImageView imageView = this.mArrowView;
        if (imageView != null) {
            switch (this.mArrowDirection) {
                case 1:
                    Drawable drawableRotateDrawable = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, 0.0f, true);
                    this.mArrowUpLeftDrawable = drawableRotateDrawable;
                    this.mArrowView.setBackground(drawableRotateDrawable);
                    break;
                case 2:
                    imageView.setBackground(this.mArrowUpDrawable);
                    break;
                case 3:
                    imageView.setBackground(this.mArrowUpRightDrawable);
                    break;
                case 4:
                    Drawable drawableRotateDrawable2 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_90, true);
                    this.mArrowRightUpDrawable = drawableRotateDrawable2;
                    this.mArrowView.setBackground(drawableRotateDrawable2);
                    break;
                case 5:
                    Drawable drawableRotateDrawable3 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpDrawable, ROTATION_ANGLE_90, false);
                    this.mArrowRightDrawable = drawableRotateDrawable3;
                    this.mArrowView.setBackground(drawableRotateDrawable3);
                    break;
                case 6:
                    Drawable drawableRotateDrawable4 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_90, false);
                    this.mArrowRightDownDrawable = drawableRotateDrawable4;
                    this.mArrowView.setBackground(drawableRotateDrawable4);
                    break;
                case 7:
                    Drawable drawableRotateDrawable5 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_180, true);
                    this.mArrowDownRightDrawable = drawableRotateDrawable5;
                    this.mArrowView.setBackground(drawableRotateDrawable5);
                    break;
                case 8:
                default:
                    Drawable drawableRotateDrawable6 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpDrawable, ROTATION_ANGLE_180, false);
                    this.mArrowDownDrawable = drawableRotateDrawable6;
                    this.mArrowView.setBackground(drawableRotateDrawable6);
                    break;
                case 9:
                    Drawable drawableRotateDrawable7 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_180, false);
                    this.mArrowDownLeftDrawable = drawableRotateDrawable7;
                    this.mArrowView.setBackground(drawableRotateDrawable7);
                    break;
                case 10:
                    Drawable drawableRotateDrawable8 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_270, true);
                    this.mArrowLeftDownDrawable = drawableRotateDrawable8;
                    this.mArrowView.setBackground(drawableRotateDrawable8);
                    break;
                case 11:
                    Drawable drawableRotateDrawable9 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpDrawable, ROTATION_ANGLE_270, false);
                    this.mArrowLeftDrawable = drawableRotateDrawable9;
                    this.mArrowView.setBackground(drawableRotateDrawable9);
                    break;
                case 12:
                    Drawable drawableRotateDrawable10 = DrawableUtils.rotateDrawable(this.mContext, this.mArrowUpRightDrawable, ROTATION_ANGLE_270, false);
                    this.mArrowLeftUpDrawable = drawableRotateDrawable10;
                    this.mArrowView.setBackground(drawableRotateDrawable10);
                    break;
            }
        }
    }

    private void setBackground(int i10, final int i11, final int i12, final int i13, final int i14) {
        final float attrDimensFloat = COUIContextUtil.getAttrDimensFloat(this.mContext, RoundCornerUtil.getSmoothStyleType() == 0 ? R$attr.couiRoundCornerMRadius : R$attr.couiRoundCornerM);
        this.mMainPanel.setBackgroundColor(i10);
        this.mMainPanel.setPaddingRelative(i11, i12, i13, i14);
        this.mMainPanel.setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.tooltips.COUIToolTips.7
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                Rect rect = new Rect(i11, i12, view.getWidth() - i13, view.getHeight() - i14);
                if (RoundCornerUtil.getSmoothStyleType() == 1) {
                    new OplusOutlineAdapter(outline, 1).setSmoothRoundRect(rect, attrDimensFloat);
                } else if (RoundCornerUtil.getSmoothStyleType() == 0) {
                    new OplusOutline(outline).setSmoothRoundRect(rect, attrDimensFloat, COUIContextUtil.getFloat(COUIToolTips.this.mContext, R$dimen.coui_round_corner_m_weight));
                } else {
                    outline.setRoundRect(rect, attrDimensFloat);
                }
            }
        });
        this.mMainPanel.setClipToOutline(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setToolTipsAlphaProgress(float f10) {
        float f11 = f10 / 10000.0f;
        this.mToolTipsAnimationAlphaProgress = f11;
        float f12 = 1.0f;
        float f13 = 0.0f;
        if (this.mIsEntering) {
            f13 = 1.0f;
            f12 = 0.0f;
        }
        this.mContentContainer.setAlpha(UIUtil.getConvertedFraction(f12, f13, f11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setToolTipsScaleProgress(float f10) {
        float f11 = f10 / 10000.0f;
        this.mToolTipsAnimationScaleProgress = f11;
        float f12 = 1.0f;
        float f13 = 0.0f;
        if (this.mIsEntering) {
            f13 = 1.0f;
            f12 = 0.0f;
        }
        this.mContentContainer.setScaleX(UIUtil.getConvertedFraction(f12, f13, f11));
        this.mContentContainer.setScaleY(UIUtil.getConvertedFraction(f12, f13, this.mToolTipsAnimationScaleProgress));
    }

    private void showToolTips() {
        Activity activityContextToActivity = UIUtil.contextToActivity(this.mContext);
        if (activityContextToActivity == null || !(activityContextToActivity.isFinishing() || activityContextToActivity.isDestroyed())) {
            calculatePosition();
            View view = this.mParent;
            Point point = this.mCoordsOnWindow;
            showAtLocation(view, 0, point.x, point.y);
            UIUtil.safeForceHasOverlappingRendering(this.mContentContainer, false);
            for (ViewParent parent = this.mContentContainer.getParent(); parent != null && (parent instanceof ViewGroup); parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                viewGroup.setClipToOutline(false);
                viewGroup.setClipChildren(false);
                UIUtil.safeForceHasOverlappingRendering((View) parent, false);
            }
        }
    }

    private void sizePopupWindow() {
        int maxWidth = this.mBubbleStyle.getMaxWidth() + this.mMainPanel.getPaddingLeft() + this.mMainPanel.getPaddingRight();
        int i10 = this.mShowDirection;
        if (i10 == 8) {
            maxWidth = Math.min((((this.mViewPortOnScreen.right - this.mContentRectOnScreen.right) - this.mArrowOverflow) + this.mMainPanel.getPaddingRight()) - this.mBubbleHorizontalPadding, maxWidth);
        } else if (i10 == 16) {
            maxWidth = Math.min(((this.mContentRectOnScreen.left - this.mViewPortOnScreen.left) - this.mArrowOverflow) - (this.mBubbleHorizontalPadding - this.mMainPanel.getPaddingLeft()), maxWidth);
        }
        Rect rect = this.mViewPortOnScreen;
        int iMax = Math.max(Math.min(rect.right - rect.left, maxWidth), 0);
        this.mBubbleStyle.sizeBubbleStyle(this.mMainPanel, iMax);
        this.mMainPanel.measure(0, 0);
        setWidth(this.mBubbleStyle.getRealWidth(iMax, this.mMainPanel));
        int measuredHeight = this.mMainPanel.getMeasuredHeight();
        Rect rect2 = this.mViewPortOnScreen;
        setHeight(Math.min(measuredHeight, rect2.bottom - rect2.top));
        if (((this.mContentRectOnScreen.centerY() - (((getViewportHeight() + this.mMainPanel.getPaddingTop()) - this.mMainPanel.getPaddingBottom()) / 2)) + getViewportHeight()) - this.mMainPanel.getPaddingBottom() >= this.mViewPortOnScreen.bottom) {
            this.mShowDirection = 4;
            int maxWidth2 = this.mBubbleStyle.getMaxWidth() + this.mMainPanel.getPaddingLeft() + this.mMainPanel.getPaddingRight();
            Rect rect3 = this.mViewPortOnScreen;
            int iMax2 = Math.max(Math.min(rect3.right - rect3.left, maxWidth2), 0);
            this.mBubbleStyle.sizeBubbleStyle(this.mMainPanel, iMax2);
            this.mMainPanel.measure(0, 0);
            setWidth(this.mBubbleStyle.getRealWidth(iMax2, this.mMainPanel));
            setHeight(this.mMainPanel.getMeasuredHeight());
        }
    }

    private void unregisterOrientationHandler() {
        View view = this.mParent;
        if (view != null) {
            view.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
        }
    }

    public void calculateFakeBeyondScreenTips(View view, int i10, boolean z10, int i11, int i12) {
        if (isShowing()) {
            return;
        }
        this.mShowDirection = i10;
        this.mParent = view.getRootView();
        this.mOffsetY = i12;
        int i13 = this.mShowDirection;
        if (i13 == 32 || i13 == 64) {
            if (isLayoutRtl(view)) {
                this.mShowDirection = this.mShowDirection == 32 ? 8 : 16;
            } else {
                this.mShowDirection = this.mShowDirection != 32 ? 8 : 16;
            }
        } else if (i13 == 256) {
            this.mShowDirection = 4;
        }
        this.mAnchor = view;
        this.mParent.getWindowVisibleDisplayFrame(this.mViewPortOnScreen);
        registerOrientationHandler();
        Rect rect = new Rect();
        this.mContentRectOnScreen = rect;
        view.getGlobalVisibleRect(rect);
        Rect rect2 = new Rect();
        this.mParentRectOnScreen = rect2;
        this.mParent.getGlobalVisibleRect(rect2);
        int[] iArr = new int[2];
        this.mParent.getLocationOnScreen(iArr);
        this.mContentRectOnScreen.offset(iArr[0], iArr[1]);
        this.mParentRectOnScreen.offset(iArr[0], iArr[1]);
        Rect rect3 = this.mViewPortOnScreen;
        rect3.left = Math.max(rect3.left, this.mParentRectOnScreen.left);
        Rect rect4 = this.mViewPortOnScreen;
        rect4.top = Math.max(rect4.top, this.mParentRectOnScreen.top);
        Rect rect5 = this.mViewPortOnScreen;
        rect5.right = Math.min(rect5.right, this.mParentRectOnScreen.right);
        Rect rect6 = this.mViewPortOnScreen;
        rect6.bottom = Math.min(rect6.bottom, this.mParentRectOnScreen.bottom);
        sizePopupWindow();
        refreshCoordinated(this.mContentRectOnScreen);
        prepareContent(this.mContentRectOnScreen, z10, i12);
        setContentView(this.mContentContainer);
        calculatePivot();
        animateEnter();
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        unregisterOrientationHandler();
        if (!this.mIsDismissing) {
            animateExit();
        } else {
            dismissPopupWindow();
            this.mIsDismissing = false;
        }
    }

    public void dismissImmediately() {
        dismissPopupWindow();
        this.mIsDismissing = false;
    }

    @Deprecated
    public TextView getContentTv() {
        return this.mBubbleStyle.getContentView();
    }

    @Deprecated
    public ImageView getDismissIv() {
        return this.mBubbleStyle.getDismissIv();
    }

    @Deprecated
    public void hideDismissButton() {
        this.mBubbleStyle.hideDismissView();
    }

    public void init(int i10) {
        int i11 = this.mBubbleStyle.getDefStyleParams()[0];
        int i12 = this.mBubbleStyle.getDefStyleParams()[1];
        this.mMode = i10;
        if (this.mBubbleStyle instanceof COUIDefaultBubbleStyleImpl) {
            this.mArrowUpDrawable = r.a.e(this.mContext, i10 == 0 ? R$drawable.coui_blue_sharp_middle_arrow_up : R$drawable.coui_white_sharp_middle_arrow_up);
            this.mArrowUpRightDrawable = r.a.e(this.mContext, i10 == 0 ? R$drawable.coui_blue_sharp_edges_arrow_up_right : R$drawable.coui_white_sharp_edges_arrow_up_right);
        } else {
            this.mArrowUpDrawable = r.a.e(this.mContext, R$drawable.coui_white_sharp_middle_arrow_up);
            this.mArrowUpRightDrawable = r.a.e(this.mContext, R$drawable.coui_white_sharp_edges_arrow_up_right);
        }
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R$styleable.COUIToolTips, i11, i12);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIToolTips_couiToolTipsBackgroundColor, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsPaddingStart, -1);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsPaddingTop, -1);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsPaddingEnd, -1);
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsPaddingBottom, -1);
        this.mArrowOverflow = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsArrowOverflowOffset, 0);
        int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsArrowOverflowOffset, 0);
        int dimensionPixelSize6 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsMinWidth, 0);
        int dimensionPixelSize7 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsViewportOffsetStart, 0);
        int dimensionPixelSize8 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsViewportOffsetTop, 0);
        int dimensionPixelSize9 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsViewportOffsetEnd, 0);
        int dimensionPixelSize10 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsViewportOffsetBottom, 0);
        typedArrayObtainStyledAttributes.recycle();
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(this.mContext).inflate(this.mBubbleStyle.getLayoutId(), (ViewGroup) null);
        this.mMainPanel = viewGroup;
        viewGroup.setMinimumWidth(dimensionPixelSize6);
        setBackground(color, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
        ViewGroup viewGroupCreateContentContainer = createContentContainer(this.mContext);
        this.mContentContainer = viewGroupCreateContentContainer;
        COUIDarkModeUtil.setForceDarkAllow(viewGroupCreateContentContainer, false);
        this.mBubbleStyle.initBubbleStyle(this.mMainPanel);
        if (isLayoutRtl(this.mMainPanel)) {
            this.mViewportOffset = new Rect(dimensionPixelSize9, dimensionPixelSize8, dimensionPixelSize7, dimensionPixelSize10);
        } else {
            this.mViewportOffset = new Rect(dimensionPixelSize7, dimensionPixelSize8, dimensionPixelSize9, dimensionPixelSize10);
        }
        setClippingEnabled(false);
        setAnimationStyle(0);
        setElevation(this.mContext.getResources().getDimensionPixelOffset(R$dimen.support_shadow_size_level_four));
        setOnDismissListener(this.mOnPopupWindowDismissListener);
        ImageView imageView = this.mArrowView;
        if (imageView != null) {
            imageView.setBackground(this.mArrowUpDrawable);
        }
        this.mIsOutLineBackgroundInPopupWindow = false;
        setElevationInPopupwindow(false);
        int dimensionPixelSize11 = this.mContext.getResources().getDimensionPixelSize(com.support.tips.R$dimen.coui_tooltips_vertical_and_horizontal_gap_top) + dimensionPixelSize5;
        int dimensionPixelSize12 = this.mContext.getResources().getDimensionPixelSize(com.support.tips.R$dimen.coui_tooltips_vertical_and_horizontal_gap_bottom) + dimensionPixelSize5;
        addSpacingControlUtil(dimensionPixelSize11, WindowSpacingControlHelper.AnchorViewTypeEnum.TOP);
        addSpacingControlUtil(dimensionPixelSize12, WindowSpacingControlHelper.AnchorViewTypeEnum.BOTTOM);
        addSpacingControlUtil(dimensionPixelSize5, WindowSpacingControlHelper.AnchorViewTypeEnum.START);
        addSpacingControlUtil(dimensionPixelSize5, WindowSpacingControlHelper.AnchorViewTypeEnum.END);
        addSpacingControlUtil(this.mContext.getResources().getDimensionPixelSize(com.support.tips.R$dimen.coui_tooltips_navigation_margin), WindowSpacingControlHelper.AnchorViewTypeEnum.NAVIGATION);
        addSpacingControlUtil(this.mContext.getResources().getDimensionPixelSize(com.support.tips.R$dimen.coui_tooltips_toolbar_margin), WindowSpacingControlHelper.AnchorViewTypeEnum.TOOLBAR);
        this.mIndicatorEmbedDistance = this.mContext.getResources().getDimensionPixelSize(com.support.tips.R$dimen.coui_tooltips_indicator_embed_distance);
        this.mBubbleHorizontalPadding = this.mContext.getResources().getDimensionPixelSize(com.support.tips.R$dimen.coui_tooltips_bubble_horizontal_padding);
    }

    @Override // com.coui.appcompat.poplist.COUIPopupWindow
    protected void initPopupWindowBackground(Context context, TypedArray typedArray) {
        setBackgroundDrawable(new ColorDrawable(0));
    }

    public boolean isLayoutRtl(View view) {
        return view.getLayoutDirection() == 1;
    }

    public void refresh() {
        int i10 = this.mBubbleStyle.getDefStyleParams()[0];
        int i11 = this.mBubbleStyle.getDefStyleParams()[1];
        if (this.mBubbleStyle instanceof COUIDefaultBubbleStyleImpl) {
            this.mArrowUpDrawable = r.a.e(this.mContext, this.mMode == 0 ? R$drawable.coui_blue_sharp_middle_arrow_up : R$drawable.coui_white_sharp_middle_arrow_up);
            this.mArrowUpRightDrawable = r.a.e(this.mContext, this.mMode == 0 ? R$drawable.coui_blue_sharp_edges_arrow_up_right : R$drawable.coui_white_sharp_edges_arrow_up_right);
        } else {
            this.mArrowUpDrawable = r.a.e(this.mContext, R$drawable.coui_white_sharp_middle_arrow_up);
            this.mArrowUpRightDrawable = r.a.e(this.mContext, R$drawable.coui_white_sharp_edges_arrow_up_right);
        }
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R$styleable.COUIToolTips, i10, i11);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.COUIToolTips_couiToolTipsBackgroundColor, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsPaddingStart, -1);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsPaddingTop, -1);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsPaddingEnd, -1);
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsPaddingBottom, -1);
        this.mArrowOverflow = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIToolTips_couiToolTipsArrowOverflowOffset, 0);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUIToolTips_couiToolTipsContentTextColor);
        typedArrayObtainStyledAttributes.recycle();
        setBackground(color, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
        this.mBubbleStyle.refreshBubbleStyle(colorStateList);
        setArrowViewDrawable();
    }

    public void refreshWhileLayoutChange() {
        Activity activityContextToActivity = UIUtil.contextToActivity(this.mContext);
        if (activityContextToActivity != null && (activityContextToActivity.isFinishing() || activityContextToActivity.isDestroyed())) {
            COUILog.e(TAG, "activity is not active when refreshWhileLayoutChange");
            return;
        }
        if (!UIUtil.isInVisibleRect(this.mAnchor)) {
            dismissImmediately();
            COUILog.e(TAG, "mAnchor is now visible, so dismiss it.");
        } else {
            calculatePosition();
            Point point = this.mCoordsOnWindow;
            update(point.x, point.y, getWidth(), getHeight());
        }
    }

    public void setArrowOverflow(int i10) {
        this.mArrowOverflow = i10;
    }

    public void setBackgroundColor(int i10) {
        setBackgroundColor(ColorStateList.valueOf(i10));
    }

    public void setContent(CharSequence charSequence) {
        this.mBubbleStyle.setContentText(charSequence);
    }

    @Deprecated
    public void setContentTextColor(int i10) {
        setContentTextColor(ColorStateList.valueOf(i10));
    }

    @Deprecated
    public void setDelay(int i10) {
    }

    public void setDismissOnTouchOutside(boolean z10) {
        if (z10) {
            setTouchable(true);
            setFocusable(true);
            setOutsideTouchable(true);
        } else {
            setFocusable(false);
            setOutsideTouchable(false);
        }
        update();
    }

    public void setOnCloseIconClickListener(OnCloseIconClickListener onCloseIconClickListener) {
        this.mOnCloseIconClickListener = onCloseIconClickListener;
    }

    public void show(View view) {
        show(view, true);
    }

    public void showWithDirection(View view, int i10) {
        showWithDirection(view, i10, true);
    }

    @Deprecated
    public COUIToolTips(Window window, int i10) {
        this(window.getContext(), i10);
    }

    public void setBackgroundColor(ColorStateList colorStateList) {
        ViewGroup viewGroup = this.mMainPanel;
        if (viewGroup != null) {
            this.mMainPanel.setBackgroundColor(colorStateList.getColorForState(viewGroup.getDrawableState(), 0));
        }
        ImageView imageView = this.mArrowView;
        if (imageView != null) {
            Drawable background = imageView.getBackground();
            if ((background instanceof VectorDrawable) || (background instanceof BitmapDrawable)) {
                v.a.o(v.a.r(background), colorStateList);
                this.mArrowView.invalidate();
            }
        }
    }

    public void setContent(View view) {
        this.mBubbleStyle.setContentView(view);
    }

    @Deprecated
    public void setContentTextColor(ColorStateList colorStateList) {
        this.mBubbleStyle.setContentTextColor(colorStateList);
    }

    public void show(View view, boolean z10) {
        showWithDirection(view, 4, z10);
    }

    public void showWithDirection(View view, int i10, boolean z10) {
        showWithDirection(view, i10, z10, 0, 0);
    }

    public COUIToolTips(Context context) {
        this(context, 0);
    }

    public void showWithDirection(View view, int i10, boolean z10, int i11, int i12) {
        showWithDirection(view, i10, z10, i11, i12, false);
    }

    public COUIToolTips(Context context, int i10) {
        this(context, i10, new COUIDefaultBubbleStyleImpl.Builder().build());
    }

    public void showWithDirection(View view, int i10, boolean z10, int i11, int i12, boolean z11) {
        if (isShowing()) {
            return;
        }
        WindowSpacingControlHelper.AnchorViewTypeEnum anchorViewTypeEnum = this.mWindowSpacingControlHelper.getAnchorViewTypeEnum(view);
        if (anchorViewTypeEnum == WindowSpacingControlHelper.AnchorViewTypeEnum.TOOLBAR) {
            this.mArrowOverflow = getAnchorViewSpacing(anchorViewTypeEnum);
        } else if (anchorViewTypeEnum == WindowSpacingControlHelper.AnchorViewTypeEnum.NAVIGATION) {
            this.mArrowOverflow = getAnchorViewSpacing(view, anchorViewTypeEnum);
        }
        this.mParent = view.getRootView();
        this.mHasIndicator = z10;
        this.mIndicatorFollowContent = z11;
        this.mOffsetY = i12;
        this.mShowDirection = i10;
        if (i10 == 32 || i10 == 64) {
            if (isLayoutRtl(view)) {
                this.mShowDirection = this.mShowDirection == 32 ? 8 : 16;
            } else {
                this.mShowDirection = this.mShowDirection != 32 ? 8 : 16;
            }
        } else if (i10 == 256) {
            this.mShowDirection = 4;
        }
        this.mAnchor = view;
        try {
            showToolTips();
        } catch (Exception e10) {
            Log.e(TAG, "showToolTips fail,e:" + e10.getMessage());
        }
        this.mContentContainer.removeCallbacks(this.mCheckAnimateExit);
    }

    public COUIToolTips(Context context, COUIIBubbleStyle cOUIIBubbleStyle) {
        this(context, 0, cOUIIBubbleStyle);
    }

    public COUIToolTips(Context context, int i10, COUIIBubbleStyle cOUIIBubbleStyle) {
        super(context);
        this.mTmpCoords = new int[2];
        this.mCoordsOnWindow = new Point();
        this.mToolTipsScaleProperty = new d("toolTipsScaleProperty") { // from class: com.coui.appcompat.tooltips.COUIToolTips.1
            @Override // androidx.dynamicanimation.animation.d
            public float getValue(Float f10) {
                return COUIToolTips.this.mToolTipsAnimationScaleProgress;
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(Float f10, float f11) {
                COUIToolTips.this.setToolTipsScaleProgress(f11);
            }
        };
        this.mToolTipsAlphaProperty = new d("toolTipsAlphaProperty") { // from class: com.coui.appcompat.tooltips.COUIToolTips.2
            @Override // androidx.dynamicanimation.animation.d
            public float getValue(Float f10) {
                return COUIToolTips.this.mToolTipsAnimationAlphaProgress;
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(Float f10, float f11) {
                COUIToolTips.this.setToolTipsAlphaProgress(f11);
            }
        };
        this.mViewPortOnScreen = new Rect();
        this.mArrowDirection = 2;
        this.mShowDirection = 4;
        this.mWindowLocationOnScreen = new int[2];
        this.mArrowType = -1;
        this.mToolTipsAnimationScaleProgress = 0.0f;
        this.mToolTipsAnimationAlphaProgress = 0.0f;
        this.mOnLayoutChangeListener = new AnonymousClass3();
        this.mOnPopupWindowDismissListener = new PopupWindow.OnDismissListener() { // from class: com.coui.appcompat.tooltips.COUIToolTips.4
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                COUIToolTips.this.mContentContainer.removeAllViews();
            }
        };
        this.mAction = new IToolTipsAction() { // from class: com.coui.appcompat.tooltips.COUIToolTips.5
            @Override // com.coui.appcompat.tooltips.IToolTipsAction
            public void onCloseClick() {
                COUIToolTips.this.dismiss();
                if (COUIToolTips.this.mOnCloseIconClickListener != null) {
                    COUIToolTips.this.mOnCloseIconClickListener.onCloseIconClick();
                }
            }
        };
        this.mCheckAnimateExit = new Runnable() { // from class: com.coui.appcompat.tooltips.COUIToolTips.6
            @Override // java.lang.Runnable
            public void run() {
                if (COUIToolTips.this.mIsDismissing) {
                    COUIToolTips.this.dismissPopupWindow();
                    COUIToolTips.this.mIsDismissing = false;
                }
            }
        };
        this.mContext = context;
        this.mBubbleStyle = cOUIIBubbleStyle;
        cOUIIBubbleStyle.setToolTipsAction(this.mAction, context, i10);
        init(i10);
    }
}
