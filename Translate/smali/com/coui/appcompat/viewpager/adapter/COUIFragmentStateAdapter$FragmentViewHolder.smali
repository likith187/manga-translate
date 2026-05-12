.class public final Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentViewHolder"
.end annotation


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static create(Landroid/view/ViewGroup;)Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroidx/core/view/m0;->i()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSaveEnabled(Z)V

    new-instance p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;-><init>(Landroid/widget/FrameLayout;)V

    return-object p0
.end method


# virtual methods
.method getContainer()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method
