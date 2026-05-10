package com.coui.appcompat.picker;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.icu.text.DecimalFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.PathInterpolator;
import android.widget.LinearLayout;
import android.widget.Scroller;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.math.COUIMathUtils;
import com.coui.appcompat.soundloadutil.COUISoundLoadUtil;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.oplus.os.LinearmotorVibrator;
import com.support.picker.R$attr;
import com.support.picker.R$dimen;
import com.support.picker.R$raw;
import com.support.picker.R$style;
import com.support.picker.R$styleable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class COUINumberPicker extends LinearLayout {
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_MIDDLE = 0;
    public static final int ALIGN_RIGHT = 2;
    private static final float BASE_RATIO = 0.6f;
    private static final int CALCULATE_MAX_COUNT = 100;
    private static final long DEFAULT_LONG_PRESS_UPDATE_INTERVAL = 300;
    private static final int LOW_VELOCITY_THRESHOLD = 1000;
    private static final int MAX_VELOCITY = 5000;
    private static final int MID_VELOCITY_THRESHOLD = 2000;
    private static final int MILLISECOND_VELOCITY_UNIT = 1000;
    private static final int MINIMUM_FLING_VELOCITY = 750;
    private static final int MIN_BACKGROUND_DIVIDER_HEIGHT = 1;
    private static final int MSG_PLAY_SOUND = 0;
    private static final int MSG_PLAY_VIBRATE = 2;
    private static final int MSG_TALKBACK_VALUE_CHANGE = 1;
    private static final float NEXT_VALUE_ERROR = 0.05f;
    private static final int ONE_SECOND_MILLIS = 1000;
    private static final int PLAY_VIBRATE_DELAY_DURATION = 40;
    private static final float POINT_ZERO_ONE = 0.01f;
    private static final int SELECTOR_ADJUSTMENT_DURATION_MILLIS = 300;
    public static final int SELECTOR_INDEX_IGNORE = Integer.MIN_VALUE;
    private static final int SELECTOR_ITEM_DRAW_OUTSIDE_CACHE_NUMBER = 1;
    private static final int SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT = 8;
    private static final int SELECTOR_WHEEL_ITEM_COUNT_DEFAULT = 5;
    private static final int SIZE_UNSPECIFIED = -1;
    private static final int SNAP_SCROLL_DURATION = 300;
    private static final int STACK_DEPTH = 30;
    private static final String TAG = "COUINumberPicker";
    private static final float TOP_AND_BOTTOM_FADING_EDGE_STRENGTH = 0.9f;
    private static final float VALUE_SIXTY = 60.0f;
    private static final float VELOCITY_SPEED_UP_RATIO = 1.8f;
    public static final int VIBRATE_LEVEL_CRISP = 0;
    public static final int VIBRATE_LEVEL_SOFT = 1;
    private final int MAX_SCROLL_OFFSET;
    private AccessibilityManager mAccessibilityManager;
    private AccessibilityNodeProviderImpl mAccessibilityNodeProvider;
    private final Scroller mAdjustScroller;
    private int mAlignPosition;
    private int mAlphaEnd;
    private int mAlphaStart;
    private int mBackgroundColor;
    private int mBackgroundDividerHeight;
    private int mBackgroundLeft;
    private Paint mBackgroundPaint;
    private int mBackgroundRadius;
    private int mBlueEnd;
    private int mBlueStart;
    private int mBottomSelectionDividerBottom;
    private int mCalculateCount;
    private ChangeCurrentByOneFromLongPressCommand mChangeCurrentByOneFromLongPressCommand;
    private int mClickSoundId;
    private boolean mCurrentLanguageTooLong;
    private int mCurrentScrollOffset;
    private int mDebugY;
    private boolean mDecrementVirtualButtonPressed;
    private int mDeltaMoveY;
    private float mDiffusion;
    private String[] mDisplayedValues;
    private int mDrawItemOffsetY;
    private boolean mEnableAdaptiveVibrator;
    private final float mFlingFriction;
    private final Scroller mFlingScroller;
    int mFocusTextColor;
    private int mFocusTextSize;
    private Formatter mFormatter;
    private int mGradientPositionBottom;
    private int mGradientPositionTop;
    private int mGreenEnd;
    private int mGreenStart;
    private Handler mHandler;
    private boolean mHasBackground;
    private boolean mHasMotorVibrator;
    private boolean mIgnorable;
    private float mIgnoreBarHeight;
    private float mIgnoreBarSpacing;
    private float mIgnoreBarWidth;
    private boolean mIncrementVirtualButtonPressed;
    private int mInitTextMargin;
    private long mLastDownEventTime;
    private float mLastDownEventY;
    private float mLastDownOrMoveEventY;
    private int mLastHandledDownDpadKeyCode;
    private int mLastHoveredChildVirtualViewId;
    private Object mLinearMotorVibrator;
    private long mLongPressUpdateInterval;
    private final int mMaxHeight;
    private int mMaxValue;
    private int mMaxViewWidth;
    private int mMaxWidth;
    private int mMaximumFlingVelocity;
    private final Paint mMeasureTextSelectorPaint;
    private final int mMinHeight;
    private int mMinValue;
    private final int mMinWidth;
    private int mMinimumFlingVelocity;
    private float mNormalTextBottom;
    int mNormalTextColor;
    private int mNormalTextSize;
    private float mNormalTextTop;
    private int mNumberPickerPaddingLeft;
    private int mNumberPickerPaddingRight;
    private OnScrollListener mOnScrollListener;
    private OnScrollingStopListener mOnScrollingStopListener;
    private OnValueChangeListener mOnValueChangeListener;
    private boolean mPerformClickOnTap;
    private final float mPhysicalCoeff;
    private int mPickerOffset;
    private final float mPpi;
    private final PressedStateHelper mPressedStateHelper;
    private int mPreviousScrollerY;
    private int mPreviousTime;
    private int mRedEnd;
    private int mRedStart;
    int mRefreshStyle;
    private int mScrollState;
    private int mScrollerVelocity;
    private int mSelectedValueWidth;
    private int mSelectorElementHeight;
    private final SparseArray<String> mSelectorIndexToStringCache;
    private int[] mSelectorIndices;
    private int mSelectorItemCount;
    private int mSelectorMiddleItemIndex;
    private int mSelectorTextGapHeight;
    private final Paint mSelectorWheelPaint;
    private COUISoundLoadUtil mSoundUtil;
    private long mStartCalculateTime;
    private String mTalkbackSuffix;
    private int mTextMargin;
    private int mTopSelectionDividerTop;
    private int mTouchEffectInterval;
    private NumberPickerHandlerThread mTouchEffectThread;
    private int mTouchSlop;
    private TwoDigitFormatter mTwoDigitFormatter;
    private int mUnitMargin;
    private int mUnitMarginBottom;
    private int mUnitMinWidth;
    private String mUnitText;
    private final Paint mUnitTextPaint;
    private int mUnitTextSize;
    private int mValue;
    private VelocityTracker mVelocityTracker;
    private int mVelocityY;
    private boolean mVerticalFadingEdgeEnable;
    private float mVibrateIntensity;
    private int mVibrateLevel;
    private int mVisualWidth;
    private boolean mWrapSelectorWheel;
    private boolean mWrapSelectorWheelPreferred;
    private static final PathInterpolator FLING_INTERPOLATOR = new PathInterpolator(0.0f, 0.0f, 0.4f, 1.0f);
    private static final PathInterpolator SLOW_FLING_INTERPOLATOR = new PathInterpolator(0.0f, 0.23f, 0.1f, 1.0f);
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));

    class AccessibilityNodeProviderImpl extends AccessibilityNodeProvider {
        private static final int UNDEFINED = Integer.MIN_VALUE;
        private static final int VIRTUAL_VIEW_ID = 0;
        private static final int VIRTUAL_VIEW_ID_DECREMENT = 3;
        private static final int VIRTUAL_VIEW_ID_INCREMENT = 1;
        private static final int VIRTUAL_VIEW_ID_INPUT = 2;
        private final Rect mTempRect = new Rect();
        private final int[] mTempArray = new int[2];
        private int mAccessibilityFocusedView = Integer.MIN_VALUE;

        AccessibilityNodeProviderImpl() {
        }

        private AccessibilityNodeInfo createAccessibilityNodeInfoForInputText(String str, int i10, int i11, int i12, int i13) {
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
            accessibilityNodeInfoObtain.setPackageName(COUINumberPicker.this.getContext().getPackageName());
            accessibilityNodeInfoObtain.setParent(COUINumberPicker.this);
            accessibilityNodeInfoObtain.setSource(COUINumberPicker.this, 2);
            if (!TextUtils.isEmpty(COUINumberPicker.this.mTalkbackSuffix)) {
                str = str + COUINumberPicker.this.mTalkbackSuffix;
            }
            accessibilityNodeInfoObtain.setText(str);
            accessibilityNodeInfoObtain.setClickable(true);
            accessibilityNodeInfoObtain.setLongClickable(true);
            accessibilityNodeInfoObtain.setEnabled(COUINumberPicker.this.isEnabled());
            accessibilityNodeInfoObtain.setScrollable(true);
            accessibilityNodeInfoObtain.setAccessibilityFocused(this.mAccessibilityFocusedView == 2);
            if (this.mAccessibilityFocusedView != 2) {
                accessibilityNodeInfoObtain.addAction(64);
            }
            if (this.mAccessibilityFocusedView == 2) {
                accessibilityNodeInfoObtain.addAction(128);
            }
            if (COUINumberPicker.this.isEnabled()) {
                accessibilityNodeInfoObtain.addAction(16);
            }
            Rect rect = this.mTempRect;
            rect.set(i10, i11, i12, i13);
            accessibilityNodeInfoObtain.setVisibleToUser(COUINumberPicker.this.isVisibleToUserRef(rect));
            accessibilityNodeInfoObtain.setBoundsInParent(rect);
            int[] iArr = this.mTempArray;
            COUINumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            accessibilityNodeInfoObtain.setBoundsInScreen(rect);
            return accessibilityNodeInfoObtain;
        }

        private AccessibilityNodeInfo createAccessibilityNodeInfoForNumberPicker(String str, int i10, int i11, int i12, int i13) {
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
            accessibilityNodeInfoObtain.setClassName(COUINumberPicker.class.getName());
            accessibilityNodeInfoObtain.setPackageName(COUINumberPicker.this.getContext().getPackageName());
            accessibilityNodeInfoObtain.setSource(COUINumberPicker.this);
            if (!TextUtils.isEmpty(COUINumberPicker.this.mTalkbackSuffix)) {
                str = str + COUINumberPicker.this.mTalkbackSuffix;
            }
            accessibilityNodeInfoObtain.setText(str);
            if (hasVirtualDecrementButton()) {
                accessibilityNodeInfoObtain.addChild(COUINumberPicker.this, 3);
            }
            accessibilityNodeInfoObtain.addChild(COUINumberPicker.this, 2);
            if (hasVirtualIncrementButton()) {
                accessibilityNodeInfoObtain.addChild(COUINumberPicker.this, 1);
            }
            accessibilityNodeInfoObtain.setParent((View) COUINumberPicker.this.getParentForAccessibility());
            accessibilityNodeInfoObtain.setEnabled(COUINumberPicker.this.isEnabled());
            accessibilityNodeInfoObtain.setScrollable(true);
            accessibilityNodeInfoObtain.setAccessibilityFocused(this.mAccessibilityFocusedView == -1);
            Rect rect = this.mTempRect;
            rect.set(i10, i11, i12, i13);
            accessibilityNodeInfoObtain.setBoundsInParent(rect);
            accessibilityNodeInfoObtain.setVisibleToUser(COUINumberPicker.this.isVisibleToUserRef(null));
            int[] iArr = this.mTempArray;
            COUINumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            accessibilityNodeInfoObtain.setBoundsInScreen(rect);
            if (this.mAccessibilityFocusedView != -1) {
                accessibilityNodeInfoObtain.addAction(64);
            }
            if (this.mAccessibilityFocusedView == -1) {
                accessibilityNodeInfoObtain.addAction(128);
            }
            if (COUINumberPicker.this.isEnabled()) {
                if (COUINumberPicker.this.getWrapSelectorWheel() || COUINumberPicker.this.getValue() < COUINumberPicker.this.getMaxValue()) {
                    accessibilityNodeInfoObtain.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoObtain.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN);
                }
                if (COUINumberPicker.this.getWrapSelectorWheel() || COUINumberPicker.this.getValue() > COUINumberPicker.this.getMinValue()) {
                    accessibilityNodeInfoObtain.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
                    accessibilityNodeInfoObtain.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP);
                }
            }
            return accessibilityNodeInfoObtain;
        }

        private AccessibilityNodeInfo createAccessibilityNodeInfoForVirtualButton(int i10, String str, int i11, int i12, int i13, int i14) {
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
            accessibilityNodeInfoObtain.setPackageName(COUINumberPicker.this.getContext().getPackageName());
            accessibilityNodeInfoObtain.setSource(COUINumberPicker.this, i10);
            accessibilityNodeInfoObtain.setParent(COUINumberPicker.this);
            if (!TextUtils.isEmpty(COUINumberPicker.this.mTalkbackSuffix)) {
                str = str + COUINumberPicker.this.mTalkbackSuffix;
            }
            accessibilityNodeInfoObtain.setText(str);
            accessibilityNodeInfoObtain.setClickable(true);
            accessibilityNodeInfoObtain.setLongClickable(true);
            accessibilityNodeInfoObtain.setEnabled(COUINumberPicker.this.isEnabled());
            accessibilityNodeInfoObtain.setAccessibilityFocused(this.mAccessibilityFocusedView == i10);
            Rect rect = this.mTempRect;
            rect.set(i11, i12, i13, i14);
            accessibilityNodeInfoObtain.setVisibleToUser(COUINumberPicker.this.isVisibleToUserRef(rect));
            accessibilityNodeInfoObtain.setBoundsInParent(rect);
            int[] iArr = this.mTempArray;
            COUINumberPicker.this.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            accessibilityNodeInfoObtain.setBoundsInScreen(rect);
            if (this.mAccessibilityFocusedView != i10) {
                accessibilityNodeInfoObtain.addAction(64);
            }
            if (this.mAccessibilityFocusedView == i10) {
                accessibilityNodeInfoObtain.addAction(128);
            }
            if (COUINumberPicker.this.isEnabled()) {
                accessibilityNodeInfoObtain.addAction(16);
            }
            return accessibilityNodeInfoObtain;
        }

        private void findAccessibilityNodeInfosByTextInChild(String str, int i10, List<AccessibilityNodeInfo> list) {
            if (i10 == 1) {
                String virtualText = getVirtualText(COUINumberPicker.this.mValue + 1);
                if (TextUtils.isEmpty(virtualText) || !virtualText.toString().toLowerCase().contains(str)) {
                    return;
                }
                list.add(createAccessibilityNodeInfo(1));
                return;
            }
            if (i10 != 3) {
                return;
            }
            String virtualText2 = getVirtualText(COUINumberPicker.this.mValue - 1);
            if (TextUtils.isEmpty(virtualText2) || !virtualText2.toString().toLowerCase().contains(str)) {
                return;
            }
            list.add(createAccessibilityNodeInfo(3));
        }

        private String getVirtualText(int i10) {
            if (COUINumberPicker.this.mWrapSelectorWheel) {
                i10 = COUINumberPicker.this.getWrappedSelectorIndex(i10);
            }
            if (i10 > COUINumberPicker.this.mMaxValue || i10 < COUINumberPicker.this.mMinValue) {
                return null;
            }
            return COUINumberPicker.this.mDisplayedValues == null ? COUINumberPicker.this.formatNumber(i10) : COUINumberPicker.this.mDisplayedValues[i10 - COUINumberPicker.this.mMinValue];
        }

        private boolean hasVirtualDecrementButton() {
            return COUINumberPicker.this.getWrapSelectorWheel() || COUINumberPicker.this.getValue() > COUINumberPicker.this.getMinValue();
        }

        private boolean hasVirtualIncrementButton() {
            return COUINumberPicker.this.getWrapSelectorWheel() || COUINumberPicker.this.getValue() < COUINumberPicker.this.getMaxValue();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void sendAccessibilityEventForVirtualButton(int i10, int i11, String str) {
            if (!TextUtils.isEmpty(COUINumberPicker.this.mTalkbackSuffix)) {
                str = str + COUINumberPicker.this.mTalkbackSuffix;
            }
            if (COUINumberPicker.this.mAccessibilityManager.isEnabled()) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i11);
                accessibilityEventObtain.setPackageName(COUINumberPicker.this.getContext().getPackageName());
                accessibilityEventObtain.getText().add(str);
                accessibilityEventObtain.setEnabled(COUINumberPicker.this.isEnabled());
                accessibilityEventObtain.setSource(COUINumberPicker.this, i10);
                COUINumberPicker cOUINumberPicker = COUINumberPicker.this;
                cOUINumberPicker.requestSendAccessibilityEvent(cOUINumberPicker, accessibilityEventObtain);
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void sendAccessibilityEventForVirtualText(int i10, String str) {
            if (!TextUtils.isEmpty(COUINumberPicker.this.mTalkbackSuffix)) {
                str = str + COUINumberPicker.this.mTalkbackSuffix;
            }
            if (COUINumberPicker.this.mAccessibilityManager.isEnabled()) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i10);
                accessibilityEventObtain.setPackageName(COUINumberPicker.this.getContext().getPackageName());
                accessibilityEventObtain.getText().add(str);
                accessibilityEventObtain.setEnabled(COUINumberPicker.this.isEnabled());
                accessibilityEventObtain.setSource(COUINumberPicker.this, 2);
                COUINumberPicker cOUINumberPicker = COUINumberPicker.this;
                cOUINumberPicker.requestSendAccessibilityEvent(cOUINumberPicker, accessibilityEventObtain);
            }
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i10) {
            return i10 != -1 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? super.createAccessibilityNodeInfo(i10) : createAccessibilityNodeInfoForVirtualButton(3, getVirtualText(COUINumberPicker.this.mValue - 1), COUINumberPicker.this.getScrollX(), COUINumberPicker.this.getScrollY(), COUINumberPicker.this.getScrollX() + (COUINumberPicker.this.getRight() - COUINumberPicker.this.getLeft()), COUINumberPicker.this.mTopSelectionDividerTop) : createAccessibilityNodeInfoForInputText(getVirtualText(COUINumberPicker.this.mValue), COUINumberPicker.this.getScrollX(), COUINumberPicker.this.mTopSelectionDividerTop, COUINumberPicker.this.getScrollX() + (COUINumberPicker.this.getRight() - COUINumberPicker.this.getLeft()), COUINumberPicker.this.mBottomSelectionDividerBottom) : createAccessibilityNodeInfoForVirtualButton(1, getVirtualText(COUINumberPicker.this.mValue + 1), COUINumberPicker.this.getScrollX(), COUINumberPicker.this.mBottomSelectionDividerBottom, COUINumberPicker.this.getScrollX() + (COUINumberPicker.this.getRight() - COUINumberPicker.this.getLeft()), COUINumberPicker.this.getScrollY() + (COUINumberPicker.this.getBottom() - COUINumberPicker.this.getTop())) : createAccessibilityNodeInfoForNumberPicker(getVirtualText(COUINumberPicker.this.mValue), COUINumberPicker.this.getScrollX(), COUINumberPicker.this.getScrollY(), COUINumberPicker.this.getScrollX() + (COUINumberPicker.this.getRight() - COUINumberPicker.this.getLeft()), COUINumberPicker.this.getScrollY() + (COUINumberPicker.this.getBottom() - COUINumberPicker.this.getTop()));
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i10) {
            if (TextUtils.isEmpty(str)) {
                return Collections.emptyList();
            }
            String lowerCase = str.toLowerCase();
            ArrayList arrayList = new ArrayList();
            if (i10 == -1) {
                findAccessibilityNodeInfosByTextInChild(lowerCase, 3, arrayList);
                findAccessibilityNodeInfosByTextInChild(lowerCase, 2, arrayList);
                findAccessibilityNodeInfosByTextInChild(lowerCase, 1, arrayList);
                return arrayList;
            }
            if (i10 != 1 && i10 != 2 && i10 != 3) {
                return super.findAccessibilityNodeInfosByText(str, i10);
            }
            findAccessibilityNodeInfosByTextInChild(lowerCase, i10, arrayList);
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i10, int i11, Bundle bundle) {
            if (i10 != -1) {
                if (i10 == 1) {
                    if (i11 == 16) {
                        if (!COUINumberPicker.this.isEnabled()) {
                            return false;
                        }
                        COUINumberPicker.this.changeValueByOne(true);
                        sendAccessibilityEventForVirtualView(i10, 1);
                        return true;
                    }
                    if (i11 == 64) {
                        if (this.mAccessibilityFocusedView == i10) {
                            return false;
                        }
                        this.mAccessibilityFocusedView = i10;
                        sendAccessibilityEventForVirtualView(i10, 32768);
                        COUINumberPicker cOUINumberPicker = COUINumberPicker.this;
                        cOUINumberPicker.invalidate(0, cOUINumberPicker.mBottomSelectionDividerBottom, COUINumberPicker.this.getRight(), COUINumberPicker.this.getBottom());
                        return true;
                    }
                    if (i11 != 128 || this.mAccessibilityFocusedView != i10) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                    sendAccessibilityEventForVirtualView(i10, 65536);
                    COUINumberPicker cOUINumberPicker2 = COUINumberPicker.this;
                    cOUINumberPicker2.invalidate(0, cOUINumberPicker2.mBottomSelectionDividerBottom, COUINumberPicker.this.getRight(), COUINumberPicker.this.getBottom());
                    return true;
                }
                if (i10 == 2) {
                    if (i11 == 16) {
                        if (!COUINumberPicker.this.isEnabled()) {
                            return false;
                        }
                        COUINumberPicker.this.performClick();
                        return true;
                    }
                    if (i11 == 32) {
                        if (!COUINumberPicker.this.isEnabled()) {
                            return false;
                        }
                        COUINumberPicker.this.performLongClick();
                        return true;
                    }
                    if (i11 != 64) {
                        if (i11 != 128 || this.mAccessibilityFocusedView != i10) {
                            return false;
                        }
                        this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                        sendAccessibilityEventForVirtualView(i10, 65536);
                        return true;
                    }
                    if (this.mAccessibilityFocusedView == i10) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = i10;
                    sendAccessibilityEventForVirtualView(i10, 32768);
                    COUINumberPicker cOUINumberPicker3 = COUINumberPicker.this;
                    cOUINumberPicker3.invalidate(0, 0, cOUINumberPicker3.getRight(), COUINumberPicker.this.mTopSelectionDividerTop);
                    return true;
                }
                if (i10 == 3) {
                    if (i11 == 16) {
                        if (!COUINumberPicker.this.isEnabled()) {
                            return false;
                        }
                        COUINumberPicker.this.changeValueByOne(i10 == 1);
                        sendAccessibilityEventForVirtualView(i10, 1);
                        return true;
                    }
                    if (i11 == 64) {
                        if (this.mAccessibilityFocusedView == i10) {
                            return false;
                        }
                        this.mAccessibilityFocusedView = i10;
                        sendAccessibilityEventForVirtualView(i10, 32768);
                        COUINumberPicker cOUINumberPicker4 = COUINumberPicker.this;
                        cOUINumberPicker4.invalidate(0, 0, cOUINumberPicker4.getRight(), COUINumberPicker.this.mTopSelectionDividerTop);
                        return true;
                    }
                    if (i11 != 128 || this.mAccessibilityFocusedView != i10) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                    sendAccessibilityEventForVirtualView(i10, 65536);
                    COUINumberPicker cOUINumberPicker5 = COUINumberPicker.this;
                    cOUINumberPicker5.invalidate(0, 0, cOUINumberPicker5.getRight(), COUINumberPicker.this.mTopSelectionDividerTop);
                    return true;
                }
            } else {
                if (i11 == 64) {
                    if (this.mAccessibilityFocusedView == i10) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = i10;
                    COUINumberPicker.this.sendAccessibilityEvent(32768);
                    return true;
                }
                if (i11 == 128) {
                    if (this.mAccessibilityFocusedView != i10) {
                        return false;
                    }
                    this.mAccessibilityFocusedView = Integer.MIN_VALUE;
                    COUINumberPicker.this.sendAccessibilityEvent(65536);
                    return true;
                }
                if (i11 == 4096) {
                    if (!COUINumberPicker.this.isEnabled()) {
                        return false;
                    }
                    COUINumberPicker.this.changeValueByOne(true);
                    return true;
                }
                if (i11 == 8192) {
                    if (!COUINumberPicker.this.isEnabled()) {
                        return false;
                    }
                    COUINumberPicker.this.changeValueByOne(false);
                    return true;
                }
            }
            return super.performAction(i10, i11, bundle);
        }

        void sendAccessibilityEventForVirtualView(int i10, int i11) {
            if (i10 == 1) {
                if (hasVirtualIncrementButton()) {
                    sendAccessibilityEventForVirtualButton(i10, i11, getVirtualText(COUINumberPicker.this.mValue + 1));
                }
            } else if (i10 == 2) {
                sendAccessibilityEventForVirtualText(i11, getVirtualText(COUINumberPicker.this.mValue));
            } else if (i10 == 3 && hasVirtualDecrementButton()) {
                sendAccessibilityEventForVirtualButton(i10, i11, getVirtualText(COUINumberPicker.this.mValue - 1));
            }
        }
    }

    class ChangeCurrentByOneFromLongPressCommand implements Runnable {
        private boolean mIncrement;

        ChangeCurrentByOneFromLongPressCommand() {
        }

        public void setStep(boolean z10) {
            this.mIncrement = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            COUINumberPicker.this.changeValueByOne(this.mIncrement);
            COUINumberPicker cOUINumberPicker = COUINumberPicker.this;
            cOUINumberPicker.postDelayed(this, cOUINumberPicker.mLongPressUpdateInterval);
        }
    }

    public interface Formatter {
        String format(int i10);
    }

    public interface OnScrollListener {
        public static final int SCROLL_STATE_FLING = 2;
        public static final int SCROLL_STATE_IDLE = 0;
        public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

        void onScrollStateChange(COUINumberPicker cOUINumberPicker, int i10);
    }

    public interface OnScrollingStopListener {
        void onScrollingStop();
    }

    public interface OnValueChangeListener {
        void onValueChange(COUINumberPicker cOUINumberPicker, int i10, int i11);
    }

    class PressedStateHelper implements Runnable {
        public static final int BUTTON_DECREMENT = 2;
        public static final int BUTTON_INCREMENT = 1;
        private final int MODE_PRESS = 1;
        private final int MODE_TAPPED = 2;
        private int mManagedButton;
        private int mMode;

        PressedStateHelper() {
        }

        public void buttonPressDelayed(int i10) {
            cancel();
            this.mMode = 1;
            this.mManagedButton = i10;
            COUINumberPicker.this.postDelayed(this, ViewConfiguration.getTapTimeout());
        }

        public void buttonTapped(int i10) {
            cancel();
            this.mMode = 2;
            this.mManagedButton = i10;
            COUINumberPicker.this.post(this);
        }

        public void cancel() {
            this.mMode = 0;
            this.mManagedButton = 0;
            COUINumberPicker.this.removeCallbacks(this);
            if (COUINumberPicker.this.mIncrementVirtualButtonPressed) {
                COUINumberPicker.this.mIncrementVirtualButtonPressed = false;
                COUINumberPicker cOUINumberPicker = COUINumberPicker.this;
                cOUINumberPicker.invalidate(0, cOUINumberPicker.mBottomSelectionDividerBottom, COUINumberPicker.this.getRight(), COUINumberPicker.this.getBottom());
            }
            COUINumberPicker.this.mDecrementVirtualButtonPressed = false;
            if (COUINumberPicker.this.mDecrementVirtualButtonPressed) {
                COUINumberPicker cOUINumberPicker2 = COUINumberPicker.this;
                cOUINumberPicker2.invalidate(0, 0, cOUINumberPicker2.getRight(), COUINumberPicker.this.mTopSelectionDividerTop);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = this.mMode;
            if (i10 == 1) {
                int i11 = this.mManagedButton;
                if (i11 == 1) {
                    COUINumberPicker.this.mIncrementVirtualButtonPressed = true;
                    COUINumberPicker cOUINumberPicker = COUINumberPicker.this;
                    cOUINumberPicker.invalidate(0, cOUINumberPicker.mBottomSelectionDividerBottom, COUINumberPicker.this.getRight(), COUINumberPicker.this.getBottom());
                    return;
                } else {
                    if (i11 != 2) {
                        return;
                    }
                    COUINumberPicker.this.mDecrementVirtualButtonPressed = true;
                    COUINumberPicker cOUINumberPicker2 = COUINumberPicker.this;
                    cOUINumberPicker2.invalidate(0, 0, cOUINumberPicker2.getRight(), COUINumberPicker.this.mTopSelectionDividerTop);
                    return;
                }
            }
            if (i10 != 2) {
                return;
            }
            int i12 = this.mManagedButton;
            if (i12 == 1) {
                if (!COUINumberPicker.this.mIncrementVirtualButtonPressed) {
                    COUINumberPicker.this.postDelayed(this, ViewConfiguration.getPressedStateDuration());
                }
                COUINumberPicker.access$180(COUINumberPicker.this, 1);
                COUINumberPicker cOUINumberPicker3 = COUINumberPicker.this;
                cOUINumberPicker3.invalidate(0, cOUINumberPicker3.mBottomSelectionDividerBottom, COUINumberPicker.this.getRight(), COUINumberPicker.this.getBottom());
                return;
            }
            if (i12 != 2) {
                return;
            }
            if (!COUINumberPicker.this.mDecrementVirtualButtonPressed) {
                COUINumberPicker.this.postDelayed(this, ViewConfiguration.getPressedStateDuration());
            }
            COUINumberPicker.access$380(COUINumberPicker.this, 1);
            COUINumberPicker cOUINumberPicker4 = COUINumberPicker.this;
            cOUINumberPicker4.invalidate(0, 0, cOUINumberPicker4.getRight(), COUINumberPicker.this.mTopSelectionDividerTop);
        }
    }

    private class TouchEffectHandler extends Handler {
        TouchEffectHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                COUINumberPicker.this.playSoundEffect();
            } else if (i10 == 1) {
                String str = (String) COUINumberPicker.this.mSelectorIndexToStringCache.get(((Integer) message.obj).intValue());
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (!TextUtils.isEmpty(COUINumberPicker.this.mTalkbackSuffix)) {
                    str = str + COUINumberPicker.this.mTalkbackSuffix;
                }
                if (COUINumberPicker.this.mScrollState == 0) {
                    COUINumberPicker.this.announceForAccessibility(str);
                    if (COUINumberPicker.this.mOnScrollingStopListener != null) {
                        COUINumberPicker.this.mOnScrollingStopListener.onScrollingStop();
                    }
                }
            }
            super.handleMessage(message);
        }
    }

    private class TwoDigitFormatter implements Formatter {
        DecimalFormat mDecimalFormat;
        java.util.Formatter mJavaFormatter;
        final StringBuilder mBuilder = new StringBuilder();
        final Object[] mArgs = new Object[1];

        TwoDigitFormatter() {
            init(Locale.getDefault());
        }

        private void init(Locale locale) {
            this.mJavaFormatter = new java.util.Formatter(this.mBuilder, locale);
            this.mDecimalFormat = new DecimalFormat("00");
        }

        @Override // com.coui.appcompat.picker.COUINumberPicker.Formatter
        public String format(int i10) {
            this.mArgs[0] = Integer.valueOf(i10);
            StringBuilder sb = this.mBuilder;
            sb.delete(0, sb.length());
            return this.mDecimalFormat.format(i10);
        }
    }

    public COUINumberPicker(Context context) {
        this(context, null);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, byte] */
    static /* synthetic */ boolean access$180(COUINumberPicker cOUINumberPicker, int i10) {
        ?? r22 = (byte) (i10 ^ (cOUINumberPicker.mIncrementVirtualButtonPressed ? 1 : 0));
        cOUINumberPicker.mIncrementVirtualButtonPressed = r22;
        return r22;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, byte] */
    static /* synthetic */ boolean access$380(COUINumberPicker cOUINumberPicker, int i10) {
        ?? r22 = (byte) (i10 ^ (cOUINumberPicker.mDecrementVirtualButtonPressed ? 1 : 0));
        cOUINumberPicker.mDecrementVirtualButtonPressed = r22;
        return r22;
    }

    public void changeValueByOne(boolean z10) {
        if (!moveToFinalScrollerPosition(this.mFlingScroller)) {
            moveToFinalScrollerPosition(this.mAdjustScroller);
        }
        this.mPreviousScrollerY = 0;
        if (z10) {
            this.mFlingScroller.startScroll(0, 0, 0, (int) ((-this.mSelectorElementHeight) - this.mDiffusion), 300);
        } else {
            this.mFlingScroller.startScroll(0, 0, 0, (int) (this.mSelectorElementHeight + this.mDiffusion), 300);
        }
        invalidate();
    }

    private float computeDeceleration(float f10) {
        return this.mPpi * 386.0878f * f10;
    }

    private void decrementSelectorIndices(int[] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr[i10] = getWrappedSelectorIndex(iArr[i10], -1);
        }
        ensureCachedScrollSelectorValue(iArr[0]);
    }

    private void ensureCachedScrollSelectorValue(int i10) {
        String number;
        SparseArray<String> sparseArray = this.mSelectorIndexToStringCache;
        if (sparseArray.get(i10) != null) {
            return;
        }
        int i11 = this.mMinValue;
        if (i10 < i11 || i10 > this.mMaxValue) {
            number = "";
        } else {
            String[] strArr = this.mDisplayedValues;
            number = strArr != null ? strArr[i10 - i11] : formatNumber(i10);
        }
        sparseArray.put(i10, number);
    }

    private boolean ensureScrollWheelAdjusted() {
        int i10 = -this.mCurrentScrollOffset;
        if (i10 == 0) {
            return false;
        }
        this.mPreviousScrollerY = 0;
        getSplineFlingDistance(this.mVelocityY);
        Math.signum(this.mVelocityY);
        getSplineFlingDuration(this.mVelocityY);
        float fAbs = Math.abs(i10);
        int i11 = this.mSelectorElementHeight;
        float f10 = this.mDiffusion;
        if (fAbs > (i11 + f10) / 2.0f) {
            i10 = (int) (i10 + (i10 > 0 ? (-i11) - f10 : i11 + f10));
        }
        this.mAdjustScroller.startScroll(0, 0, 0, i10, 300);
        invalidate();
        return true;
    }

    private void fling(int i10) {
        this.mVelocityY = i10;
        this.mPreviousScrollerY = 0;
        double splineFlingDistance = getSplineFlingDistance(i10);
        int i11 = this.mSelectorElementHeight;
        float f10 = this.mDiffusion;
        double d10 = splineFlingDistance > ((double) (((float) i11) + f10)) ? splineFlingDistance - (splineFlingDistance % ((double) (i11 + f10))) : splineFlingDistance % ((double) (i11 + f10));
        double d11 = d10 + ((double) this.mDeltaMoveY);
        this.mFlingScroller.startScroll(0, 0, 0, (int) (i10 < 0 ? -(d11 + ((double) ((this.mCurrentScrollOffset - r4) % (i11 + f10)))) : d11 - ((double) ((this.mCurrentScrollOffset + r4) % (i11 + f10)))), (int) (getSplineFlingDuration(r0) * 1.5f));
        invalidate();
    }

    public String formatNumber(int i10) {
        Formatter formatter = this.mFormatter;
        return formatter != null ? formatter.format(i10) : formatNumberWithLocale(i10);
    }

    private static String formatNumberWithLocale(int i10) {
        return String.format(Locale.getDefault(), "%d", Integer.valueOf(i10));
    }

    private String getCaller(StackTraceElement[] stackTraceElementArr, int i10) {
        int i11 = i10 + 4;
        if (i11 >= stackTraceElementArr.length) {
            return "<bottom of call stack>";
        }
        StackTraceElement stackTraceElement = stackTraceElementArr[i11];
        return stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber();
    }

    private String getCallers(int i10) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append(getCaller(stackTrace, i11));
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    private float getDampRatio() {
        return Math.min(VELOCITY_SPEED_UP_RATIO, 1.6f);
    }

    private int getGradientCoeff(int i10) {
        return Math.abs(i10 - (this.mSelectorMiddleItemIndex * this.mSelectorElementHeight)) / this.mSelectorElementHeight;
    }

    private double getSplineDeceleration(float f10) {
        return Math.log((Math.abs(f10) * 0.35f) / (this.mFlingFriction * this.mPhysicalCoeff));
    }

    private double getSplineFlingDistance(float f10) {
        double splineDeceleration = getSplineDeceleration(f10);
        float f11 = DECELERATION_RATE;
        return ((double) (this.mFlingFriction * this.mPhysicalCoeff)) * Math.exp((((double) f11) / (((double) f11) - 1.0d)) * splineDeceleration);
    }

    private int getSplineFlingDuration(float f10) {
        return (int) (Math.exp(getSplineDeceleration(f10) / (((double) DECELERATION_RATE) - 1.0d)) * 1000.0d);
    }

    public int getWrappedSelectorIndex(int i10) {
        return getWrappedSelectorIndex(i10, 0);
    }

    private int gradualChange(int i10, int i11, float f10) {
        return i11 - ((int) (((i11 - i10) * 2) * f10));
    }

    private float gradualChangeTextSize(int i10, int i11, int i12, int i13, int i14) {
        int i15 = this.mSelectorMiddleItemIndex - 1;
        int i16 = this.mSelectorElementHeight;
        int i17 = i15 * i16;
        double d10 = i14;
        double d11 = i17;
        return (d10 <= d11 - (((double) i16) * 0.5d) || d10 >= d11 + (((double) i16) * 0.5d)) ? i14 <= i17 - i16 ? i12 + (((((i13 - i12) * 1.0f) * i14) / i16) / 2.0f) : i14 >= i17 + i16 ? i12 + (((((i13 - i12) * 1.0f) * (((this.mSelectorIndices.length - 3) * i16) - i14)) / i16) / 2.0f) : i13 : i11 - ((((i11 - i10) * 2.0f) * Math.abs(i14 - i17)) / this.mSelectorElementHeight);
    }

    private void incrementSelectorIndices(int[] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr[i10] = getWrappedSelectorIndex(iArr[i10], 1);
        }
        ensureCachedScrollSelectorValue(iArr[iArr.length - 1]);
    }

    private void initColorGradientRes() {
        int i10 = this.mSelectorElementHeight;
        int i11 = this.mSelectorMiddleItemIndex;
        this.mGradientPositionTop = (int) (((double) i10) * (((double) i11) - 0.5d));
        this.mGradientPositionBottom = (int) (((double) i10) * (((double) i11) + 0.5d));
    }

    private void initOrResetVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private void initializeFadingEdges() {
        setVerticalFadingEdgeEnabled(this.mVerticalFadingEdgeEnable);
        setFadingEdgeLength(((getBottom() - getTop()) - this.mNormalTextSize) / 2);
    }

    private void initializeSelectorWheel() {
        initializeSelectorWheelIndices();
        int[] iArr = this.mSelectorIndices;
        int iMax = (int) ((Math.max(0, ((getBottom() - getTop()) - ((iArr.length - 2) * this.mNormalTextSize)) - this.mPickerOffset) / (iArr.length - 2)) + 0.5f);
        this.mSelectorTextGapHeight = iMax;
        this.mSelectorElementHeight = this.mNormalTextSize + iMax;
        this.mCurrentScrollOffset = 0;
        this.mTopSelectionDividerTop = (getHeight() / 2) - (this.mSelectorElementHeight / 2);
        this.mBottomSelectionDividerBottom = (getHeight() / 2) + (this.mSelectorElementHeight / 2);
    }

    private void initializeSelectorWheelIndices() {
        this.mSelectorIndexToStringCache.clear();
        int[] iArr = this.mSelectorIndices;
        int value = getValue();
        for (int i10 = 0; i10 < this.mSelectorIndices.length; i10++) {
            int i11 = i10 - this.mSelectorMiddleItemIndex;
            int wrappedSelectorIndex = this.mIgnorable ? getWrappedSelectorIndex(value, i11) : i11 + value;
            if (this.mWrapSelectorWheel) {
                wrappedSelectorIndex = getWrappedSelectorIndex(wrappedSelectorIndex);
            }
            iArr[i10] = wrappedSelectorIndex;
            ensureCachedScrollSelectorValue(wrappedSelectorIndex);
        }
    }

    public boolean isVisibleToUserRef(Rect rect) {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("isVisibleToUser", Rect.class);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(this, rect)).booleanValue();
        } catch (Exception e10) {
            Log.e(TAG, "isUserVisible: error=" + e10.getMessage());
            return false;
        }
    }

    private int makeMeasureSpec(int i10, int i11) {
        if (i11 == -1) {
            return i10;
        }
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                return View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
            }
            if (mode == 1073741824) {
                return i10;
            }
            throw new IllegalArgumentException("Unknown measure mode: " + mode);
        }
        String str = this.mUnitText;
        if (str != null) {
            float fMeasureText = this.mUnitTextPaint.measureText(str);
            int iMeasureText = this.mUnitMinWidth;
            if (fMeasureText > iMeasureText) {
                iMeasureText = (int) this.mUnitTextPaint.measureText(this.mUnitText);
            }
            int i12 = this.mInitTextMargin;
            size = iMeasureText + (i12 - this.mUnitMinWidth) + i12 + this.mSelectedValueWidth;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, i11), 1073741824);
    }

    private boolean moveToFinalScrollerPosition(Scroller scroller) {
        scroller.forceFinished(true);
        int finalY = scroller.getFinalY() - scroller.getCurrY();
        int i10 = -((this.mCurrentScrollOffset + finalY) % this.mSelectorElementHeight);
        if (i10 == 0) {
            return false;
        }
        int iAbs = Math.abs(i10);
        int i11 = this.mSelectorElementHeight;
        if (iAbs > i11 / 2) {
            i10 = i10 > 0 ? i10 - i11 : i10 + i11;
        }
        scrollBy(0, finalY + i10);
        return true;
    }

    private void notifyChange(int i10, int i11) {
        OnValueChangeListener onValueChangeListener = this.mOnValueChangeListener;
        if (onValueChangeListener != null) {
            onValueChangeListener.onValueChange(this, i10, this.mValue);
        }
    }

    private void onScrollStateChange(int i10) {
        if (this.mScrollState == i10) {
            return;
        }
        this.mScrollState = i10;
        OnScrollListener onScrollListener = this.mOnScrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChange(this, i10);
        }
        if (this.mScrollState == 0) {
            String str = this.mSelectorIndexToStringCache.get(getValue());
            if (!TextUtils.isEmpty(this.mTalkbackSuffix)) {
                str = str + this.mTalkbackSuffix;
            }
            announceForAccessibility(str);
            OnScrollingStopListener onScrollingStopListener = this.mOnScrollingStopListener;
            if (onScrollingStopListener != null) {
                onScrollingStopListener.onScrollingStop();
            }
        }
    }

    private void onScrollerFinished(Scroller scroller) {
        if (scroller == this.mFlingScroller) {
            ensureScrollWheelAdjusted();
            onScrollStateChange(0);
        }
    }

    private boolean performAdaptiveFeedback() {
        int iAbs;
        if (this.mLinearMotorVibrator == null) {
            LinearmotorVibrator linearMotorVibrator = VibrateUtils.getLinearMotorVibrator(getContext());
            this.mLinearMotorVibrator = linearMotorVibrator;
            this.mHasMotorVibrator = linearMotorVibrator != null;
        }
        if (this.mLinearMotorVibrator == null) {
            return false;
        }
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
            iAbs = (int) Math.abs(this.mVelocityTracker.getYVelocity());
        } else {
            iAbs = Math.abs(this.mScrollerVelocity);
        }
        int i10 = iAbs;
        VibrateUtils.setLinearMotorVibratorStrength((LinearmotorVibrator) this.mLinearMotorVibrator, i10 > 2000 ? 0 : 1, i10, this.mMaximumFlingVelocity, 1200, VibrateUtils.STRENGTH_MAX_GRANULAR, this.mVibrateLevel, this.mVibrateIntensity);
        return true;
    }

    private void performFeedback() {
        if ((this.mHasMotorVibrator && this.mEnableAdaptiveVibrator && performAdaptiveFeedback()) || performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE_SYNC)) {
            return;
        }
        performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
    }

    public void playSoundEffect() {
        this.mSoundUtil.play(getContext(), this.mClickSoundId, 1.0f, 1.0f, 1, 0, 1.0f);
    }

    private void postChangeCurrentByOneFromLongPress(boolean z10, long j10) {
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        if (changeCurrentByOneFromLongPressCommand == null) {
            this.mChangeCurrentByOneFromLongPressCommand = new ChangeCurrentByOneFromLongPressCommand();
        } else {
            removeCallbacks(changeCurrentByOneFromLongPressCommand);
        }
        this.mChangeCurrentByOneFromLongPressCommand.setStep(z10);
        postDelayed(this.mChangeCurrentByOneFromLongPressCommand, j10);
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void removeAllCallbacks() {
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        if (changeCurrentByOneFromLongPressCommand != null) {
            removeCallbacks(changeCurrentByOneFromLongPressCommand);
        }
        this.mPressedStateHelper.cancel();
    }

    private void removeChangeCurrentByOneFromLongPress() {
        ChangeCurrentByOneFromLongPressCommand changeCurrentByOneFromLongPressCommand = this.mChangeCurrentByOneFromLongPressCommand;
        if (changeCurrentByOneFromLongPressCommand != null) {
            removeCallbacks(changeCurrentByOneFromLongPressCommand);
        }
    }

    private int resolveSizeAndStateRespectingMinSize(int i10, int i11, int i12) {
        return i10 != -1 ? View.resolveSizeAndState(Math.max(i10, i11), i12, 0) : i11;
    }

    private void setValueInternal(int i10, boolean z10) {
        if (this.mStartCalculateTime == -1) {
            this.mStartCalculateTime = System.currentTimeMillis();
            this.mCalculateCount = 0;
        } else if (System.currentTimeMillis() - this.mStartCalculateTime < 1000) {
            int i11 = this.mCalculateCount + 1;
            this.mCalculateCount = i11;
            if (i11 >= 100) {
                this.mCalculateCount = 0;
                Log.d(TAG, getCallers(30) + "\nmCurrentScrollOffset = " + this.mCurrentScrollOffset + " ,mSelectorTextGapHeight = " + this.mSelectorTextGapHeight + " ,mSelectorElementHeight = " + this.mSelectorElementHeight + " ,mSelectorMiddleItemIndex = " + this.mSelectorMiddleItemIndex + " ,mWrapSelectorWheel = " + this.mWrapSelectorWheel + " ,mDebugY = " + this.mDebugY + " ,mMinValue = " + this.mMinValue);
            }
        } else {
            this.mStartCalculateTime = -1L;
        }
        Log.d(TAG, "setValueInternal current = " + i10);
        if (this.mValue == i10) {
            initializeSelectorWheelIndices();
            return;
        }
        int wrappedSelectorIndex = this.mWrapSelectorWheel ? getWrappedSelectorIndex(i10) : Math.min(Math.max(i10, this.mMinValue), this.mMaxValue);
        int i12 = this.mValue;
        this.mValue = wrappedSelectorIndex;
        if (z10) {
            notifyChange(i12, wrappedSelectorIndex);
            performFeedback();
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.removeMessages(0);
                this.mHandler.sendEmptyMessage(0);
                AccessibilityManager accessibilityManager = this.mAccessibilityManager;
                if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                    Message message = new Message();
                    message.what = 1;
                    message.obj = Integer.valueOf(wrappedSelectorIndex);
                    this.mHandler.removeMessages(1);
                    this.mHandler.sendMessageDelayed(message, DEFAULT_LONG_PRESS_UPDATE_INTERVAL);
                }
            } else {
                Log.d(TAG, " mHandler not init yet , To prevent ANR, do not wait when initializing the handler. ");
            }
        }
        initializeSelectorWheelIndices();
        invalidate();
    }

    private void updateWrapSelectorWheel() {
        this.mWrapSelectorWheel = this.mMaxValue - this.mMinValue >= this.mSelectorIndices.length + (-2) && this.mWrapSelectorWheelPreferred;
    }

    public void addTalkbackSuffix(String str) {
        this.mTalkbackSuffix = str;
    }

    public void clearNumberPickerPadding() {
        this.mNumberPickerPaddingLeft = 0;
        this.mNumberPickerPaddingRight = 0;
        requestLayout();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mFlingScroller.isFinished()) {
            if (this.mAdjustScroller.isFinished()) {
                this.mScrollerVelocity = 0;
                return;
            }
            this.mAdjustScroller.computeScrollOffset();
            int currY = this.mAdjustScroller.getCurrY();
            if (this.mPreviousScrollerY == 0) {
                this.mPreviousScrollerY = this.mAdjustScroller.getStartY();
            }
            scrollBy(0, currY - this.mPreviousScrollerY);
            this.mPreviousScrollerY = currY;
            if (this.mAdjustScroller.isFinished()) {
                return;
            }
            invalidate();
            return;
        }
        this.mFlingScroller.computeScrollOffset();
        int currY2 = this.mFlingScroller.getCurrY();
        if (this.mPreviousScrollerY == 0) {
            this.mPreviousScrollerY = this.mFlingScroller.getStartY();
        }
        int iUptimeMillis = (int) (SystemClock.uptimeMillis() - ((long) this.mPreviousTime));
        int iAbs = Math.abs(currY2 - this.mPreviousScrollerY);
        if (iUptimeMillis != 0) {
            this.mScrollerVelocity = Math.min(this.mMaximumFlingVelocity, (int) (((iAbs * 1.0f) / iUptimeMillis) * 1000.0f));
        }
        scrollBy(0, currY2 - this.mPreviousScrollerY);
        this.mPreviousScrollerY = currY2;
        this.mPreviousTime = (int) SystemClock.uptimeMillis();
        if (this.mFlingScroller.isFinished()) {
            onScrollerFinished(this.mFlingScroller);
        } else {
            invalidate();
        }
    }

    @Override // android.view.View
    protected int computeVerticalScrollExtent() {
        return getHeight();
    }

    @Override // android.view.View
    protected int computeVerticalScrollOffset() {
        return this.mCurrentScrollOffset;
    }

    @Override // android.view.View
    protected int computeVerticalScrollRange() {
        return ((this.mMaxValue - this.mMinValue) + 1) * this.mSelectorElementHeight;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.mAccessibilityManager.isEnabled()) {
            return false;
        }
        int y10 = (int) motionEvent.getY();
        int i10 = y10 < this.mTopSelectionDividerTop ? 3 : y10 > this.mBottomSelectionDividerBottom ? 1 : 2;
        int actionMasked = motionEvent.getActionMasked();
        AccessibilityNodeProviderImpl accessibilityNodeProviderImpl = (AccessibilityNodeProviderImpl) getAccessibilityNodeProvider();
        if (actionMasked == 7) {
            int i11 = this.mLastHoveredChildVirtualViewId;
            if (i11 == i10 || i11 == -1) {
                return false;
            }
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i11, COUIToolTips.ALIGN_TOP);
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i10, 128);
            this.mLastHoveredChildVirtualViewId = i10;
            accessibilityNodeProviderImpl.performAction(i10, 64, null);
            return false;
        }
        if (actionMasked == 9) {
            accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i10, 128);
            this.mLastHoveredChildVirtualViewId = i10;
            accessibilityNodeProviderImpl.performAction(i10, 64, null);
            return false;
        }
        if (actionMasked != 10) {
            return false;
        }
        accessibilityNodeProviderImpl.sendAccessibilityEventForVirtualView(i10, COUIToolTips.ALIGN_TOP);
        this.mLastHoveredChildVirtualViewId = -1;
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19 || keyCode == 20) {
            int action = keyEvent.getAction();
            if (action == 0) {
                if (!this.mWrapSelectorWheel) {
                    if (keyCode == 20) {
                    }
                }
                requestFocus();
                this.mLastHandledDownDpadKeyCode = keyCode;
                removeAllCallbacks();
                if (this.mFlingScroller.isFinished()) {
                    changeValueByOne(keyCode == 20);
                }
                return true;
            }
            if (action == 1 && this.mLastHandledDownDpadKeyCode == keyCode) {
                this.mLastHandledDownDpadKeyCode = -1;
                return true;
            }
        } else if (keyCode == 23 || keyCode == 66) {
            removeAllCallbacks();
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Log.d(TAG, "dispatchTouchEvent event = " + motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            removeAllCallbacks();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            removeAllCallbacks();
        }
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        if (this.mAccessibilityNodeProvider == null) {
            this.mAccessibilityNodeProvider = new AccessibilityNodeProviderImpl();
        }
        return this.mAccessibilityNodeProvider;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        return 0.9f;
    }

    public String[] getDisplayedValues() {
        return this.mDisplayedValues;
    }

    public int getMaxValue() {
        return this.mMaxValue;
    }

    public int getMinValue() {
        return this.mMinValue;
    }

    public int getNumberPickerPaddingLeft() {
        return this.mNumberPickerPaddingLeft;
    }

    public int getNumberPickerPaddingRight() {
        return this.mNumberPickerPaddingRight;
    }

    public Paint getSelectorTextPaint() {
        return this.mSelectorWheelPaint;
    }

    public float getTextSize() {
        return this.mSelectorWheelPaint.getTextSize();
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        return 0.9f;
    }

    public int getTouchEffectInterval() {
        return this.mTouchEffectInterval;
    }

    public int getValue() {
        return this.mValue;
    }

    public boolean getWrapSelectorWheel() {
        return this.mWrapSelectorWheel;
    }

    public boolean isAccessibilityEnable() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isIgnorable() {
        return this.mIgnorable;
    }

    public boolean isLayoutRtl() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NumberPickerHandlerThread numberPickerHandlerThread = new NumberPickerHandlerThread("touchEffect", -16);
        this.mTouchEffectThread = numberPickerHandlerThread;
        numberPickerHandlerThread.start();
        if (this.mTouchEffectThread.getLooper() != null) {
            this.mHandler = new TouchEffectHandler(this.mTouchEffectThread.getLooper());
        }
        VibrateUtils.registerHapticObserver(getContext());
        initOrResetVelocityTracker();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeAllCallbacks();
        NumberPickerHandlerThread numberPickerHandlerThread = this.mTouchEffectThread;
        if (numberPickerHandlerThread != null) {
            numberPickerHandlerThread.quit();
            this.mTouchEffectThread = null;
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        VibrateUtils.unRegisterHapticObserver();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        float f10;
        int i10;
        if (this.mHasBackground) {
            canvas.drawRect(this.mBackgroundLeft, (int) (((getHeight() / 2.0f) - this.mBackgroundRadius) - this.mDiffusion), getWidth() - this.mBackgroundLeft, r0 + this.mBackgroundDividerHeight, this.mBackgroundPaint);
            canvas.drawRect(this.mBackgroundLeft, (int) ((getHeight() / 2.0f) + this.mBackgroundRadius + this.mDiffusion), getWidth() - this.mBackgroundLeft, r0 + this.mBackgroundDividerHeight, this.mBackgroundPaint);
        }
        float right = (((getRight() - getLeft()) - this.mNumberPickerPaddingLeft) - this.mNumberPickerPaddingRight) / 2.0f;
        if (this.mUnitText != null) {
            right = this.mTextMargin + (this.mSelectedValueWidth / 2.0f);
            if (isLayoutRtl()) {
                right = ((getMeasuredWidth() - right) - this.mNumberPickerPaddingRight) - this.mNumberPickerPaddingLeft;
            }
        }
        int i11 = this.mCurrentScrollOffset;
        int i12 = this.mVisualWidth;
        boolean z10 = true;
        if (i12 != -1 && i12 < getRight() - getLeft()) {
            int i13 = this.mAlignPosition;
            if (i13 == 1) {
                i10 = this.mVisualWidth / 2;
            } else if (i13 == 2) {
                int right2 = getRight() - getLeft();
                int i14 = this.mVisualWidth;
                i10 = (right2 - i14) + (i14 / 2);
            }
            right = i10;
        }
        int i15 = this.mNumberPickerPaddingLeft;
        if (i15 != 0) {
            right += i15;
        }
        float f11 = right;
        int[] iArr = this.mSelectorIndices;
        boolean z11 = false;
        int i16 = i11 - this.mSelectorElementHeight;
        float f12 = f11;
        int i17 = 0;
        float f13 = 0.0f;
        while (i17 < iArr.length) {
            int i18 = iArr[i17];
            if (i16 > this.mGradientPositionTop && i16 < this.mGradientPositionBottom) {
                float gradientCoeff = getGradientCoeff(i16);
                gradualChange(this.mAlphaStart, this.mAlphaEnd, gradientCoeff);
                gradualChange(this.mRedStart, this.mRedEnd, gradientCoeff);
                gradualChange(this.mGreenStart, this.mGreenEnd, gradientCoeff);
                gradualChange(this.mBlueStart, this.mBlueEnd, gradientCoeff);
            }
            int iArgb = Color.argb(this.mAlphaStart, this.mRedStart, this.mGreenStart, this.mBlueStart);
            int iArgb2 = Color.argb(this.mAlphaEnd, this.mRedEnd, this.mGreenEnd, this.mBlueEnd);
            int i19 = this.mNormalTextSize;
            int i20 = i17;
            float fGradualChangeTextSize = gradualChangeTextSize(i19, this.mFocusTextSize, i19, i19, i16);
            this.mSelectorWheelPaint.setColor(iArgb);
            String str = this.mSelectorIndexToStringCache.get(i18);
            this.mSelectorWheelPaint.setTextSize(this.mNormalTextSize);
            if (this.mMeasureTextSelectorPaint.measureText(str) >= getMeasuredWidth()) {
                this.mCurrentLanguageTooLong = z10;
                this.mSelectorWheelPaint.setTextAlign(Paint.Align.LEFT);
                f10 = 0.0f;
            } else {
                this.mCurrentLanguageTooLong = z11;
                this.mSelectorWheelPaint.setTextAlign(Paint.Align.CENTER);
                f10 = f11;
            }
            if (i18 != Integer.MIN_VALUE) {
                int iRound = ((int) ((((((i16 + i16) + this.mSelectorElementHeight) - this.mNormalTextTop) - this.mNormalTextBottom) / 2.0f) + (this.mPickerOffset / 2) + (this.mDiffusion * (i20 - Math.round((this.mSelectorIndices.length / 2.0f) - POINT_ZERO_ONE))))) + this.mDrawItemOffsetY;
                this.mUnitTextPaint.setTextSize(this.mNormalTextSize);
                Paint.FontMetrics fontMetrics = this.mUnitTextPaint.getFontMetrics();
                int i21 = this.mSelectorElementHeight;
                float f14 = (int) ((((i21 - fontMetrics.top) - fontMetrics.bottom) / 2.0f) + (this.mPickerOffset / 2) + i21);
                int iSave = canvas.save();
                canvas.clipOutRect(0.0f, ((getHeight() / 2.0f) - this.mBackgroundRadius) - this.mDiffusion, getWidth(), (getHeight() / 2.0f) + this.mBackgroundRadius + this.mDiffusion);
                float f15 = iRound;
                canvas.drawText(str != null ? str : "", f10, f15, this.mSelectorWheelPaint);
                canvas.restoreToCount(iSave);
                int iSave2 = canvas.save();
                canvas.clipRect(0.0f, ((getHeight() / 2.0f) - this.mBackgroundRadius) - this.mDiffusion, getWidth(), (getHeight() / 2.0f) + this.mBackgroundRadius + this.mDiffusion);
                this.mSelectorWheelPaint.setColor(iArgb2);
                this.mSelectorWheelPaint.setTextSize(this.mFocusTextSize);
                if (str == null) {
                    str = "";
                }
                canvas.drawText(str, f10, f15, this.mSelectorWheelPaint);
                canvas.restoreToCount(iSave2);
                f13 = f14;
            } else {
                float f16 = fGradualChangeTextSize / this.mFocusTextSize;
                for (float f17 = -0.5f; f17 < 1.0f; f17 += 1.0f) {
                    float f18 = this.mIgnoreBarWidth;
                    float f19 = (this.mIgnoreBarSpacing + f18) * f17 * f16;
                    float f20 = this.mIgnoreBarHeight * f16;
                    float f21 = f19 + f10;
                    float f22 = (f18 * f16) / 2.0f;
                    float f23 = i16;
                    int i22 = this.mSelectorElementHeight;
                    float f24 = f20 / 2.0f;
                    canvas.drawRect(f21 - f22, (((i22 / 2.0f) + f23) - f24) + 33.75f, f21 + f22, f23 + (i22 / 2.0f) + f24 + 33.75f, this.mSelectorWheelPaint);
                }
            }
            i16 += this.mSelectorElementHeight;
            i17 = i20 + 1;
            f12 = f10;
            z10 = true;
            z11 = false;
        }
        if (this.mUnitText != null) {
            if (isLayoutRtl()) {
                f12 = (f12 + this.mNumberPickerPaddingRight) - this.mNumberPickerPaddingLeft;
            }
            float measuredWidth = f12 + (this.mSelectedValueWidth / 2) + this.mUnitMargin;
            if (isLayoutRtl()) {
                measuredWidth = (getMeasuredWidth() - measuredWidth) - this.mUnitTextPaint.measureText(this.mUnitText);
            }
            this.mUnitTextPaint.setTextSize(this.mUnitTextSize);
            canvas.drawText(this.mUnitText, measuredWidth, f13 - this.mUnitMarginBottom, this.mUnitTextPaint);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || motionEvent.getActionMasked() != 0) {
            return false;
        }
        removeAllCallbacks();
        float y10 = motionEvent.getY();
        this.mLastDownEventY = y10;
        this.mLastDownOrMoveEventY = y10;
        this.mLastDownEventTime = motionEvent.getEventTime();
        this.mPerformClickOnTap = false;
        float f10 = this.mLastDownEventY;
        if (f10 < this.mTopSelectionDividerTop) {
            if (this.mScrollState == 0) {
                this.mPressedStateHelper.buttonPressDelayed(2);
            }
        } else if (f10 > this.mBottomSelectionDividerBottom && this.mScrollState == 0) {
            this.mPressedStateHelper.buttonPressDelayed(1);
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        if (!this.mFlingScroller.isFinished()) {
            this.mFlingScroller.abortAnimation();
            this.mAdjustScroller.forceFinished(true);
            onScrollStateChange(0);
        } else if (this.mAdjustScroller.isFinished()) {
            float f11 = this.mLastDownEventY;
            if (f11 < this.mTopSelectionDividerTop) {
                postChangeCurrentByOneFromLongPress(false, ViewConfiguration.getLongPressTimeout());
            } else if (f11 > this.mBottomSelectionDividerBottom) {
                postChangeCurrentByOneFromLongPress(true, ViewConfiguration.getLongPressTimeout());
            } else {
                this.mPerformClickOnTap = true;
            }
        } else {
            this.mFlingScroller.abortAnimation();
            this.mAdjustScroller.forceFinished(true);
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (z10) {
            initializeSelectorWheel();
            initializeFadingEdges();
        }
        initColorGradientRes();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMakeMeasureSpec = makeMeasureSpec(i10, this.mMaxWidth);
        super.onMeasure(iMakeMeasureSpec, makeMeasureSpec(i11, this.mMaxHeight));
        if (View.MeasureSpec.getMode(iMakeMeasureSpec) != Integer.MIN_VALUE) {
            this.mTextMargin = (getMeasuredWidth() - this.mSelectedValueWidth) / 2;
        }
        int iResolveSizeAndStateRespectingMinSize = resolveSizeAndStateRespectingMinSize(this.mMinWidth, getMeasuredWidth(), i10) + this.mNumberPickerPaddingRight + this.mNumberPickerPaddingLeft;
        int i12 = this.mMaxViewWidth;
        if (i12 > 0 && iResolveSizeAndStateRespectingMinSize > i12) {
            iResolveSizeAndStateRespectingMinSize = i12;
        }
        setMeasuredDimension(iResolveSizeAndStateRespectingMinSize, resolveSizeAndStateRespectingMinSize(this.mMinHeight, getMeasuredHeight(), i11));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            initOrResetVelocityTracker();
            this.mVelocityTracker.addMovement(motionEvent);
        } else if (actionMasked == 1) {
            removeChangeCurrentByOneFromLongPress();
            this.mPressedStateHelper.cancel();
            int y10 = (int) motionEvent.getY();
            int iAbs = (int) Math.abs(y10 - this.mLastDownEventY);
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
            int yVelocity = (int) this.mVelocityTracker.getYVelocity();
            if (Math.abs(yVelocity) > this.mMinimumFlingVelocity) {
                fling((int) (yVelocity * getDampRatio()));
                onScrollStateChange(2);
            } else {
                long eventTime = motionEvent.getEventTime() - this.mLastDownEventTime;
                if (iAbs > this.mTouchSlop || eventTime >= ViewConfiguration.getLongPressTimeout()) {
                    ensureScrollWheelAdjusted();
                } else if (this.mPerformClickOnTap) {
                    this.mPerformClickOnTap = false;
                    performClick();
                } else {
                    int i10 = ((y10 / this.mSelectorElementHeight) - this.mSelectorMiddleItemIndex) + 1;
                    if (i10 > 0) {
                        changeValueByOne(true);
                        this.mPressedStateHelper.buttonTapped(1);
                    } else if (i10 < 0) {
                        changeValueByOne(false);
                        this.mPressedStateHelper.buttonTapped(2);
                    }
                    ensureScrollWheelAdjusted();
                }
                onScrollStateChange(0);
            }
            recycleVelocityTracker();
        } else if (actionMasked == 2) {
            initVelocityTrackerIfNotExists();
            this.mVelocityTracker.addMovement(motionEvent);
            float y11 = motionEvent.getY();
            if (this.mScrollState == 1) {
                int i11 = (int) (y11 - this.mLastDownOrMoveEventY);
                this.mDeltaMoveY = i11;
                scrollBy(0, i11);
                invalidate();
            } else if (((int) Math.abs(y11 - this.mLastDownEventY)) > this.mTouchSlop) {
                removeAllCallbacks();
                onScrollStateChange(1);
            }
            this.mLastDownOrMoveEventY = y11;
        } else if (actionMasked == 3) {
            ensureScrollWheelAdjusted();
            recycleVelocityTracker();
        }
        return true;
    }

    public void refresh() {
        String resourceTypeName = getResources().getResourceTypeName(this.mRefreshStyle);
        TypedArray typedArrayObtainStyledAttributes = null;
        if (TextUtils.equals(resourceTypeName, "attr")) {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUINumberPicker, this.mRefreshStyle, 0);
        } else if (TextUtils.equals(resourceTypeName, "style")) {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUINumberPicker, 0, this.mRefreshStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            this.mNormalTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUINumberPicker_couiNormalTextColor, -1);
            this.mFocusTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUINumberPicker_couiFocusTextColor, -1);
            this.mBackgroundColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUINumberPicker_couiPickerBackgroundColor, -1);
            setSelectorTextColor(this.mNormalTextColor, this.mFocusTextColor);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public void scrollBy(int i10, int i11) {
        int i12;
        int[] iArr = this.mSelectorIndices;
        int i13 = this.mCurrentScrollOffset;
        boolean z10 = this.mWrapSelectorWheel;
        if (!z10 && i11 > 0 && iArr[this.mSelectorMiddleItemIndex] <= this.mMinValue && i13 + i11 >= 0) {
            this.mCurrentScrollOffset = 0;
            return;
        }
        if (!z10 && i11 < 0 && iArr[this.mSelectorMiddleItemIndex] >= this.mMaxValue && i13 + i11 <= 0) {
            this.mCurrentScrollOffset = 0;
            return;
        }
        if (i11 > 65535) {
            this.mDebugY = i11;
            return;
        }
        this.mCurrentScrollOffset = i11 + i13;
        while (true) {
            int i14 = this.mCurrentScrollOffset;
            float f10 = i14;
            int i15 = this.mSelectorElementHeight;
            float f11 = (i15 * 0.95f) + (this.mPickerOffset / 2.0f);
            float f12 = this.mDiffusion;
            if (f10 <= f11 + f12) {
                break;
            }
            this.mCurrentScrollOffset = (int) (i14 - (i15 + f12));
            decrementSelectorIndices(iArr);
            setValueInternal(iArr[this.mSelectorMiddleItemIndex], true);
            if (!this.mWrapSelectorWheel && iArr[this.mSelectorMiddleItemIndex] < this.mMinValue) {
                this.mCurrentScrollOffset = 0;
            }
        }
        while (true) {
            i12 = this.mCurrentScrollOffset;
            float f13 = i12;
            int i16 = this.mSelectorElementHeight;
            float f14 = ((-i16) * 0.95f) - (this.mPickerOffset / 2.0f);
            float f15 = this.mDiffusion;
            if (f13 >= f14 - f15) {
                break;
            }
            this.mCurrentScrollOffset = (int) (i12 + i16 + f15);
            incrementSelectorIndices(iArr);
            setValueInternal(iArr[this.mSelectorMiddleItemIndex], true);
            if (!this.mWrapSelectorWheel && iArr[this.mSelectorMiddleItemIndex] > this.mMaxValue) {
                this.mCurrentScrollOffset = 0;
            }
        }
        if (i13 != i12) {
            onScrollChanged(0, i12, 0, i13);
        }
    }

    public void scrollForceFinished() {
        if (!this.mFlingScroller.isFinished()) {
            moveToFinalScrollerPosition(this.mFlingScroller);
        }
        if (this.mAdjustScroller.isFinished()) {
            return;
        }
        moveToFinalScrollerPosition(this.mAdjustScroller);
    }

    public void setAlignPosition(int i10) {
        this.mAlignPosition = i10;
    }

    public void setBackgroundRadius(int i10) {
        this.mBackgroundRadius = i10;
        invalidate();
    }

    public void setDiffusion(int i10) {
        this.mDiffusion = i10;
        invalidate();
    }

    public void setDisplayedValues(String[] strArr) {
        if (this.mDisplayedValues == strArr) {
            return;
        }
        this.mDisplayedValues = strArr;
        initializeSelectorWheelIndices();
    }

    public void setDrawItemVerticalOffset(int i10) {
        this.mDrawItemOffsetY = i10;
        invalidate();
    }

    public void setEnableAdaptiveVibrator(boolean z10) {
        this.mEnableAdaptiveVibrator = z10;
    }

    public void setFocusTextSize(int i10) {
        this.mFocusTextSize = i10;
        invalidate();
    }

    public void setFormatter(Formatter formatter) {
        if (formatter == this.mFormatter) {
            return;
        }
        this.mFormatter = formatter;
        initializeSelectorWheelIndices();
    }

    public void setGradientColor(int i10, int i11) {
        this.mAlphaStart = Color.alpha(i10);
        this.mAlphaEnd = Color.alpha(i11);
        this.mRedStart = Color.red(i10);
        this.mRedEnd = Color.red(i11);
        this.mGreenStart = Color.green(i10);
        this.mGreenEnd = Color.green(i11);
        this.mBlueStart = Color.blue(i10);
        this.mBlueEnd = Color.blue(i11);
    }

    public void setHasBackground(boolean z10) {
        this.mHasBackground = z10;
    }

    public void setIgnorable(boolean z10) {
        if (this.mIgnorable == z10) {
            return;
        }
        this.mIgnorable = z10;
        initializeSelectorWheelIndices();
        invalidate();
    }

    public void setMaxValue(int i10) {
        if (this.mMaxValue == i10) {
            return;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("maxValue must be >= 0");
        }
        this.mMaxValue = i10;
        if (i10 < this.mValue) {
            this.mValue = i10;
        }
        initializeSelectorWheelIndices();
        invalidate();
    }

    public void setMinValue(int i10) {
        if (this.mMinValue == i10) {
            return;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("minValue must be >= 0");
        }
        this.mMinValue = i10;
        if (i10 > this.mValue) {
            this.mValue = i10;
        }
        initializeSelectorWheelIndices();
        invalidate();
    }

    public void setNormalTextColor(int i10) {
        if (this.mNormalTextColor != i10) {
            this.mNormalTextColor = i10;
            setSelectorTextColor(i10, this.mFocusTextColor);
        }
    }

    public void setNormalTextSize(int i10) {
        this.mNormalTextSize = i10;
        invalidate();
    }

    public void setNumberPickerPaddingLeft(int i10) {
        this.mNumberPickerPaddingLeft = i10;
        requestLayout();
    }

    public void setNumberPickerPaddingRight(int i10) {
        this.mNumberPickerPaddingRight = i10;
        requestLayout();
    }

    public void setOnLongPressUpdateInterval(long j10) {
        this.mLongPressUpdateInterval = j10;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mOnScrollListener = onScrollListener;
    }

    public void setOnScrollingStopListener(OnScrollingStopListener onScrollingStopListener) {
        this.mOnScrollingStopListener = onScrollingStopListener;
    }

    public void setOnValueChangedListener(OnValueChangeListener onValueChangeListener) {
        this.mOnValueChangeListener = onValueChangeListener;
    }

    public void setPickerFocusColor(int i10) {
        this.mAlphaEnd = Color.alpha(i10);
        this.mRedEnd = Color.red(i10);
        this.mGreenEnd = Color.green(i10);
        this.mBlueEnd = Color.green(i10);
    }

    public void setPickerNormalColor(int i10) {
        this.mAlphaStart = Color.alpha(i10);
        this.mRedStart = Color.red(i10);
        this.mGreenStart = Color.green(i10);
        this.mBlueStart = Color.green(i10);
    }

    public void setPickerOffset(int i10) {
        this.mPickerOffset = i10;
        invalidate();
    }

    public void setPickerRowNumber(int i10) {
        if (i10 <= 0 || i10 > 2147483645) {
            COUILog.e(TAG, "Illegal picker row number: " + i10);
            return;
        }
        int i11 = i10 + 2;
        this.mSelectorItemCount = i11;
        this.mSelectorMiddleItemIndex = i11 / 2;
        this.mSelectorIndices = new int[i11];
    }

    public void setSelectedValueWidth(int i10) {
        this.mSelectedValueWidth = i10;
    }

    public void setSelectorTextColor(int i10, int i11) {
        setGradientColor(i10, i11);
        invalidate();
    }

    public void setTouchEffectInterval(int i10) {
        this.mTouchEffectInterval = i10;
    }

    public void setTwoDigitFormatter() {
        if (this.mTwoDigitFormatter == null) {
            this.mTwoDigitFormatter = new TwoDigitFormatter();
        }
        this.mFormatter = this.mTwoDigitFormatter;
    }

    public void setUnitText(String str) {
        this.mUnitText = str;
    }

    public void setValue(int i10) {
        setValueInternal(i10, false);
    }

    public void setVerticalFadingEdgeEnable(boolean z10) {
        this.mVerticalFadingEdgeEnable = z10;
        requestLayout();
    }

    public void setVibrateIntensity(float f10) {
        this.mVibrateIntensity = f10;
    }

    public void setVibrateLevel(int i10) {
        this.mVibrateLevel = i10;
    }

    public void setWrapSelectorWheel(boolean z10) {
        this.mWrapSelectorWheelPreferred = z10;
        updateWrapSelectorWheel();
    }

    public COUINumberPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.couiNumberPickerStyle);
    }

    private int getWrappedSelectorIndex(int i10, int i11) {
        int i12 = this.mMaxValue;
        int i13 = this.mMinValue;
        if (i12 - i13 <= 0) {
            return -1;
        }
        if (i10 == Integer.MIN_VALUE) {
            i10 = i13 - 1;
        }
        int iFloorMod = COUIMathUtils.floorMod((i10 - i13) + i11, (i12 - i13) + 1 + (this.mIgnorable ? 1 : 0));
        int i14 = this.mMaxValue;
        int i15 = this.mMinValue;
        if (iFloorMod < (i14 - i15) + 1) {
            return i15 + iFloorMod;
        }
        return Integer.MIN_VALUE;
    }

    public COUINumberPicker(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, COUIContextUtil.isCOUIDarkTheme(context) ? R$style.COUINumberPicker_Dark : R$style.COUINumberPicker);
    }

    public COUINumberPicker(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mFlingFriction = ViewConfiguration.getScrollFriction();
        this.MAX_SCROLL_OFFSET = 65535;
        this.mSelectorIndexToStringCache = new SparseArray<>();
        this.mWrapSelectorWheelPreferred = true;
        this.mLongPressUpdateInterval = DEFAULT_LONG_PRESS_UPDATE_INTERVAL;
        this.mScrollState = 0;
        this.mLastHandledDownDpadKeyCode = -1;
        this.mDrawItemOffsetY = 0;
        this.mVerticalFadingEdgeEnable = false;
        this.mHasBackground = false;
        this.mEnableAdaptiveVibrator = true;
        this.mHasMotorVibrator = true;
        this.mLinearMotorVibrator = null;
        this.mStartCalculateTime = -1L;
        this.mVibrateIntensity = 1.0f;
        this.mPreviousTime = 0;
        this.mScrollerVelocity = 0;
        COUIDarkModeUtil.setForceDarkAllow(this, false);
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        COUISoundLoadUtil cOUISoundLoadUtil = COUISoundLoadUtil.getInstance();
        this.mSoundUtil = cOUISoundLoadUtil;
        this.mClickSoundId = cOUISoundLoadUtil.loadSoundFile(context, R$raw.coui_numberpicker_click);
        if (attributeSet != null) {
            this.mRefreshStyle = attributeSet.getStyleAttribute();
        }
        if (this.mRefreshStyle == 0) {
            this.mRefreshStyle = i10;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUINumberPicker, i10, i11);
        int integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUINumberPicker_couiPickerRowNumber, 5) + 2;
        this.mSelectorItemCount = integer;
        this.mSelectorMiddleItemIndex = integer / 2;
        this.mSelectorIndices = new int[integer];
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_internalMinHeight, -1);
        this.mMinHeight = dimensionPixelSize;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_internalMaxHeight, -1);
        this.mMaxHeight = dimensionPixelSize2;
        if (dimensionPixelSize != -1 && dimensionPixelSize2 != -1 && dimensionPixelSize > dimensionPixelSize2) {
            throw new IllegalArgumentException("minHeight > maxHeight");
        }
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_internalMinWidth, -1);
        this.mMinWidth = dimensionPixelSize3;
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_internalMaxWidth, -1);
        this.mMaxWidth = dimensionPixelSize4;
        if (dimensionPixelSize3 != -1 && dimensionPixelSize4 != -1 && dimensionPixelSize3 > dimensionPixelSize4) {
            throw new IllegalArgumentException("minWidth > maxWidth");
        }
        this.mAlignPosition = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUINumberPicker_couiPickerAlignPosition, -1);
        this.mFocusTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_focusTextSize, -1);
        this.mNormalTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_startTextSize, -1);
        this.mVisualWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_couiPickerVisualWidth, -1);
        this.mNumberPickerPaddingLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_couiNOPickerPaddingLeft, 0);
        this.mNumberPickerPaddingRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUINumberPicker_couiNOPickerPaddingRight, 0);
        this.mNormalTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUINumberPicker_couiNormalTextColor, -1);
        this.mFocusTextColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUINumberPicker_couiFocusTextColor, -1);
        this.mBackgroundColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUINumberPicker_couiPickerBackgroundColor, -1);
        this.mTouchEffectInterval = typedArrayObtainStyledAttributes.getInt(R$styleable.COUINumberPicker_couiPickerTouchEffectInterval, 100);
        setGradientColor(this.mNormalTextColor, this.mFocusTextColor);
        this.mEnableAdaptiveVibrator = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUINumberPicker_couiPickerAdaptiveVibrator, true);
        this.mVibrateLevel = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUINumberPicker_couiVibrateLevel, 0);
        this.mHasMotorVibrator = VibrateUtils.isLinearMotorVersion(context);
        this.mVerticalFadingEdgeEnable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUINumberPicker_couiPickerVerticalFading, false);
        this.mDiffusion = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUINumberPicker_couiPickerDiffusion, 0);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.COUIPickersCommonAttrs, i10, 0);
        this.mMaxViewWidth = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R$styleable.COUIPickersCommonAttrs_couiPickersMaxWidth, 0);
        typedArrayObtainStyledAttributes2.recycle();
        this.mIgnoreBarWidth = getResources().getDimension(R$dimen.coui_numberpicker_ignore_bar_width);
        this.mIgnoreBarHeight = getResources().getDimension(R$dimen.coui_numberpicker_ignore_bar_height);
        this.mIgnoreBarSpacing = getResources().getDimension(R$dimen.coui_numberpicker_ignore_bar_spacing);
        this.mUnitMinWidth = getResources().getDimensionPixelOffset(R$dimen.coui_number_picker_unit_min_width);
        this.mUnitTextSize = getResources().getDimensionPixelSize(R$dimen.coui_numberpicker_unit_textSize);
        this.mUnitMarginBottom = getResources().getDimensionPixelSize(R$dimen.coui_numberpicker_unit_margin_bottom);
        this.mSelectedValueWidth = getResources().getDimensionPixelOffset(R$dimen.coui_number_picker_text_width);
        this.mUnitMargin = getResources().getDimensionPixelOffset(R$dimen.coui_number_picker_text_margin_start);
        this.mBackgroundDividerHeight = Math.max(getResources().getDimensionPixelSize(R$dimen.coui_number_picker_background_divider_height), 1);
        this.mPpi = getContext().getResources().getDisplayMetrics().density * 160.0f;
        this.mPhysicalCoeff = computeDeceleration(0.84f);
        int i12 = ((dimensionPixelSize3 - this.mSelectedValueWidth) - this.mUnitMinWidth) - (this.mUnitMargin * 2);
        this.mInitTextMargin = i12;
        this.mTextMargin = i12;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mMinimumFlingVelocity = MINIMUM_FLING_VELOCITY;
        this.mMaximumFlingVelocity = MAX_VELOCITY;
        Paint paint = new Paint();
        paint.setTextSize(this.mNormalTextSize);
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        paint.setTypeface(Typeface.create(COUIChangeTextUtil.MEDIUM_FONT, 0));
        this.mNormalTextTop = fontMetrics.top;
        this.mNormalTextBottom = fontMetrics.bottom;
        this.mSelectorWheelPaint = paint;
        this.mMeasureTextSelectorPaint = paint;
        paint.setTextSize(getResources().getDimensionPixelSize(R$dimen.coui_numberpicker_textSize_big));
        this.mFlingScroller = new Scroller(getContext(), SLOW_FLING_INTERPOLATOR);
        this.mAdjustScroller = new Scroller(getContext(), FLING_INTERPOLATOR);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mPressedStateHelper = new PressedStateHelper();
        setWillNotDraw(false);
        setVerticalScrollBarEnabled(false);
        Paint paint2 = new Paint();
        this.mUnitTextPaint = paint2;
        paint2.setAntiAlias(true);
        paint2.setTextSize(this.mUnitTextSize);
        paint2.setColor(this.mFocusTextColor);
        paint2.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        this.mBackgroundRadius = context.getResources().getDimensionPixelOffset(R$dimen.coui_selected_background_radius);
        this.mBackgroundLeft = context.getResources().getDimensionPixelOffset(R$dimen.coui_selected_background_horizontal_padding);
        this.mPickerOffset = 0;
        Paint paint3 = new Paint(1);
        this.mBackgroundPaint = paint3;
        paint3.setColor(this.mBackgroundColor);
    }
}
