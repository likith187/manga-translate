.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;
.super Landroidx/viewpager2/widget/ViewPager2$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->register(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;->this$1:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;->this$1:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;->this$1:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    return-void
.end method
