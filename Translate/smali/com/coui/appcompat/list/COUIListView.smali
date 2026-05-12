.class public Lcom/coui/appcompat/list/COUIListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE:F = 20.0f

.field private static final DEGREE_TO_ARC_CONSTANT:D = 0.017453292519943295

.field private static final INVALID_SCROLL_CHOICE_POSITION:I = -0x2

.field private static final SCROLLBARS_NONE:I = 0x0

.field private static final SCROLLBARS_VERTICAL:I = 0x200

.field private static final SCROLL_CHOICE_SCROLL_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "COUIListView"


# instance fields
.field private mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

.field private mCheckItemId:I

.field private mDelayedScroll:Ljava/lang/Runnable;

.field private mEnableDispatchEventWhileScrolling:Z

.field private mEventFilterAngle:F

.field private mFlag:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mLastPosition:I

.field private mLastSite:I

.field private mLasterPosition:I

.field private mLeftOffset:I

.field private mMultiChoice:Z

.field private mRightOffset:I

.field private mScrollMultiChoiceListener:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

.field private mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

.field private mScrollbars:I

.field private mScrollbarsSize:I

.field private mStyle:I

.field private mUpScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/appcompat/R$style;->Widget_COUI_ListView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/list/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIListView;->mMultiChoice:Z

    const/4 v1, -0x2

    .line 6
    iput v1, p0, Lcom/coui/appcompat/list/COUIListView;->mLastPosition:I

    .line 7
    iput v1, p0, Lcom/coui/appcompat/list/COUIListView;->mLasterPosition:I

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->mFlag:Z

    .line 9
    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIListView;->mUpScroll:Z

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/coui/appcompat/list/COUIListView;->mLastSite:I

    .line 11
    iput v0, p0, Lcom/coui/appcompat/list/COUIListView;->mCheckItemId:I

    .line 12
    iput v1, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbars:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 13
    iput v0, p0, Lcom/coui/appcompat/list/COUIListView;->mEventFilterAngle:F

    .line 14
    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->mEnableDispatchEventWhileScrolling:Z

    .line 15
    new-instance v0, Lcom/coui/appcompat/list/COUIListView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/list/COUIListView$1;-><init>(Lcom/coui/appcompat/list/COUIListView;)V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mDelayedScroll:Ljava/lang/Runnable;

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/list/COUIListView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    iget p2, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbars:I

    const/16 p3, 0x200

    if-ne p2, p3, :cond_1

    .line 18
    invoke-direct {p0, p1}, Lcom/coui/appcompat/list/COUIListView;->createCOUIScrollDelegate(Landroid/content/Context;)V

    .line 19
    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbarsSize:I

    if-eqz p1, :cond_0

    .line 20
    iget-object p2, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->setThumbSize(I)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 22
    iget-object p2, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/listview/R$dimen;->coui_listview_scrollchoice_left_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->mLeftOffset:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/listview/R$dimen;->coui_listview_scrollchoice_right_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->mRightOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/list/COUIListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/list/COUIListView;->mUpScroll:Z

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/list/COUIListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/list/COUIListView;->alignBottomChild(II)V

    return-void
.end method

.method private alignBottomChild(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    return-void
.end method

.method private createCOUIScrollDelegate(Landroid/content/Context;)V
    .locals 0

    new-instance p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;-><init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->build()Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    return-void
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/list/COUIListView;->mStyle:I

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/coui/appcompat/list/COUIListView;->mStyle:I

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/support/listview/R$styleable;->COUIListView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/listview/R$styleable;->COUIListView_couiScrollbars:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbars:I

    sget p2, Lcom/support/listview/R$styleable;->COUIListView_couiScrollbarSize:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbarsSize:I

    sget p2, Lcom/support/listview/R$styleable;->COUIListView_couiScrollbarThumbVertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private isInScrollRange(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/coui/appcompat/list/COUIListView;->mCheckItemId:I

    if-lez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/list/COUIListView;->mCheckItemId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    aget v2, v2, v3

    iget v5, p0, Lcom/coui/appcompat/list/COUIListView;->mLeftOffset:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/coui/appcompat/list/COUIListView;->mRightOffset:I

    add-int/2addr v2, v6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    if-le v1, v5, :cond_0

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/coui/appcompat/list/COUIListView;->mMultiChoice:Z

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->mMultiChoice:Z

    :cond_1
    return v3

    :cond_2
    :try_start_1
    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->mMultiChoice:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->mMultiChoice:Z

    :cond_3
    return v3
.end method


# virtual methods
.method protected awakenScrollBars()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->awakenScrollBars()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->dispatchDrawOver(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIListView;->mEnableDispatchEventWhileScrolling:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCOUIScrollDelegate()Lcom/coui/appcompat/scrollbar/COUIScrollBar;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    return-object p0
.end method

.method public getCOUIScrollableView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/coui/appcompat/list/COUIListView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/coui/appcompat/list/COUIListView;->mInitialTouchY:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/list/COUIListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/list/COUIListView;->mInitialTouchX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/list/COUIListView;->mInitialTouchY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/coui/appcompat/list/COUIListView;->mEnableDispatchEventWhileScrolling:Z

    if-eqz v2, :cond_2

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lcom/coui/appcompat/list/COUIListView;->mEventFilterAngle:F

    float-to-double v2, v2

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIListView;->mMultiChoice:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/coui/appcompat/list/COUIListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v1, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto/16 :goto_1

    :cond_1
    iput v4, p0, Lcom/coui/appcompat/list/COUIListView;->mLastPosition:I

    iput v4, p0, Lcom/coui/appcompat/list/COUIListView;->mLasterPosition:I

    goto/16 :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->mFlag:Z

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_4

    invoke-direct {p0, v0, v3}, Lcom/coui/appcompat/list/COUIListView;->alignBottomChild(II)V

    :cond_4
    iget-boolean p1, p0, Lcom/coui/appcompat/list/COUIListView;->mFlag:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->mLastPosition:I

    if-eq p1, v0, :cond_8

    if-eq v0, v2, :cond_8

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollMultiChoiceListener:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollMultiChoiceListener:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->mLastPosition:I

    if-eq p1, v4, :cond_6

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    const-wide/16 v4, 0x32

    if-ne v0, p1, :cond_5

    if-lez v0, :cond_5

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->mUpScroll:Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result p1

    if-ne v0, p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_6

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->mUpScroll:Z

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->mLasterPosition:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollMultiChoiceListener:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    iget v2, p0, Lcom/coui/appcompat/list/COUIListView;->mLastPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    :cond_7
    iget p1, p0, Lcom/coui/appcompat/list/COUIListView;->mLastPosition:I

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->mLasterPosition:I

    iput v0, p0, Lcom/coui/appcompat/list/COUIListView;->mLastPosition:I

    :cond_8
    return v1

    :cond_9
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_a

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    goto :goto_2

    :cond_a
    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->mUpScroll:Z

    iput v4, p0, Lcom/coui/appcompat/list/COUIListView;->mLastPosition:I

    iput v4, p0, Lcom/coui/appcompat/list/COUIListView;->mLasterPosition:I

    iput-boolean v3, p0, Lcom/coui/appcompat/list/COUIListView;->mFlag:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIListView;->mMultiChoice:Z

    iput v2, p0, Lcom/coui/appcompat/list/COUIListView;->mLastSite:I

    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/list/COUIListView;->mStyle:I

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

    sget-object v1, Lcom/support/listview/R$styleable;->COUIListView:[I

    iget v4, p0, Lcom/coui/appcompat/list/COUIListView;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/listview/R$styleable;->COUIListView:[I

    iget v4, p0, Lcom/coui/appcompat/list/COUIListView;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/support/listview/R$styleable;->COUIListView_couiScrollbarThumbVertical:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbars:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->refreshScrollBarColor()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCheckItemId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->mCheckItemId:I

    return-void
.end method

.method public setDispatchEventWhileScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIListView;->mEnableDispatchEventWhileScrolling:Z

    return-void
.end method

.method public setEventFilterTangent(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/list/COUIListView;->mEventFilterAngle:F

    return-void
.end method

.method public setNewCOUIScrollDelegate(Lcom/coui/appcompat/scrollbar/COUIScrollBar;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onAttachedToWindow()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setNewFastScrollDelegate must NOT be NULL."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScrollMultiChoiceListener(Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIListView;->mScrollMultiChoiceListener:Lcom/coui/appcompat/list/COUIListView$ScrollMultiChoiceListener;

    return-void
.end method

.method public superComputeVerticalScrollExtent()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public superComputeVerticalScrollOffset()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public superComputeVerticalScrollRange()I
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method public superOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
