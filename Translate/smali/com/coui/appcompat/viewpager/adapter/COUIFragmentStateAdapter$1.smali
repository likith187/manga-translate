.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->onBindViewHolder(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

.field final synthetic val$container:Landroid/widget/FrameLayout;

.field final synthetic val$holder:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;Landroid/widget/FrameLayout;Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;->val$holder:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$1;->val$holder:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->placeFragmentInViewHolder(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;)V

    :cond_0
    return-void
.end method
