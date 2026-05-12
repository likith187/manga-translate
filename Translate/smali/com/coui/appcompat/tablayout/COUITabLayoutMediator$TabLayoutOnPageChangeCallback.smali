.class Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabLayoutOnPageChangeCallback"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/tablayout/COUITabLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager2Ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/viewpager/COUIViewPager2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mViewPager2Ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->reset()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mViewPager2Ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->isFakeDragging()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    if-ne v6, v4, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    :goto_1
    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :cond_3
    :goto_2
    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    if-nez p0, :cond_4

    cmpl-float p0, p2, v3

    if-eqz p0, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    goto :goto_3

    :cond_4
    invoke-static {v1, p1, p2, v6, v4}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->setScrollPosition(Lcom/coui/appcompat/tablayout/COUITabLayout;IFZZ)V

    :goto_3
    cmpl-float p0, p2, v3

    if-nez p0, :cond_5

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result p0

    if-eq p1, p0, :cond_5

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->selectTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    :cond_5
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->selectTab(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/tablayout/COUITab;Z)V

    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    return-void
.end method
