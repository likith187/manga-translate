.class public Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;
.super Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$COUIFloatingButtonBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollViewBehavior"
.end annotation


# instance fields
.field mObjectAnimator:Landroid/animation/ValueAnimator;

.field private mOnScrollListenerIsAdd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$COUIFloatingButtonBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$COUIFloatingButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    return-void
.end method

.method static synthetic access$2200(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->behaviorAnimate(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V

    return-void
.end method

.method private behaviorAnimate(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-le p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonSlideOut()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->rotateBackward(Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object p0, v2, v0

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p2, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/16 p0, 0xfa

    invoke-virtual {p1, v0, p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->closeFloatingButtonMenu(ZIZ)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonSlideOut()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    const/16 p0, -0xa

    if-ge p2, p0, :cond_2

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonEnlarge()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    instance-of p1, p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0, p2, p5}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->behaviorAnimate(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2

    instance-of p1, p4, Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    check-cast p4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result p1

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p6

    if-eqz p6, :cond_0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;Landroid/view/View;)V

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$u;)V

    iput-boolean p5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    :cond_0
    return p3

    :cond_1
    instance-of p0, p4, Landroid/widget/AbsListView;

    if-eqz p0, :cond_3

    move-object p0, p4

    check-cast p0, Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p6

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    sub-int/2addr v1, p4

    add-int/lit8 p4, p2, -0x1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-lez p2, :cond_3

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p6}, Landroid/view/View;->getTop()I

    move-result p2

    neg-int p6, v0

    if-lt p2, p6, :cond_2

    return p3

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result p0

    sub-int/2addr p1, p5

    if-ne p0, p1, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p0

    if-gt p0, v1, :cond_3

    return p3

    :cond_3
    return p5
.end method
