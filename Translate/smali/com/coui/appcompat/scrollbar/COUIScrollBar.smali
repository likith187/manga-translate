.class public Lcom/coui/appcompat/scrollbar/COUIScrollBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;,
        Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;,
        Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;,
        Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;
    }
.end annotation


# static fields
.field private static final DRAWABLE_STATE_DEFAULT:[I

.field private static final DRAWABLE_STATE_PRESSED:[I

.field public static final SCROLLER_FADE_TIMEOUT:J = 0x7d0L


# instance fields
.field private mCOUIScrollListener:Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;

.field private final mCOUIScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

.field private final mDensity:F

.field private mDownY:F

.field private mIfShowWhenStateChange:Z

.field private mIsDragging:Z

.field private mIsRTL:Z

.field private final mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbDynamicHeight:Z

.field private mThumbMinHeight:I

.field private final mThumbRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->DRAWABLE_STATE_PRESSED:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->DRAWABLE_STATE_DEFAULT:[I

    return-void
.end method

.method private constructor <init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;IILandroid/graphics/drawable/Drawable;Z)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    .line 4
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsRTL:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIfShowWhenStateChange:Z

    .line 6
    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 8
    iget-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 9
    iget-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsRTL:Z

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mDensity:F

    .line 12
    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/scrollbar/R$dimen;->coui_scrollbar_min_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbMinHeight:I

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    .line 14
    iput-object p4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    .line 16
    new-instance p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-direct {p1, p2, p3}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    .line 17
    iput-boolean p5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDynamicHeight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;IILandroid/graphics/drawable/Drawable;ZLcom/coui/appcompat/scrollbar/COUIScrollBar$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;-><init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;IILandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    sget-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->DRAWABLE_STATE_PRESSED:[I

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    sget-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->DRAWABLE_STATE_DEFAULT:[I

    return-object v0
.end method

.method private dp2px(F)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mDensity:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private findAndUploadDrawableColor(Landroid/graphics/drawable/StateListDrawable;II)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    return-void

    :cond_1
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iget v0, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->awakenScrollBars(J)Z

    move-result p0

    return p0
.end method

.method private onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iget v3, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->state:I

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v1, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->interpolatorValues:[F

    const/4 v3, 0x1

    if-nez v1, :cond_2

    new-array v1, v3, [F

    iput-object v1, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->interpolatorValues:[F

    :cond_2
    iget-object v1, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->interpolatorValues:[F

    iget-object v4, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    invoke-virtual {v4, v1}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v4

    sget-object v5, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v4, v5, :cond_3

    iput v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->state:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    move v3, v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->updateThumbRect(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    invoke-virtual {v2, v5, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    if-eqz v3, :cond_6

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method private onInterceptTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mDownY:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->updateThumbRect(I)Z

    iput v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mDownY:F

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, v4}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->setPressedThumb(Z)V

    iput-boolean v4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->awakenScrollBars()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iget v0, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->state:I

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    return v4

    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    if-nez v0, :cond_4

    invoke-direct {p0, v4}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->updateThumbRect(I)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_4

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_4

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_4

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    iput-boolean v3, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    iput v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mDownY:F

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superOnTouchEvent(Landroid/view/MotionEvent;)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superOnTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    invoke-direct {p0, v3}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->setPressedThumb(Z)V

    invoke-direct {p0, v4, v3}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->updateThumbRect(IZ)Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3

    :cond_5
    return v4
.end method

.method private setPressedThumb(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->DRAWABLE_STATE_PRESSED:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->DRAWABLE_STATE_DEFAULT:[I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollListener:Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-interface {v0, p1, p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;->onCOUIScrollStart(Landroid/view/View;Lcom/coui/appcompat/scrollbar/COUIScrollBar;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-interface {v0, p1, p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;->onCOUIScrollEnd(Landroid/view/View;Lcom/coui/appcompat/scrollbar/COUIScrollBar;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateThumbRect(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->updateThumbRect(IZ)Z

    move-result p0

    return p0
.end method

.method private updateThumbRect(IZ)Z
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsRTL:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_0
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 4
    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsRTL:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superComputeVerticalScrollRange()I

    move-result v0

    if-gtz v0, :cond_2

    return v3

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superComputeVerticalScrollOffset()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {v2}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->superComputeVerticalScrollExtent()I

    move-result v2

    sub-int v4, v0, v2

    if-gtz v4, :cond_3

    return v3

    :cond_3
    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v4, v4

    div-float v12, v5, v4

    int-to-float v2, v2

    mul-float/2addr v2, v6

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 8
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 9
    iget-boolean v5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDynamicHeight:Z

    if-eqz v5, :cond_4

    .line 10
    iget v5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbMinHeight:I

    int-to-float v7, v0

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbMinHeight:I

    .line 11
    :goto_2
    iget-object v5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    mul-float v5, v2, v12

    .line 12
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 13
    iget-object v7, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    if-eqz p1, :cond_8

    add-int/2addr v5, p1

    if-le v5, v0, :cond_5

    goto :goto_3

    :cond_5
    if-gez v5, :cond_6

    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v5

    :goto_3
    int-to-float p2, v0

    mul-float/2addr p2, v6

    div-float v10, p2, v2

    mul-float/2addr v4, v10

    .line 14
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int v9, p2, v1

    .line 15
    iget-object p2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    instance-of v0, p2, Landroid/widget/AbsListView;

    if-eqz v0, :cond_7

    .line 16
    check-cast p2, Landroid/widget/AbsListView;

    invoke-virtual {p2, v9, v3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_4

    .line 17
    :cond_7
    invoke-virtual {p2, v3, v9}, Landroid/view/View;->scrollBy(II)V

    .line 18
    :goto_4
    iget-object v5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollListener:Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;

    if-eqz v5, :cond_9

    .line 19
    iget-object v6, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    move-object v7, p0

    move v8, p1

    invoke-interface/range {v5 .. v10}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;->onCOUIScrolled(Landroid/view/View;Lcom/coui/appcompat/scrollbar/COUIScrollBar;IIF)V

    goto :goto_5

    :cond_8
    if-eqz p2, :cond_9

    .line 20
    iget-object v7, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollListener:Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;

    if-eqz v7, :cond_9

    .line 21
    iget-object v8, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p0

    invoke-interface/range {v7 .. v12}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;->onCOUIScrolled(Landroid/view/View;Lcom/coui/appcompat/scrollbar/COUIScrollBar;IIF)V

    :cond_9
    :goto_5
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->awakenScrollBars(J)Z

    move-result p0

    return p0
.end method

.method public awakenScrollBars(J)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    .line 3
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIsDragging:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iget v0, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->state:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x2ee

    .line 5
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 6
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 7
    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    iput-wide v0, p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->fadeStartTime:J

    const/4 p2, 0x1

    .line 8
    iput p2, p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->state:I

    .line 9
    iget-object p2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mScrollCache:Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchDrawOver(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIfShowWhenStateChange:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->initialAwakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onInterceptTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIfShowWhenStateChange:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/m0;->N(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->initialAwakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIfShowWhenStateChange:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->initialAwakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public refreshScrollBarColor()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/support/scrollbar/R$color;->coui_scrollbar_color:I

    invoke-static {v1, v3}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->findAndUploadDrawableColor(Landroid/graphics/drawable/StateListDrawable;II)V

    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/support/scrollbar/R$color;->coui_scrollbar_color:I

    invoke-static {v1, v3}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->findAndUploadDrawableColor(Landroid/graphics/drawable/StateListDrawable;II)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mView:Landroid/view/View;

    return-void
.end method

.method public setIfShowWhenStateChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mIfShowWhenStateChange:Z

    return-void
.end method

.method public setOnCOUIScrollListener(Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mCOUIScrollListener:Lcom/coui/appcompat/scrollbar/COUIScrollBar$OnCOUIScrollListener;

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->updateThumbRect(I)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setThumbDrawable must NOT be NULL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setThumbDynamicHeight(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDynamicHeight:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbDynamicHeight:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->updateThumbRect(I)Z

    :cond_0
    return-void
.end method

.method public setThumbSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->mThumbRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->updateThumbRect(I)Z

    return-void
.end method
