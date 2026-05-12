.class public Lcom/coui/appcompat/progressbar/COUICircularProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressBar$ProgressBarType;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressBar$ProgressBarSize;
    }
.end annotation


# static fields
.field private static final FOLLOW_THEME_PROGRESS_BAR_TRACK_ALPHA:I = 0x59

.field public static final LARGE_SIZE:I = 0x1

.field public static final MEDIUM_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "COUICircularProgressBar"

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xa

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_FOLLOW_THEME:I = 0x2

.field public static final TYPE_ON_IMAGE:I = 0x1


# instance fields
.field private mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private final mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

.field private mError:Z

.field private mErrorDrawableTint:I

.field private mHeight:I

.field private mInnerPadding:I

.field private mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mMax:I

.field private mPauseDrawableTint:I

.field private mPaused:Z

.field private mProgress:I

.field private mProgressBarColor:I

.field private mProgressBarSize:I

.field private mProgressBarTrackColor:I

.field private mProgressBarType:I

.field private mStrokeLargeWidth:I

.field private mStrokeMediumWidth:I

.field private mStrokeWidth:I

.field private mStyle:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/progressbar/R$attr;->couiCircularProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/progressbar/R$style;->Widget_COUI_COUICircularProgressBar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarSize:I

    .line 6
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarType:I

    .line 7
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mWidth:I

    .line 8
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mHeight:I

    .line 9
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mInnerPadding:I

    .line 10
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeWidth:I

    const/16 v1, 0x64

    .line 11
    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    .line 12
    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    .line 13
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPaused:Z

    .line 14
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mError:Z

    .line 15
    invoke-static {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 16
    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 17
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStyle:I

    goto :goto_0

    .line 19
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStyle:I

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/progressbar/R$dimen;->coui_circular_progress_large_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 21
    sget-object v2, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 22
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgressBarWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mWidth:I

    .line 23
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgressBarHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mHeight:I

    .line 24
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgressBarType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarType:I

    .line 25
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgressBarSize:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarSize:I

    .line 26
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgressBarColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarColor:I

    .line 27
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgressBarTrackColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarTrackColor:I

    .line 28
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularPauseDrawableTint:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPauseDrawableTint:I

    .line 29
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularErrorDrawableTint:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mErrorDrawableTint:I

    .line 30
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgress:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    .line 31
    sget p3, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularMax:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    .line 32
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_circular_progress_default_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mInnerPadding:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_circular_progress_medium_stroke_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeMediumWidth:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_circular_progress_large_stroke_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeLargeWidth:I

    .line 36
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarSize:I

    if-nez p3, :cond_1

    .line 37
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeMediumWidth:I

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeWidth:I

    goto :goto_1

    :cond_1
    if-ne p4, p3, :cond_2

    .line 38
    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeWidth:I

    .line 39
    :cond_2
    :goto_1
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mWidth:I

    shr-int/2addr p2, p4

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mCenterX:F

    .line 40
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mHeight:I

    shr-int/2addr p2, p4

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mCenterY:F

    .line 41
    new-instance p2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-direct {p2, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    .line 42
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->init()V

    return-void
.end method

.method private configDrawable()V
    .locals 6

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarType:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarTrackColor:I

    const/16 v3, 0x59

    invoke-static {v2, v3}, Lu/d;->u(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setTrackColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarTrackColor:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setTrackColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setIsDrawShadow(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarColor:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setProgressColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPauseDrawableTint:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setPauseIconColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mErrorDrawableTint:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setErrorIconColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mCenterX:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mInnerPadding:I

    int-to-float v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mCenterY:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mWidth:I

    mul-int/2addr v3, v1

    sub-int/2addr v5, v3

    int-to-float v1, v5

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setProperties(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/progressbar/R$dimen;->coui_circular_progress_error_diameter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/progressbar/R$dimen;->coui_circular_progress_error_stroke_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setProgressBarErrorSize(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->setProgress(I)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->configDrawable()V

    return-void
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressBar;Lcom/coui/appcompat/progressbar/COUICircularProgressBar$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mAccessibilityEventSender:Lcom/coui/appcompat/progressbar/COUICircularProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public error()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->error()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mError:Z

    :cond_0
    return-void
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    return p0
.end method

.method public getVisualProgress()F
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->getVisualProgress()F

    move-result p0

    return p0
.end method

.method public isError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mError:Z

    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPaused:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setHostView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->recycle()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mWidth:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mInnerPadding:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mHeight:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method onProgressRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->scheduleAccessibilityEventSender()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;->mProgress:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    iput p0, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressBar$SavedState;->mProgress:I

    return-object v1
.end method

.method public pause()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mError:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPaused:Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "COUICircularProgressBar"

    const-string v0, "Default type circular progress bar can not pause!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public recover()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mError:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->recover()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mError:Z

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar:[I

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar:[I

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgressBarColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarColor:I

    sget v0, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularProgressBarTrackColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarTrackColor:I

    sget v0, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularPauseDrawableTint:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPauseDrawableTint:I

    sget v0, Lcom/support/progressbar/R$styleable;->COUICircularProgressBar_couiCircularErrorDrawableTint:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mErrorDrawableTint:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->resume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mPaused:Z

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setMax(I)V

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    :cond_1
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setOnProgressChangedListener(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;)V

    :cond_0
    return-void
.end method

.method public setOnProgressStateAnimationListener(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setOnProgressStateAnimatorListener(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;)V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 3
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 4
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgress:I

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mDrawable:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setProgress(IZ)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->onProgressRefresh()V

    return-void
.end method

.method public setProgressBarType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarType:I

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->configDrawable()V

    return-void
.end method

.method public setProgressSize(I)V
    .locals 2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mProgressBarSize:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_medium_length:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mWidth:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mHeight:I

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeMediumWidth:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeWidth:I

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_large_length:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mWidth:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mHeight:I

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeLargeWidth:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mStrokeWidth:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mWidth:I

    shr-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mCenterX:F

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mHeight:I

    shr-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->mCenterY:F

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressBar;->configDrawable()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
