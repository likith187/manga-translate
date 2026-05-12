.class public Lcom/coui/appcompat/picker/COUINumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;,
        Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;,
        Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;,
        Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;,
        Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;,
        Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;,
        Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;,
        Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_MIDDLE:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field private static final BASE_RATIO:F = 0.6f

.field private static final CALCULATE_MAX_COUNT:I = 0x64

.field private static final DECELERATION_RATE:F

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final FLING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final LOW_VELOCITY_THRESHOLD:I = 0x3e8

.field private static final MAX_VELOCITY:I = 0x1388

.field private static final MID_VELOCITY_THRESHOLD:I = 0x7d0

.field private static final MILLISECOND_VELOCITY_UNIT:I = 0x3e8

.field private static final MINIMUM_FLING_VELOCITY:I = 0x2ee

.field private static final MIN_BACKGROUND_DIVIDER_HEIGHT:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x0

.field private static final MSG_PLAY_VIBRATE:I = 0x2

.field private static final MSG_TALKBACK_VALUE_CHANGE:I = 0x1

.field private static final NEXT_VALUE_ERROR:F = 0.05f

.field private static final ONE_SECOND_MILLIS:I = 0x3e8

.field private static final PLAY_VIBRATE_DELAY_DURATION:I = 0x28

.field private static final POINT_ZERO_ONE:F = 0.01f

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x12c

.field public static final SELECTOR_INDEX_IGNORE:I = -0x80000000

.field private static final SELECTOR_ITEM_DRAW_OUTSIDE_CACHE_NUMBER:I = 0x1

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_WHEEL_ITEM_COUNT_DEFAULT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SLOW_FLING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final STACK_DEPTH:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "COUINumberPicker"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final VALUE_SIXTY:F = 60.0f

.field private static final VELOCITY_SPEED_UP_RATIO:F = 1.8f

.field public static final VIBRATE_LEVEL_CRISP:I = 0x0

.field public static final VIBRATE_LEVEL_SOFT:I = 0x1


# instance fields
.field private final MAX_SCROLL_OFFSET:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityNodeProvider:Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAlignPosition:I

.field private mAlphaEnd:I

.field private mAlphaStart:I

.field private mBackgroundColor:I

.field private mBackgroundDividerHeight:I

.field private mBackgroundLeft:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRadius:I

.field private mBlueEnd:I

.field private mBlueStart:I

.field private mBottomSelectionDividerBottom:I

.field private mCalculateCount:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mClickSoundId:I

.field private mCurrentLanguageTooLong:Z

.field private mCurrentScrollOffset:I

.field private mDebugY:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDeltaMoveY:I

.field private mDiffusion:F

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDrawItemOffsetY:I

.field private mEnableAdaptiveVibrator:Z

.field private final mFlingFriction:F

.field private final mFlingScroller:Landroid/widget/Scroller;

.field mFocusTextColor:I

.field private mFocusTextSize:I

.field private mFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

.field private mGradientPositionBottom:I

.field private mGradientPositionTop:I

.field private mGreenEnd:I

.field private mGreenStart:I

.field private mHandler:Landroid/os/Handler;

.field private mHasBackground:Z

.field private mHasMotorVibrator:Z

.field private mIgnorable:Z

.field private mIgnoreBarHeight:F

.field private mIgnoreBarSpacing:F

.field private mIgnoreBarWidth:F

.field private mIncrementVirtualButtonPressed:Z

.field private mInitTextMargin:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLinearMotorVibrator:Ljava/lang/Object;

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxViewWidth:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMeasureTextSelectorPaint:Landroid/graphics/Paint;

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mNormalTextBottom:F

.field mNormalTextColor:I

.field private mNormalTextSize:I

.field private mNormalTextTop:F

.field private mNumberPickerPaddingLeft:I

.field private mNumberPickerPaddingRight:I

.field private mOnScrollListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;

.field private mOnScrollingStopListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

.field private mOnValueChangeListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPhysicalCoeff:F

.field private mPickerOffset:I

.field private final mPpi:F

.field private final mPressedStateHelper:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mPreviousTime:I

.field private mRedEnd:I

.field private mRedStart:I

.field mRefreshStyle:I

.field private mScrollState:I

.field private mScrollerVelocity:I

.field private mSelectedValueWidth:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorItemCount:I

.field private mSelectorMiddleItemIndex:I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSoundUtil:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

.field private mStartCalculateTime:J

.field private mTalkbackSuffix:Ljava/lang/String;

.field private mTextMargin:I

.field private mTopSelectionDividerTop:I

.field private mTouchEffectInterval:I

.field private mTouchEffectThread:Lcom/coui/appcompat/picker/NumberPickerHandlerThread;

.field private mTouchSlop:I

.field private mTwoDigitFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

.field private mUnitMargin:I

.field private mUnitMarginBottom:I

.field private mUnitMinWidth:I

.field private mUnitText:Ljava/lang/String;

.field private final mUnitTextPaint:Landroid/graphics/Paint;

.field private mUnitTextSize:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityY:I

.field private mVerticalFadingEdgeEnable:Z

.field private mVibrateIntensity:F

.field private mVibrateLevel:I

.field private mVisualWidth:I

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/picker/COUINumberPicker;->FLING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6b851f    # 0.23f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/picker/COUINumberPicker;->SLOW_FLING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/coui/appcompat/picker/COUINumberPicker;->DECELERATION_RATE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/picker/R$attr;->couiNumberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/picker/R$style;->COUINumberPicker_Dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/picker/R$style;->COUINumberPicker:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingFriction:F

    const v0, 0xffff

    .line 6
    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->MAX_SCROLL_OFFSET:I

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheelPreferred:Z

    const-wide/16 v1, 0x12c

    .line 9
    iput-wide v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLongPressUpdateInterval:J

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollState:I

    const/4 v2, -0x1

    .line 11
    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 12
    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDrawItemOffsetY:I

    .line 13
    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVerticalFadingEdgeEnable:Z

    .line 14
    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHasBackground:Z

    .line 15
    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mEnableAdaptiveVibrator:Z

    .line 16
    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHasMotorVibrator:Z

    const/4 v3, 0x0

    .line 17
    iput-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLinearMotorVibrator:Ljava/lang/Object;

    const-wide/16 v3, -0x1

    .line 18
    iput-wide v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mStartCalculateTime:J

    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVibrateIntensity:F

    .line 20
    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousTime:I

    .line 21
    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollerVelocity:I

    .line 22
    invoke-static {p0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    .line 24
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 25
    invoke-static {}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->getInstance()Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSoundUtil:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    .line 26
    sget v4, Lcom/support/picker/R$raw;->coui_numberpicker_click:I

    invoke-virtual {v3, p1, v4}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->loadSoundFile(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mClickSoundId:I

    if-eqz p2, :cond_0

    .line 27
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRefreshStyle:I

    .line 28
    :cond_0
    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRefreshStyle:I

    if-nez v3, :cond_1

    .line 29
    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRefreshStyle:I

    .line 30
    :cond_1
    sget-object v3, Lcom/support/picker/R$styleable;->COUINumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 31
    sget v3, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerRowNumber:I

    const/4 v4, 0x5

    invoke-virtual {p4, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 32
    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorItemCount:I

    .line 33
    div-int/lit8 v4, v3, 0x2

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    .line 34
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    .line 35
    sget v3, Lcom/support/picker/R$styleable;->COUINumberPicker_internalMinHeight:I

    invoke-virtual {p4, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinHeight:I

    .line 36
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_internalMaxHeight:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxHeight:I

    if-eq v3, v2, :cond_3

    if-eq v4, v2, :cond_3

    if-gt v3, v4, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_3
    :goto_0
    sget v3, Lcom/support/picker/R$styleable;->COUINumberPicker_internalMinWidth:I

    invoke-virtual {p4, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinWidth:I

    .line 39
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_internalMaxWidth:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxWidth:I

    if-eq v3, v2, :cond_5

    if-eq v4, v2, :cond_5

    if-gt v3, v4, :cond_4

    goto :goto_1

    .line 40
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_5
    :goto_1
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerAlignPosition:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlignPosition:I

    .line 42
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_focusTextSize:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextSize:I

    .line 43
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_startTextSize:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    .line 44
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerVisualWidth:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVisualWidth:I

    .line 45
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_couiNOPickerPaddingLeft:I

    invoke-virtual {p4, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    .line 46
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_couiNOPickerPaddingRight:I

    invoke-virtual {p4, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingRight:I

    .line 47
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_couiNormalTextColor:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextColor:I

    .line 48
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_couiFocusTextColor:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextColor:I

    .line 49
    sget v4, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerBackgroundColor:I

    invoke-virtual {p4, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundColor:I

    .line 50
    sget v2, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerTouchEffectInterval:I

    const/16 v4, 0x64

    invoke-virtual {p4, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchEffectInterval:I

    .line 51
    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextColor:I

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextColor:I

    invoke-virtual {p0, v2, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setGradientColor(II)V

    .line 52
    sget v2, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerAdaptiveVibrator:I

    invoke-virtual {p4, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mEnableAdaptiveVibrator:Z

    .line 53
    sget v2, Lcom/support/picker/R$styleable;->COUINumberPicker_couiVibrateLevel:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVibrateLevel:I

    .line 54
    invoke-static {p1}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->isLinearMotorVersion(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHasMotorVibrator:Z

    .line 55
    sget v2, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerVerticalFading:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVerticalFadingEdgeEnable:Z

    .line 56
    sget v2, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerDiffusion:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    .line 57
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    sget-object p4, Lcom/support/picker/R$styleable;->COUIPickersCommonAttrs:[I

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 59
    sget p3, Lcom/support/picker/R$styleable;->COUIPickersCommonAttrs_couiPickersMaxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxViewWidth:I

    .line 60
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_numberpicker_ignore_bar_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnoreBarWidth:F

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_numberpicker_ignore_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnoreBarHeight:F

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_numberpicker_ignore_bar_spacing:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnoreBarSpacing:F

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_number_picker_unit_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMinWidth:I

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_numberpicker_unit_textSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextSize:I

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_numberpicker_unit_margin_bottom:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMarginBottom:I

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_number_picker_text_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectedValueWidth:I

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_number_picker_text_margin_start:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMargin:I

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_number_picker_background_divider_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundDividerHeight:I

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x43200000    # 160.0f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPpi:F

    const p2, 0x3f570a3d    # 0.84f

    .line 71
    invoke-direct {p0, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->computeDeceleration(F)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPhysicalCoeff:F

    .line 72
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectedValueWidth:I

    sub-int/2addr v3, p2

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMinWidth:I

    sub-int/2addr v3, p2

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMargin:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mInitTextMargin:I

    .line 73
    iput v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTextMargin:I

    .line 74
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 75
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchSlop:I

    const/16 p2, 0x2ee

    .line 76
    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinimumFlingVelocity:I

    const/16 p2, 0x1388

    .line 77
    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaximumFlingVelocity:I

    .line 78
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 79
    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 82
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    .line 83
    const-string p4, "sans-serif-medium"

    invoke-static {p4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    iget p4, p3, Landroid/graphics/Paint$FontMetrics;->top:F

    iput p4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextTop:F

    .line 85
    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextBottom:F

    .line 86
    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 87
    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMeasureTextSelectorPaint:Landroid/graphics/Paint;

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/picker/R$dimen;->coui_numberpicker_textSize_big:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object p4, Lcom/coui/appcompat/picker/COUINumberPicker;->SLOW_FLING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, p3, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 90
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object p4, Lcom/coui/appcompat/picker/COUINumberPicker;->FLING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, p3, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_6

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 93
    :cond_6
    new-instance p2, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    .line 94
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 95
    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 96
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextPaint:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextSize:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    iget p3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/picker/R$dimen;->coui_selected_background_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundRadius:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/picker/R$dimen;->coui_selected_background_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundLeft:I

    .line 103
    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPickerOffset:I

    .line 104
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 105
    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/picker/COUINumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/picker/COUINumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/picker/COUINumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/picker/COUINumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/picker/COUINumberPicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/picker/COUINumberPicker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTalkbackSuffix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/picker/COUINumberPicker;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/graphics/Rect;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->isVisibleToUserRef(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/picker/COUINumberPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->playSoundEffect()V

    return-void
.end method

.method static synthetic access$180(Lcom/coui/appcompat/picker/COUINumberPicker;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/picker/COUINumberPicker;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/picker/COUINumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollState:I

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/picker/COUINumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/picker/COUINumberPicker;)Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mOnScrollingStopListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/picker/COUINumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/picker/COUINumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$380(Lcom/coui/appcompat/picker/COUINumberPicker;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/picker/COUINumberPicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/picker/COUINumberPicker;)J
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/picker/COUINumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/picker/COUINumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/picker/COUINumberPicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    neg-int p1, p1

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    sub-float/2addr p1, v0

    float-to-int v5, p1

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    add-float/2addr p1, v0

    float-to-int v11, p1

    const/16 v12, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 1

    const v0, 0x43c10b3d

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPpi:F

    mul-float/2addr p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private decrementSelectorIndices([I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrappedSelectorIndex(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    aget-object p0, v2, p0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    neg-int v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityY:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getSplineFlingDistance(F)D

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityY:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityY:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getSplineFlingDuration(F)I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    add-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    int-to-float v1, v0

    if-lez v0, :cond_0

    neg-int v0, v2

    int-to-float v0, v0

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v2

    add-float/2addr v0, v4

    :goto_0
    add-float/2addr v1, v0

    float-to-int v0, v1

    :cond_1
    move v5, v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 9

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getSplineFlingDistance(F)D

    move-result-wide v1

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v4, v3

    iget v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    add-float/2addr v4, v5

    float-to-double v6, v4

    cmpl-double v4, v1, v6

    if-lez v4, :cond_0

    int-to-float v4, v3

    add-float/2addr v4, v5

    float-to-double v6, v4

    rem-double v6, v1, v6

    sub-double/2addr v1, v6

    goto :goto_0

    :cond_0
    int-to-float v4, v3

    add-float/2addr v4, v5

    float-to-double v6, v4

    rem-double/2addr v1, v6

    :goto_0
    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDeltaMoveY:I

    int-to-double v6, v4

    add-double/2addr v1, v6

    if-gez p1, :cond_1

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    int-to-float v3, v3

    add-float/2addr v3, v5

    rem-float/2addr p1, v3

    float-to-double v3, p1

    add-double/2addr v1, v3

    neg-double v1, v1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v4

    int-to-float p1, p1

    int-to-float v3, v3

    add-float/2addr v3, v5

    rem-float/2addr p1, v3

    float-to-double v3, p1

    sub-double/2addr v1, v3

    :goto_1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getSplineFlingDuration(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    float-to-int v8, p1

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    double-to-int v7, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 0

    add-int/lit8 p2, p2, 0x4

    array-length p0, p1

    if-lt p2, p0, :cond_0

    const-string p0, "<bottom of call stack>"

    return-object p0

    :cond_0
    aget-object p0, p1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCallers(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDampRatio()F
    .locals 1

    const p0, 0x3fcccccd    # 1.6f

    const v0, 0x3fe66666    # 1.8f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getGradientCoeff(I)I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    div-int/2addr p1, p0

    return p1
.end method

.method private getSplineDeceleration(F)D
    .locals 1

    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingFriction:F

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPhysicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getSplineFlingDistance(F)D
    .locals 6

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getSplineDeceleration(F)D

    move-result-wide v0

    sget p1, Lcom/coui/appcompat/picker/COUINumberPicker;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingFriction:F

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPhysicalCoeff:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getSplineDeceleration(F)D

    move-result-wide p0

    sget v0, Lcom/coui/appcompat/picker/COUINumberPicker;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrappedSelectorIndex(II)I

    move-result p0

    return p0
.end method

.method private getWrappedSelectorIndex(II)I
    .locals 4

    .line 2
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    sub-int v2, v0, v1

    if-gtz v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v1, -0x1

    :goto_0
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-boolean v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnorable:Z

    add-int/2addr v0, v3

    sub-int/2addr p1, v1

    add-int/2addr p1, p2

    .line 4
    invoke-static {p1, v0}, Lcom/coui/appcompat/math/COUIMathUtils;->floorMod(II)I

    move-result p1

    .line 5
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, 0x1

    if-ge p1, p2, :cond_2

    add-int/2addr p0, p1

    return p0

    :cond_2
    return v2
.end method

.method private gradualChange(IIF)I
    .locals 0

    sub-int p0, p2, p1

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    sub-int/2addr p2, p0

    return p2
.end method

.method private gradualChangeTextSize(IIIII)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v5, v6

    iget-object v7, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    mul-int/2addr v7, v6

    int-to-double v8, v4

    int-to-double v10, v5

    int-to-double v12, v6

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    sub-double v12, v10, v12

    cmpl-double v12, v8, v12

    const/high16 v13, 0x40000000    # 2.0f

    if-lez v12, :cond_0

    int-to-double v2, v6

    mul-double/2addr v2, v14

    add-double/2addr v10, v2

    cmpg-double v2, v8, v10

    if-gez v2, :cond_0

    int-to-float v2, v1

    sub-int v1, v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    sub-int v3, v4, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v0, v0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    sub-float/2addr v2, v1

    return v2

    :cond_0
    sub-int v0, v5, v6

    const/high16 v1, 0x3f800000    # 1.0f

    if-gt v4, v0, :cond_1

    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v3, p4

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    int-to-float v1, v4

    mul-float/2addr v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    div-float/2addr v0, v13

    add-float/2addr v2, v0

    return v2

    :cond_1
    move/from16 v0, p3

    move/from16 v3, p4

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_2

    int-to-float v2, v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-int/2addr v7, v4

    int-to-float v1, v7

    mul-float/2addr v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    div-float/2addr v0, v13

    add-float/2addr v2, v0

    return v2

    :cond_2
    int-to-float v0, v3

    return v0
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrappedSelectorIndex(II)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initColorGradientRes()V
    .locals 8

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    int-to-double v1, v0

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mGradientPositionTop:I

    int-to-double v0, v0

    int-to-double v2, v3

    add-double/2addr v2, v6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mGradientPositionBottom:I

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVerticalFadingEdgeEnable:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheelIndices()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPickerOffset:I

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorTextGapHeight:I

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBottomSelectionDividerBottom:I

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    sub-int v3, v2, v3

    iget-boolean v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnorable:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrappedSelectorIndex(II)I

    move-result v3

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    :goto_1
    iget-boolean v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    :cond_1
    aput v3, v0, v2

    invoke-direct {p0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isVisibleToUserRef(Landroid/graphics/Rect;)Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "isVisibleToUser"

    const-class v2, Landroid/graphics/Rect;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUserVisible: error="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUINumberPicker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitText:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMinWidth:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v0, p1

    :cond_4
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mInitTextMargin:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMinWidth:I

    sub-int v1, p1, v1

    add-int/2addr v1, p1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectedValueWidth:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    neg-int p1, p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez p1, :cond_0

    sub-int/2addr p1, v4

    goto :goto_0

    :cond_0
    add-int/2addr p1, v4

    :cond_1
    :goto_0
    add-int/2addr v1, p1

    invoke-virtual {p0, v2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return v2
.end method

.method private notifyChange(II)V
    .locals 1

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mOnValueChangeListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;->onValueChange(Lcom/coui/appcompat/picker/COUINumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollState:I

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mOnScrollListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;->onScrollStateChange(Lcom/coui/appcompat/picker/COUINumberPicker;I)V

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTalkbackSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTalkbackSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mOnScrollingStopListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;->onScrollingStop()V

    :cond_3
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->ensureScrollWheelAdjusted()Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method private performAdaptiveFeedback()Z
    .locals 11

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getLinearMotorVibrator(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLinearMotorVibrator:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHasMotorVibrator:Z

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLinearMotorVibrator:Ljava/lang/Object;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    :goto_1
    move v5, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollerVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_1

    :goto_2
    const/16 v0, 0x7d0

    if-le v5, v0, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLinearMotorVibrator:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/oplus/os/LinearmotorVibrator;

    iget v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaximumFlingVelocity:I

    iget v9, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVibrateLevel:I

    iget v10, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVibrateIntensity:F

    const/16 v7, 0x4b0

    const/16 v8, 0x640

    invoke-static/range {v3 .. v10}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->setLinearMotorVibratorStrength(Lcom/oplus/os/LinearmotorVibrator;IIIIIIF)V

    return v2
.end method

.method private performFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHasMotorVibrator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mEnableAdaptiveVibrator:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->performAdaptiveFeedback()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method

.method private playSoundEffect()V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSoundUtil:Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mClickSoundId:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/soundloadutil/COUISoundLoadUtil;->play(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 10

    iget-wide v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mStartCalculateTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, "COUINumberPicker"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mStartCalculateTime:J

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCalculateCount:I

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mStartCalculateTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCalculateCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCalculateCount:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_2

    iput v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCalculateCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmCurrentScrollOffset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSelectorTextGapHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorTextGapHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSelectorElementHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mSelectorMiddleItemIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mWrapSelectorWheel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mDebugY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDebugY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mMinValue = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mStartCalculateTime:J

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValueInternal current = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    if-ne v0, p1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheelIndices()V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    if-eqz p2, :cond_6

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->notifyChange(II)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->performFeedback()V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    iput v4, p2, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_5
    const-string p1, " mHandler not init yet , To prevent ANR, do not wait when initializing the handler. "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateWrapSelectorWheel()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method


# virtual methods
.method public addTalkbackSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTalkbackSuffix:Ljava/lang/String;

    return-void
.end method

.method public clearNumberPickerPadding()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingRight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public computeScroll()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollerVelocity:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    :cond_1
    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollBy(II)V

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousTime:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eqz v2, :cond_5

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaximumFlingVelocity:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollerVelocity:I

    :cond_5
    iget v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollBy(II)V

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousScrollerY:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPreviousTime:I

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x80

    const/4 v6, -0x1

    const/16 v7, 0x100

    if-eq p1, v2, :cond_4

    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0, v7}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0, v5}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v1, v0, v4, v3}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_5

    if-eq p1, v6, :cond_5

    invoke-virtual {v1, p1, v7}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {v1, v0, v5}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v1, v0, v4, v3}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->removeAllCallbacks()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_5

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    :cond_3
    iget-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastHandledDownDpadKeyCode:I

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->removeAllCallbacks()V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->changeValueByOne(Z)V

    :cond_8
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUINumberPicker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAccessibilityNodeProvider:Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAccessibilityNodeProvider:Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAccessibilityNodeProvider:Lcom/coui/appcompat/picker/COUINumberPicker$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundColor:I

    return p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    return p0
.end method

.method public getNumberPickerPaddingLeft()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    return p0
.end method

.method public getNumberPickerPaddingRight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingRight:I

    return p0
.end method

.method public getSelectorTextPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getTextSize()F
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getTouchEffectInterval()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchEffectInterval:I

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method public isAccessibilityEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIgnorable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnorable:Z

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;

    const-string v1, "touchEffect"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchEffectThread:Lcom/coui/appcompat/picker/NumberPickerHandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchEffectThread:Lcom/coui/appcompat/picker/NumberPickerHandlerThread;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchEffectThread:Lcom/coui/appcompat/picker/NumberPickerHandlerThread;

    invoke-virtual {v1}, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHandler:Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->registerHapticObserver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initOrResetVelocityTracker()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->removeAllCallbacks()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchEffectThread:Lcom/coui/appcompat/picker/NumberPickerHandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/NumberPickerHandlerThread;->quit()Z

    iput-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchEffectThread:Lcom/coui/appcompat/picker/NumberPickerHandlerThread;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->unRegisterHapticObserver()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mHasBackground:Z

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundLeft:I

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundDividerHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundLeft:I

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundDividerHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget-object v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mTextMargin:I

    int-to-float v0, v0

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectedValueWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingRight:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    :cond_1
    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mVisualWidth:I

    const/4 v3, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v2, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_4

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlignPosition:I

    if-eq v2, v9, :cond_3

    if-eq v2, v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mVisualWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v2, v10

    add-int/2addr v0, v2

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_3
    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mVisualWidth:I

    div-int/2addr v0, v10

    goto :goto_0

    :cond_4
    :goto_1
    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    if-eqz v2, :cond_5

    int-to-float v2, v2

    add-float/2addr v0, v2

    :cond_5
    move v11, v0

    iget-object v12, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v0

    const/4 v13, 0x0

    move v15, v1

    move v0, v11

    move v5, v13

    const/16 v16, 0x0

    :goto_2
    array-length v1, v12

    if-ge v5, v1, :cond_c

    aget v4, v12, v5

    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mGradientPositionTop:I

    if-le v15, v0, :cond_6

    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mGradientPositionBottom:I

    if-ge v15, v0, :cond_6

    invoke-direct {v6, v15}, Lcom/coui/appcompat/picker/COUINumberPicker;->getGradientCoeff(I)I

    move-result v0

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlphaStart:I

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlphaEnd:I

    int-to-float v0, v0

    invoke-direct {v6, v1, v2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->gradualChange(IIF)I

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mRedStart:I

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mRedEnd:I

    invoke-direct {v6, v1, v2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->gradualChange(IIF)I

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mGreenStart:I

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mGreenEnd:I

    invoke-direct {v6, v1, v2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->gradualChange(IIF)I

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBlueStart:I

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBlueEnd:I

    invoke-direct {v6, v1, v2, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->gradualChange(IIF)I

    :cond_6
    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlphaStart:I

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mRedStart:I

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mGreenStart:I

    iget v3, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBlueStart:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlphaEnd:I

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mRedEnd:I

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mGreenEnd:I

    iget v14, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBlueEnd:I

    invoke-static {v0, v1, v2, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextSize:I

    move-object/from16 v0, p0

    move/from16 v18, v1

    move v1, v2

    move/from16 v19, v2

    move/from16 v2, v18

    move v10, v3

    move/from16 v3, v19

    move v8, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/picker/COUINumberPicker;->gradualChangeTextSize(IIIII)F

    move-result v0

    iget-object v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v3, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mMeasureTextSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    iput-boolean v9, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentLanguageTooLong:Z

    iget-object v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    iput-boolean v13, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentLanguageTooLong:Z

    iget-object v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move v10, v11

    :goto_3
    const/high16 v2, -0x80000000

    if-eq v8, v2, :cond_b

    add-int v0, v15, v15

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextTop:F

    sub-float/2addr v0, v2

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextBottom:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v3, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mPickerOffset:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    iget-object v4, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v5, v19, v2

    int-to-float v2, v5

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mDrawItemOffsetY:I

    add-int/2addr v0, v2

    iget-object v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextPaint:Landroid/graphics/Paint;

    iget v3, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v4, v3

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v4, v5

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mPickerOffset:I

    const/4 v5, 0x2

    div-int/2addr v2, v5

    int-to-float v2, v2

    add-float/2addr v4, v2

    int-to-float v2, v3

    add-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v8, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundRadius:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    iget v8, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    sub-float/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    iget v5, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundRadius:I

    int-to-float v5, v5

    add-float/2addr v9, v5

    iget v5, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    add-float/2addr v9, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v4, v8, v9}, Landroid/graphics/Canvas;->clipOutRect(FFFF)Z

    const-string v4, ""

    if-eqz v1, :cond_8

    move-object v5, v1

    goto :goto_4

    :cond_8
    move-object v5, v4

    :goto_4
    int-to-float v0, v0

    iget-object v8, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v10, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    iget v9, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundRadius:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    iget v9, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    sub-float/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v8

    iget v8, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundRadius:I

    int-to-float v8, v8

    add-float/2addr v13, v8

    iget v8, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    add-float/2addr v13, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5, v9, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v5, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v9, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextSize:I

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v4

    :goto_5
    iget-object v4, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v10, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move/from16 v16, v2

    :cond_a
    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextSize:I

    int-to-float v1, v1

    div-float v9, v0, v1

    const/high16 v0, -0x41000000    # -0.5f

    move v13, v0

    :goto_6
    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v0, v13, v14

    if-gez v0, :cond_a

    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnoreBarWidth:F

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnoreBarSpacing:F

    add-float/2addr v1, v0

    mul-float/2addr v1, v13

    mul-float/2addr v1, v9

    mul-float/2addr v0, v9

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnoreBarHeight:F

    mul-float/2addr v2, v9

    add-float/2addr v1, v10

    const/high16 v17, 0x40000000    # 2.0f

    div-float v0, v0, v17

    sub-float v3, v1, v0

    int-to-float v4, v15

    iget v5, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v8, v5

    div-float v8, v8, v17

    add-float/2addr v8, v4

    div-float v2, v2, v17

    sub-float/2addr v8, v2

    const/high16 v20, 0x42070000    # 33.75f

    add-float v8, v8, v20

    add-float v21, v1, v0

    int-to-float v0, v5

    div-float v0, v0, v17

    add-float/2addr v4, v0

    add-float/2addr v4, v2

    add-float v4, v4, v20

    iget-object v5, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    move v2, v8

    move/from16 v3, v21

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v13, v14

    const/4 v8, 0x0

    goto :goto_6

    :goto_7
    iget v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    add-int/2addr v15, v0

    add-int/lit8 v5, v19, 0x1

    move v0, v10

    move/from16 v8, v17

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_c
    iget-object v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitText:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingRight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_d
    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectedValueWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget-object v0, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextPaint:Landroid/graphics/Paint;

    iget-object v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float v0, v1, v0

    :cond_e
    iget-object v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextPaint:Landroid/graphics/Paint;

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitText:Ljava/lang/String;

    iget v2, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitMarginBottom:I

    int-to-float v2, v2

    sub-float v2, v16, v2

    iget-object v3, v6, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_f
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->removeAllCallbacks()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownEventY:F

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownEventTime:J

    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPerformClickOnTap:Z

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPerformClickOnTap:Z

    :goto_1
    return v2

    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheel()V

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeFadingEdges()V

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initColorGradientRes()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectedValueWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTextMargin:I

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingRight:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxViewWidth:I

    if-lez v0, :cond_1

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    const/4 v3, 0x2

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->ensureScrollWheelAdjusted()Z

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->recycleVelocityTracker()V

    goto/16 :goto_4

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mScrollState:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->removeAllCallbacks()V

    invoke-direct {p0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDeltaMoveY:I

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->removeChangeCurrentByOneFromLongPress()V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->cancel()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v5, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinimumFlingVelocity:I

    if-le v6, v7, :cond_6

    int-to-float p1, v5

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->getDampRatio()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->fling(I)V

    invoke-direct {p0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    iget-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPerformClickOnTap:Z

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPerformClickOnTap:Z

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    if-lez v0, :cond_8

    invoke-direct {p0, v2}, Lcom/coui/appcompat/picker/COUINumberPicker;->changeValueByOne(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_8
    if-gez v0, :cond_9

    invoke-direct {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->changeValueByOne(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPressedStateHelper:Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->buttonTapped(I)V

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->ensureScrollWheelAdjusted()Z

    :goto_2
    invoke-direct {p0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->onScrollStateChange(I)V

    :goto_3
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->recycleVelocityTracker()V

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initOrResetVelocityTracker()V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_4
    return v2
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRefreshStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/picker/R$styleable;->COUINumberPicker:[I

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRefreshStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/picker/R$styleable;->COUINumberPicker:[I

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRefreshStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/support/picker/R$styleable;->COUINumberPicker_couiNormalTextColor:I

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextColor:I

    sget v0, Lcom/support/picker/R$styleable;->COUINumberPicker_couiFocusTextColor:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextColor:I

    sget v0, Lcom/support/picker/R$styleable;->COUINumberPicker_couiPickerBackgroundColor:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundColor:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextColor:I

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextColor:I

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->setSelectorTextColor(II)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method public scrollBy(II)V
    .locals 9

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    iget-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget v3, p1, v3

    iget v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    if-gt v3, v4, :cond_0

    add-int v3, v0, p2

    if-ltz v3, :cond_0

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_0
    if-nez v1, :cond_1

    if-gez p2, :cond_1

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget v1, p1, v1

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    if-lt v1, v3, :cond_1

    add-int v1, v0, p2

    if-gtz v1, :cond_1

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_1
    const v1, 0xffff

    if-le p2, v1, :cond_2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDebugY:I

    return-void

    :cond_2
    add-int/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    :cond_3
    :goto_0
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    int-to-float v1, p2

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    int-to-float v4, v3

    const v5, 0x3f733333    # 0.95f

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPickerOffset:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    iget v6, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    add-float/2addr v4, v6

    cmpl-float v1, v1, v4

    const/4 v4, 0x1

    if-lez v1, :cond_4

    int-to-float p2, p2

    int-to-float v1, v3

    add-float/2addr v1, v6

    sub-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->decrementSelectorIndices([I)V

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValueInternal(IZ)V

    iget-boolean p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    if-ge p2, v1, :cond_3

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    :cond_4
    :goto_1
    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    int-to-float v1, p2

    iget v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorElementHeight:I

    neg-int v6, v3

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v8, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPickerOffset:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    sub-float/2addr v6, v8

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    int-to-float p2, p2

    int-to-float v1, v3

    add-float/2addr v1, v8

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->incrementSelectorIndices([I)V

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v4}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValueInternal(IZ)V

    iget-boolean p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_4

    iget p2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    aget p2, p1, p2

    iget v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    if-le p2, v1, :cond_4

    iput v2, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_5
    if-eq v0, p2, :cond_6

    invoke-virtual {p0, v2, p2, v2, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    :cond_6
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_1
    return-void
.end method

.method public setAlignPosition(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlignPosition:I

    return-void
.end method

.method public setBackgroundRadius(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBackgroundRadius:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDiffusion(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDiffusion:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDisplayedValues:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setDrawItemVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mDrawItemOffsetY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mEnableAdaptiveVibrator:Z

    return-void
.end method

.method public setFocusTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFormatter(Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setGradientColor(II)V
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlphaStart:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlphaEnd:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRedStart:I

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRedEnd:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mGreenStart:I

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mGreenEnd:I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBlueStart:I

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBlueEnd:I

    return-void
.end method

.method public setHasBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mHasBackground:Z

    return-void
.end method

.method public setIgnorable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnorable:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mIgnorable:Z

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mMinValue:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mValue:I

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNormalTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextColor:I

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFocusTextColor:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setSelectorTextColor(II)V

    :cond_0
    return-void
.end method

.method public setNormalTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNormalTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNumberPickerPaddingLeft(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNumberPickerPaddingRight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mNumberPickerPaddingRight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mOnScrollListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnScrollingStopListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mOnScrollingStopListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mOnValueChangeListener:Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setPickerFocusColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlphaEnd:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRedEnd:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mGreenEnd:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBlueEnd:I

    return-void
.end method

.method public setPickerNormalColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mAlphaStart:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mRedStart:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mGreenStart:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mBlueStart:I

    return-void
.end method

.method public setPickerOffset(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mPickerOffset:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPickerRowNumber(I)V
    .locals 1

    if-lez p1, :cond_1

    const v0, 0x7ffffffd

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorItemCount:I

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorMiddleItemIndex:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectorIndices:[I

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal picker row number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUINumberPicker"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedValueWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mSelectedValueWidth:I

    return-void
.end method

.method public setSelectorTextColor(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setGradientColor(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTouchEffectInterval(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTouchEffectInterval:I

    return-void
.end method

.method public setTwoDigitFormatter()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTwoDigitFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;-><init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTwoDigitFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mTwoDigitFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mFormatter:Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;

    return-void
.end method

.method public setUnitText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mUnitText:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setVerticalFadingEdgeEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVerticalFadingEdgeEnable:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVibrateIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVibrateIntensity:F

    return-void
.end method

.method public setVibrateLevel(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mVibrateLevel:I

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker;->mWrapSelectorWheelPreferred:Z

    invoke-direct {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->updateWrapSelectorWheel()V

    return-void
.end method
