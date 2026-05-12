.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;
.super Landroidx/fragment/app/FragmentManager$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

.field final synthetic val$container:Landroid/widget/FrameLayout;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->val$container:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$k;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p4, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->val$fragment:Landroidx/fragment/app/Fragment;

    if-ne p2, p4, :cond_0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->y1(Landroidx/fragment/app/FragmentManager$k;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$3;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3, p0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method
