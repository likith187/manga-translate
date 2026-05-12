.class Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;
.super Landroidx/recyclerview/widget/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerSnapHelperImpl"
.end annotation


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64

.field private static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 1

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$z$b;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl$1;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->mRecyclerView:Lcom/coui/appcompat/viewpager/COUIViewPager2$RecyclerViewImpl;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl$1;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;Landroid/content/Context;)V

    return-object p1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PagerSnapHelperImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method
