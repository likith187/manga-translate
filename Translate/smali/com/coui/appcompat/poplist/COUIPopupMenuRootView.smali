.class public Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z

.field private static final TAG:Ljava/lang/String; = "COUIPopupMenuRootView"


# instance fields
.field private mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

.field private final mDebugPaint:Landroid/graphics/Paint;

.field private mDefaultScreenController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

.field private mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

.field private final mDrawingRect:Landroid/graphics/Rect;

.field private mMainMenuHeight:I

.field private mMainMenuRootView:Landroid/view/ViewGroup;

.field private mMainMenuWidth:I

.field private mMenuStateChangedListener:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

.field private mNeedReDispatchDownForNextEvent:Z

.field private final mOnSubMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

.field private mShowSubMenuAfterAnimationSkipped:Ljava/lang/Runnable;

.field private mSmallScreenController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

.field private mSubMenuHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mSubMenuHeight:I

.field private mSubMenuRootView:Landroid/view/ViewGroup;

.field private mSubMenuWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "COUIPopupMenuRootView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->DEBUG_DRAW:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mNeedReDispatchDownForNextEvent:Z

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mShowSubMenuAfterAnimationSkipped:Ljava/lang/Runnable;

    .line 7
    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 8
    new-instance p3, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$1;-><init>(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)V

    iput-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mOnSubMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    .line 9
    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    .line 10
    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    .line 11
    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuWidth:I

    .line 12
    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuHeight:I

    .line 13
    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuWidth:I

    .line 14
    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuHeight:I

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    .line 16
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    .line 17
    sget-boolean p2, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->DEBUG_DRAW:Z

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mNeedReDispatchDownForNextEvent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->allowListViewDispatchTouchEvent(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->allowListViewScroll(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->configSubMenuHeaderOnClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mShowSubMenuAfterAnimationSkipped:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mShowSubMenuAfterAnimationSkipped:Ljava/lang/Runnable;

    return-object p1
.end method

.method private allowListViewDispatchTouchEvent(Landroid/view/ViewGroup;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->allowDispatchEvent(Z)V

    :cond_0
    return-void
.end method

.method private allowListViewScroll(Landroid/view/ViewGroup;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->allowScroll(Z)V

    :cond_0
    return-void
.end method

.method private configSubMenuHeaderOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuHeaderClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method addMainMenuView(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->hideSubMenu(Z)V

    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->allowListViewScroll(Landroid/view/ViewGroup;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setMainMenuView(Landroid/view/View;)V

    return-void
.end method

.method addSubMenuView(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->allowListViewScroll(Landroid/view/ViewGroup;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setSubMenuView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mOnSubMenuStateChangedListener:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setOnSubMenuStateChangedListener(Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController$OnMenuStateChangedListener;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->showSubMenu()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mNeedReDispatchDownForNextEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mNeedReDispatchDownForNextEvent:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method hideSubMenu(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Lcom/coui/appcompat/poplist/COUITouchListView;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->startSubMenuExit()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->startSubMenuExit(Z)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->startMainMenuEnter()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->stopAllAnimation()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->allowListViewDispatchTouchEvent(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->allowListViewScroll(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0, v2}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->configSubMenuHeaderOnClick(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->removeSubMenuView()V

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mShowSubMenuAfterAnimationSkipped:Ljava/lang/Runnable;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->DEBUG_DRAW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    const-string v1, "#33FF0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getAvailableRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    const-string v1, "#330000FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getAnchorRealRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    const-string v1, "#3300FF00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    const-string v1, "#33FF00FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    const-string v1, "#33FFFF00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    const-string v1, "#3300FFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    const-string v1, "#33000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDrawingRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuRootView:Landroid/view/ViewGroup;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuWidth:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuHeight:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuWidth:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuHeight:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method performSubMenuHeader(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuHeaderClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method postSkipExitAnimationAndShowSubMenu(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mShowSubMenuAfterAnimationSkipped:Ljava/lang/Runnable;

    return-void
.end method

.method removeSubMenuView()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->detach()V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setSubMenuView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mNeedReDispatchDownForNextEvent:Z

    :cond_0
    return-void
.end method

.method setDomain(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSmallScreenController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    if-nez p1, :cond_0

    new-instance p1, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSmallScreenController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSmallScreenController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDefaultScreenController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    if-nez p1, :cond_2

    new-instance p1, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;

    invoke-direct {p1}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDefaultScreenController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDefaultScreenController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mDomain:Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->setDomain(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method setMainMenuSize(II)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuWidth:I

    iput p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMainMenuHeight:I

    return-void
.end method

.method setOnSubMenuStateChangedListener(Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mMenuStateChangedListener:Lcom/coui/appcompat/poplist/COUIPopupMenuRootView$OnMenuStateChangedListener;

    return-void
.end method

.method setSubMenuSize(II)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuWidth:I

    iput p2, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mSubMenuHeight:I

    return-void
.end method

.method showSubMenu()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenuRootView;->mController:Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/BasePopupMenuAnimationController;->startSubMenuEnter()V

    return-void
.end method
