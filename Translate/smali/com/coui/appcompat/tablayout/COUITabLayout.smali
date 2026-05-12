.class public Lcom/coui/appcompat/tablayout/COUITabLayout;
.super Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$TabGravity;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$Mode;,
        Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field protected static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final DEFAULT_MAXIMUM_WIDTH_RATIO:F = 0.7f

.field public static final DEFAULT_MIN_INDICATOR:I = 0x20

.field private static final FIFTY:I = 0x32

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final HUNDRED_FIFTY:I = 0x96

.field public static final INVALID_WIDTH:I = -0x1

.field private static final MEDIUM_FONT:Ljava/lang/String; = "sans-serif-medium"

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field public static final ONE:F = 1.0f

.field private static final POINT_FIVE:F = 0.5f

.field public static final PRESS_RIPPLE_CORNER_RADIUS:I = 0x8

.field private static final REGULAR_FONT:Ljava/lang/String; = "sans-serif"

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAB_POOL:Lc0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/e;"
        }
    .end annotation
.end field

.field private static final THREE_HUNDRED:I = 0x12c

.field public static final ZERO:F


# instance fields
.field private mAdapterChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

.field private mBottomDividerColor:I

.field private mBottomDividerEnabled:Z

.field private mButtonMarginEnd:I

.field private mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVpSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

.field private mDefaultIndicatorRatio:F

.field private mDefaultTabTextSize:F

.field protected mDotHorizontalOffset:I

.field protected mDotVerticalOffsetFromNumberRed:I

.field protected mDotVerticalOffsetFromOnlyRed:I

.field protected mEnableVibrator:Z

.field private mEvaluator:Landroid/animation/ArgbEvaluator;

.field private mIndicatorPadding:I

.field private mIsUpdateindicatorposition:Z

.field private mLastOffset:F

.field private mLongTextViewHeight:I

.field private mMode:I

.field protected mNeedAdjust:Z

.field protected mNormalTextColor:I

.field protected mNormalTypeface:Landroid/graphics/Typeface;

.field private mOriginalRequestedTabMaxWidth:I

.field private mOriginalRequestedTabMinWidth:I

.field private mPageChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroidx/viewpager/widget/a;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field protected mRequestedTabMaxWidth:I

.field private mRequestedTabMinWidth:I

.field private mResizeHeight:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedIndicatorColor:I

.field private mSelectedIndicatorDisableColor:I

.field private mSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

.field private final mSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field protected mSelectedTab:Lcom/coui/appcompat/tablayout/COUITab;

.field protected mSelectedTextColor:I

.field protected mSelectedTypeface:Landroid/graphics/Typeface;

.field private mSetupViewPagerImplicitly:Z

.field private mStyle:I

.field protected mTabAlreadyMeasure:Z

.field protected final mTabBackgroundResId:I

.field private mTabGravity:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mTabMinDivider:I

.field private mTabMinMargin:I

.field protected mTabPaddingBottom:I

.field protected mTabPaddingEnd:I

.field protected mTabPaddingStart:I

.field protected mTabPaddingTop:I

.field protected final mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

.field private mTabTextAppearance:I

.field protected mTabTextColors:Landroid/content/res/ColorStateList;

.field private mTabTextDisabledColor:I

.field private mTabTextSize:F

.field private mTabTextTypeFace:Landroid/graphics/Typeface;

.field private final mTabViewPool:Lc0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/e;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/tablayout/COUITab;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColorBlue:I

.field private mTextColorGreen:I

.field private mTextColorRed:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc0/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lc0/g;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->TAB_POOL:Lc0/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/tablayout/R$attr;->couiTabLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/tablayout/R$style;->COUITabLayoutBaseStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lc0/f;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lc0/f;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabViewPool:Lc0/e;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedPosition:I

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mLastOffset:F

    .line 11
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 12
    iput-boolean v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIsUpdateindicatorposition:Z

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mStyle:I

    if-nez v3, :cond_1

    .line 15
    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mStyle:I

    goto :goto_0

    .line 16
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mStyle:I

    .line 17
    :cond_1
    :goto_0
    const-string v3, "sans-serif-medium"

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTypeface:Landroid/graphics/Typeface;

    .line 18
    const-string v3, "sans-serif"

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 20
    new-instance v3, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-direct {v3, p1, p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;-><init>(Landroid/content/Context;Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    iput-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    .line 21
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 22
    sget-object v4, Lcom/support/tablayout/R$styleable;->COUITabLayout:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 23
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorHeight:I

    .line 24
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 25
    invoke-virtual {v3, p3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 26
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    .line 27
    invoke-virtual {v3, p3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 28
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabBottomDividerColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mBottomDividerColor:I

    .line 29
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabBottomDividerEnabled:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mBottomDividerEnabled:Z

    .line 30
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mBottomDividerColor:I

    invoke-virtual {v3, p3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setBottomDividerColor(I)V

    .line 31
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorBackgroundHeight(I)V

    .line 32
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorBackgroundColor(I)V

    .line 33
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundPaddingLeft:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorBackgroundPaddingLeft(I)V

    .line 34
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorBackgroundPaddingRight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorBackgroundPaddingRight(I)V

    .line 35
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorWidthRatio:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setIndicatorWidthRatio(F)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/tablayout/R$dimen;->coui_tablayout_default_resize_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mResizeHeight:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/tablayout/R$dimen;->tablayout_long_text_view_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mLongTextViewHeight:I

    .line 38
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabMinDivider:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabMinDivider:I

    .line 39
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabMinMargin:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabMinMargin:I

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/tablayout/R$dimen;->coui_tablayout_indicator_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIndicatorPadding:I

    .line 41
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingStart:I

    .line 42
    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    .line 43
    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    .line 44
    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    .line 45
    sget p4, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabPaddingStart:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingStart:I

    .line 46
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabPaddingTop:I

    iget p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    .line 47
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabPaddingEnd:I

    iget p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    .line 48
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabPaddingBottom:I

    iget p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    .line 49
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingStart:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingStart:I

    .line 50
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    .line 51
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    .line 52
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    .line 53
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabTextAppearance:I

    sget p4, Lcom/support/tablayout/R$style;->TextAppearance_Design_COUITab:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextAppearance:I

    .line 54
    sget-object p4, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 55
    :try_start_0
    sget p4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextSize:F

    .line 56
    iput p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    .line 57
    sget p4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 60
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 61
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/support/appcompat/R$attr;->couiColorDisabledNeutral:I

    invoke-static {p3, p4, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextDisabledColor:I

    .line 62
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabSelectedTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 63
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabSelectedTextColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 64
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextDisabledColor:I

    invoke-static {p4, v3, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 65
    :cond_3
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabMinWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMinWidth:I

    .line 66
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabBackground:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabBackgroundResId:I

    .line 67
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabMode:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mMode:I

    .line 68
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabGravity:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabGravity:I

    .line 69
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabEnableVibrator:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mEnableVibrator:Z

    .line 70
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorDisableColor:I

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/tablayout/R$color;->couiTabIndicatorDisableColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 72
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedIndicatorDisableColor:I

    .line 73
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabTextSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 74
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabTextSize:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextSize:F

    .line 75
    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    .line 76
    :cond_4
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMinWidth:I

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mOriginalRequestedTabMinWidth:I

    .line 77
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mOriginalRequestedTabMaxWidth:I

    .line 78
    sget p3, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabButtonMarginEnd:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtonMarginEnd:I

    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$dimen;->coui_dot_horizontal_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDotHorizontalOffset:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$dimen;->coui_dot_vertical_offset_only_red:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDotVerticalOffsetFromOnlyRed:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_dot_vertical_offset_number_red:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDotVerticalOffsetFromNumberRed:I

    .line 83
    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->applyModeAndGravity()V

    .line 84
    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->updateTextColor()V

    .line 85
    invoke-virtual {p0, p4}, Landroid/view/View;->setOverScrollMode(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 86
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    throw p0
.end method

.method static synthetic access$000(Lcom/coui/appcompat/tablayout/COUITabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private addTabFromItemView(Lcom/coui/appcompat/tablayout/COUITabItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v0

    iget-object v1, p1, Lcom/coui/appcompat/tablayout/COUITabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tablayout/COUITab;->setText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/tablayout/COUITab;

    :cond_0
    iget-object v1, p1, Lcom/coui/appcompat/tablayout/COUITabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tablayout/COUITab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/tablayout/COUITab;

    :cond_1
    iget v1, p1, Lcom/coui/appcompat/tablayout/COUITabItem;->mCustomLayout:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tablayout/COUITab;->setCustomView(I)Lcom/coui/appcompat/tablayout/COUITab;

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tablayout/COUITab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/coui/appcompat/tablayout/COUITab;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    return-void
.end method

.method private addTabView(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 2

    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITab;->mView:Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/coui/appcompat/tablayout/COUITabItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabItem;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTabFromItemView(Lcom/coui/appcompat/tablayout/COUITabItem;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private animateToTab(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/core/view/m0;->O(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0, p1, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->ensureScrollAnimator()V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->animateIndicatorToPosition(II)V

    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    :cond_2
    div-int/lit8 p1, v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_2
    add-int/2addr p1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_4
    :goto_3
    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_5

    add-int/2addr p1, p2

    goto :goto_4

    :cond_5
    sub-int/2addr p1, p2

    :goto_4
    return p1

    :cond_6
    return v1
.end method

.method private configureTab(Lcom/coui/appcompat/tablayout/COUITab;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/tablayout/COUITab;->setPosition(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITab;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/tablayout/COUITab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(III)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const v2, 0x10100a1

    const v3, 0x101009e

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p2, v0, v3

    const p2, -0x10100a1

    const v2, -0x101009e

    filled-new-array {p2, v2}, [I

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    aput p1, v0, v2

    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    const/4 p2, 0x2

    aput-object p1, v1, p2

    aput p0, v0, p2

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private createTabView(Lcom/coui/appcompat/tablayout/COUITab;)Lcom/coui/appcompat/tablayout/COUITabView;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabViewPool:Lc0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc0/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/coui/appcompat/tablayout/COUITabView;-><init>(Landroid/content/Context;Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tablayout/COUITabView;->setTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMinWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/tablayout/COUITabView;->setEnabled(Z)V

    return-object v0
.end method

.method private dispatchTabReselected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;->onTabReselected(Lcom/coui/appcompat/tablayout/COUITab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;->onTabSelected(Lcom/coui/appcompat/tablayout/COUITab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;->onTabUnselected(Lcom/coui/appcompat/tablayout/COUITab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tablayout/R$dimen;->coui_tab_layout_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtonMarginEnd:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/tablayout/R$dimen;->coui_tab_layout_button_default_horizontal_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v3

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/tablayout/R$dimen;->coui_tab_layout_button_default_vertical_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/support/tablayout/R$dimen;->coui_tab_layout_button_default_vertical_margin:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v5, p0

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v4, :cond_5

    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtonMarginEnd:I

    if-eq v1, v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/support/tablayout/R$dimen;->coui_tab_layout_multi_button_default_horizontal_margin:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_4
    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v6

    if-ne v6, v5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/tablayout/R$dimen;->coui_tab_layout_multi_button_default_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_5

    :cond_4
    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/tablayout/R$dimen;->coui_tab_layout_multi_button_default_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v1, v6

    :goto_5
    add-int v6, v1, v0

    iget-object v7, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    iget-object v7, v7, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/support/tablayout/R$dimen;->coui_tab_layout_button_default_vertical_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/support/tablayout/R$dimen;->coui_tab_layout_button_default_vertical_margin:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v7, v1, v8, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_6
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayout$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$1;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p0, 0x48

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x30

    :goto_1
    return p0
.end method

.method private getScrollPosition()F
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorPosition()F

    move-result p0

    return p0
.end method

.method private getTabMinWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private removeTabViewAt(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->reset()V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabViewPool:Lc0/e;

    invoke-interface {p1, v0}, Lc0/e;->a(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 3
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSelectedTabView(IF)V
    .locals 7

    .line 4
    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mLastOffset:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedPosition:I

    .line 6
    :cond_1
    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mLastOffset:F

    .line 7
    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedPosition:I

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabView;

    cmpl-float v3, p2, v1

    if-ltz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/tablayout/COUITabView;

    sub-float v4, p2, v1

    :goto_0
    div-float/2addr v4, v1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/tablayout/COUITabView;

    sub-float v4, v1, p2

    goto :goto_0

    .line 11
    :goto_1
    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mEvaluator:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mEvaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    cmpl-float p2, p2, v2

    if-nez p2, :cond_8

    .line 15
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result p2

    if-ge p1, p2, :cond_8

    const/4 p2, 0x0

    move v0, p2

    .line 16
    :goto_2
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_7

    .line 17
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 18
    move-object v3, v1

    check-cast v3, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 19
    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    if-ne v0, p1, :cond_6

    goto :goto_3

    :cond_6
    move v2, p2

    .line 20
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21
    :cond_7
    iput-boolean v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNeedAdjust:Z

    :cond_8
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->I(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->H(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mCurrentVpSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->removeOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V

    .line 10
    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mCurrentVpSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 11
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 12
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 15
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPageChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 16
    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mCurrentVpSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    .line 17
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V

    .line 18
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setPagerAdapter(Landroidx/viewpager/widget/a;Z)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 21
    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 23
    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mAdapterChangeListener:Lcom/coui/appcompat/tablayout/COUITabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 24
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 25
    :cond_6
    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setPagerAdapter(Landroidx/viewpager/widget/a;Z)V

    .line 27
    :goto_0
    iput-boolean p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSetupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITab;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTextColor()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimaryText:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    const v2, 0x101009e

    const v3, 0x10100a1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTextColorRed:I

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTextColorGreen:I

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTextColorBlue:I

    return-void
.end method


# virtual methods
.method public addButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addButton(ILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addButton(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    invoke-direct {v1, p0, p1, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 8
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    new-instance p2, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    invoke-direct {p2, p0, p3, p4}, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setTabMode(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public addOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTab(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    return-void
.end method

.method public addTab(Lcom/coui/appcompat/tablayout/COUITab;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/tablayout/COUITab;IZ)V

    return-void
.end method

.method public addTab(Lcom/coui/appcompat/tablayout/COUITab;IZ)V
    .locals 1

    .line 4
    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITab;->mParent:Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-ne v0, p0, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->configureTab(Lcom/coui/appcompat/tablayout/COUITab;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTabView(Lcom/coui/appcompat/tablayout/COUITab;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITab;->select()V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "COUITab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/coui/appcompat/tablayout/COUITab;Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/tablayout/COUITab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method protected changeTabTextFont(Lcom/coui/appcompat/tablayout/COUITabView;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getSelectedIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getSelectedIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, " "

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorRight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorLeft()I

    move-result v1

    if-le v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIndicatorPadding:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIndicatorPadding:I

    add-int/2addr v3, v4

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ge v0, v2, :cond_3

    move v0, v2

    :cond_3
    if-le v1, v3, :cond_4

    move v1, v3

    :cond_4
    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v2, v2, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getSelectedIndicatorPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mBottomDividerEnabled:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIndicatorPadding:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getBottomDividerPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->drawButton(Landroid/graphics/Canvas;)V

    return-void
.end method

.method dpToPx(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public enableTab(IZ)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITab;->mView:Lcom/coui/appcompat/tablayout/COUITabView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/tablayout/COUITabView;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultIndicatoRatio()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDefaultIndicatorRatio:F

    return p0
.end method

.method protected getIndicatorAnimTime(II)I
    .locals 0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x32

    add-int/lit16 p0, p0, 0x96

    const/16 p1, 0x12c

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundHeight()I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundPaddingLeft()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaddingLeft()I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundPaddingRight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaddingRight()I

    move-result p0

    return p0
.end method

.method public getIndicatorBackgroundPaintColor()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public getIndicatorPadding()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIndicatorPadding:I

    return p0
.end method

.method public getIndicatorWidthRatio()F
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorWidthRatio()F

    move-result p0

    return p0
.end method

.method public getRequestedTabMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    return p0
.end method

.method public getRequestedTabMinWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMinWidth:I

    return p0
.end method

.method public getSelectedIndicatorColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    return p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcom/coui/appcompat/tablayout/COUITab;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/tablayout/COUITab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabGravity:I

    return p0
.end method

.method public getTabMinDivider()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabMinDivider:I

    return p0
.end method

.method public getTabMinMargin()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabMinMargin:I

    return p0
.end method

.method public getTabMode()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mMode:I

    return p0
.end method

.method public getTabPaddingBottom()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    return p0
.end method

.method public getTabPaddingEnd()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    return p0
.end method

.method public getTabPaddingStart()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingStart:I

    return p0
.end method

.method public getTabPaddingTop()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    return p0
.end method

.method public getTabStrip()Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    return-object p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTabTextSize()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextSize:F

    return p0
.end method

.method public isResizeText()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isUpdateindicatorposition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIsUpdateindicatorposition:Z

    return p0
.end method

.method public newTab()Lcom/coui/appcompat/tablayout/COUITab;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->TAB_POOL:Lc0/e;

    invoke-interface {v0}, Lc0/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/tablayout/COUITab;

    invoke-direct {v0}, Lcom/coui/appcompat/tablayout/COUITab;-><init>()V

    :cond_0
    iput-object p0, v0, Lcom/coui/appcompat/tablayout/COUITab;->mParent:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->createTabView(Lcom/coui/appcompat/tablayout/COUITab;)Lcom/coui/appcompat/tablayout/COUITabView;

    move-result-object p0

    iput-object p0, v0, Lcom/coui/appcompat/tablayout/COUITab;->mView:Lcom/coui/appcompat/tablayout/COUITabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSetupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSetupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonClicklistener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNeedAdjust:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedPosition:I

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNeedAdjust:Z

    iget p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedPosition:I

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->calculateScrollXForTab(IF)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mOriginalRequestedTabMaxWidth:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    int-to-float v1, v0

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v3, :cond_3

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_3
    iget p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mMode:I

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v3, 0x1fffffff

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->measure(II)V

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonClicklistener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;

    iget-object p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonClicklistener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method populateFromPagerAdapter()V
    .locals 6

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->removeAllTabs()V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/a;

    instance-of v2, v1, Lcom/coui/appcompat/tablayout/COUIFragmentStatePagerAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUIFragmentStatePagerAdapter;

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tablayout/COUIFragmentStatePagerAdapter;->getPageIcon(I)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tablayout/COUIFragmentStatePagerAdapter;->getPageIcon(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/tablayout/COUITab;->setIcon(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/a;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/tablayout/COUITab;->setText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v2

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/a;

    invoke-virtual {v4, v1}, Landroidx/viewpager/widget/a;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/tablayout/COUITab;->setText(Ljava/lang/CharSequence;)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    :cond_3
    return-void
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/tablayout/R$styleable;->COUITabLayout:[I

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/tablayout/R$styleable;->COUITabLayout:[I

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    sget v0, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabTextColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    :cond_2
    sget v0, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/support/tablayout/R$styleable;->COUITabLayout_couiTabIndicatorColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setSelectedTabIndicatorColor(I)V

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->updateTextColor()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->getView()Lcom/coui/appcompat/tablayout/COUITabView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->getView()Lcom/coui/appcompat/tablayout/COUITabView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->refresh()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public removeAllButtons(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setTabMode(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITab;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITab;->reset()V

    sget-object v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->TAB_POOL:Lc0/e;

    invoke-interface {v2, v1}, Lc0/e;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/tablayout/COUITab;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 1

    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITab;->mParent:Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->removeTabAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "COUITab does not belong to this TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTabAt(I)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/tablayout/COUITab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->removeTabViewAt(I)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITab;->reset()V

    sget-object v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->TAB_POOL:Lc0/e;

    invoke-interface {v3, v2}, Lc0/e;->a(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/tablayout/COUITab;

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/tablayout/COUITab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITab;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    :cond_4
    return-void
.end method

.method protected resetTextColorAfterAnim()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/coui/appcompat/tablayout/COUITabView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public selectTab(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    return-void
.end method

.method public selectTab(Lcom/coui/appcompat/tablayout/COUITab;Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/tablayout/COUITab;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_8

    .line 3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->dispatchTabReselected(Lcom/coui/appcompat/tablayout/COUITab;)V

    goto :goto_3

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_5

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 6
    invoke-virtual {p0, v2, p2, v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 7
    :cond_3
    invoke-direct {p0, v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 8
    invoke-direct {p0, v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setSelectedTabView(I)V

    .line 9
    :cond_4
    iput v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedPosition:I

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mEnableVibrator:Z

    if-eqz p2, :cond_6

    const/16 p2, 0x12e

    .line 11
    invoke-virtual {p0, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 12
    invoke-direct {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->dispatchTabUnselected(Lcom/coui/appcompat/tablayout/COUITab;)V

    .line 13
    :cond_7
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz p1, :cond_8

    .line 14
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->dispatchTabSelected(Lcom/coui/appcompat/tablayout/COUITab;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setEnableVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mEnableVibrator:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedIndicatorDisableColor:I

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorColor(I)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->enableTab(IZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setIndicatorAnimTime(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorAnimTime(I)V

    :cond_0
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setIndicatorBackgroundHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorBackgroundHeight(I)V

    return-void
.end method

.method public setIndicatorBackgroundPaddingLeft(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorBackgroundPaddingLeft(I)V

    return-void
.end method

.method public setIndicatorBackgroundPaddingRight(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorBackgroundPaddingRight(I)V

    return-void
.end method

.method public setIndicatorPadding(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIndicatorPadding:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setIndicatorWidthRatio(F)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDefaultIndicatorRatio:F

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorWidthRatio(F)V

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->removeOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V

    :cond_1
    return-void
.end method

.method protected setPaddingLeftAndRight(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/a;Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapter:Landroidx/viewpager/widget/a;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    new-instance p2, Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout$PagerAdapterObserver;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;)V

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public setRequestedTabMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mOriginalRequestedTabMaxWidth:I

    return-void
.end method

.method public setRequestedTabMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMinWidth:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mOriginalRequestedTabMinWidth:I

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->ensureScrollAnimator()V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_4

    .line 3
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p4, p1, p2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget p4, p4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq p4, v1, :cond_2

    .line 6
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v1

    iput v1, p4, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    .line 7
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->updateIndicatorPosition()V

    .line 8
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 9
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4}, Landroid/view/View;->scrollTo(II)V

    if-eqz p3, :cond_4

    .line 11
    invoke-direct {p0, v0, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setSelectedTabView(IF)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorColor(I)V

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedIndicatorColor:I

    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 0

    return-void
.end method

.method public setTabMinDivider(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabMinDivider:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabMinMargin(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabMinMargin:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p1, v0}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mMode:I

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabPaddingBottom(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabPaddingEnd(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabPaddingStart(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingStart:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabPaddingTop(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextDisabledColor:I

    invoke-static {p1, v0, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->updateTextColor()V

    .line 4
    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDefaultTabTextSize:F

    .line 3
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextSize:F

    :cond_0
    return-void
.end method

.method public setTabTextSize(FZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setTabTextSize(F)V

    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setPagerAdapter(Landroidx/viewpager/widget/a;Z)V

    return-void
.end method

.method public setUpdateindicatorposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mIsUpdateindicatorposition:Z

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateTabViews(Z)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingStart:I

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    iget v5, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
