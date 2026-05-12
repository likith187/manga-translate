.class public abstract Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseHolder"
.end annotation


# instance fields
.field private final adapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/card/BaseCardInstructionAdapter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/coui/appcompat/card/BaseCardInstructionAdapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->adapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->setMatchChildrenMaxHeight$lambda$1(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;)V

    return-void
.end method

.method private static final setMatchChildrenMaxHeight$lambda$1(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->adapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-static {v2}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->access$getPagerLastHeight$p(Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Lb9/d;->c(II)I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->adapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-static {v2}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->access$getPagerLastHeight$p(Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Lb9/d;->c(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->adapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-static {p0, v2}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->access$setPagerLastHeight$p(Lcom/coui/appcompat/card/BaseCardInstructionAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract bind(Lcom/coui/appcompat/card/BaseDisplayInfo;)V
.end method

.method protected final getAdapter()Lcom/coui/appcompat/card/BaseCardInstructionAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coui/appcompat/card/BaseCardInstructionAdapter<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->adapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    return-object p0
.end method

.method public final setMatchChildrenMaxHeight()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->adapter:Lcom/coui/appcompat/card/BaseCardInstructionAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter;->access$getDisplayInfos$p(Lcom/coui/appcompat/card/BaseCardInstructionAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/coui/appcompat/card/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/card/a;-><init>(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
