.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->placeFragmentInViewHolder(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

.field final synthetic val$holder:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$2;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$2;->val$holder:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$2;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-virtual {p2}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$2;->val$holder:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p1}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/m0;->N(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$2;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$2;->val$holder:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->placeFragmentInViewHolder(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;)V

    :cond_1
    return-void
.end method
