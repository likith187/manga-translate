.class Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearLayoutManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$a0;[I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getOffscreenPageLimit()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$a0;[I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getPageSize()I

    move-result p0

    mul-int/2addr p0, v0

    const/4 p1, 0x0

    aput p0, p2, p1

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;Ld0/h;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;Ld0/h;)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mAccessibilityProvider:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->onLmInitializeAccessibilityNodeInfo(Ld0/h;)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-static {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->access$100(Lcom/coui/appcompat/viewpager/COUIViewPager2;)Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->setFrameRate(Z)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mAccessibilityProvider:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p3}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->handlesLmPerformAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mAccessibilityProvider:Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;->onLmPerformAccessibilityAction(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$p;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$a0;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 1

    new-instance p2, Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/f;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$z;)V

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$LinearLayoutManagerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-static {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->access$100(Lcom/coui/appcompat/viewpager/COUIViewPager2;)Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->setFrameRate(Z)V

    return-void
.end method
