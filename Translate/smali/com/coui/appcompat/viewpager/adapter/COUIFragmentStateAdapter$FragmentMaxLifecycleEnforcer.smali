.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentMaxLifecycleEnforcer"
.end annotation


# instance fields
.field private mDataObserver:Landroidx/recyclerview/widget/RecyclerView$j;

.field private mLifecycleObserver:Landroidx/lifecycle/p;

.field private mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$i;

.field private mPrimaryItemId:J

.field private mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

.field final synthetic this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    return-void
.end method

.method private inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/coui/appcompat/viewpager/COUIViewPager2;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected COUIViewPager instance. Got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method register(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/coui/appcompat/viewpager/COUIViewPager2;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    new-instance p1, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;-><init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$i;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    new-instance p1, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;-><init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    new-instance p1, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Landroidx/lifecycle/p;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/l;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    return-void
.end method

.method unregister(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Lcom/coui/appcompat/viewpager/COUIViewPager2;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$i;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/l;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Landroidx/lifecycle/p;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    return-void
.end method

.method updateFragmentMaxLifecycle(Z)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mFragments:Landroidx/collection/f;

    invoke-virtual {v0}, Landroidx/collection/f;->g()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->getItemId(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mFragments:Landroidx/collection/f;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iput-wide v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    iget-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object p1, p1, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object v3, v3, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mFragments:Landroidx/collection/f;

    invoke-virtual {v3}, Landroidx/collection/f;->l()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object v3, v3, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mFragments:Landroidx/collection/f;

    invoke-virtual {v3, v2}, Landroidx/collection/f;->h(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iget-object v5, v5, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->mFragments:Landroidx/collection/f;

    invoke-virtual {v5, v2}, Landroidx/collection/f;->m(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v6, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    cmp-long v6, v3, v6

    if-eqz v6, :cond_7

    sget-object v6, Landroidx/lifecycle/l$b;->STARTED:Landroidx/lifecycle/l$b;

    invoke-virtual {p1, v5, v6}, Landroidx/fragment/app/z;->u(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/l$b;)Landroidx/fragment/app/z;

    goto :goto_1

    :cond_7
    move-object v1, v5

    :goto_1
    iget-wide v6, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    move v3, v0

    :goto_2
    invoke-virtual {v5, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    sget-object p0, Landroidx/lifecycle/l$b;->RESUMED:Landroidx/lifecycle/l$b;

    invoke-virtual {p1, v1, p0}, Landroidx/fragment/app/z;->u(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/l$b;)Landroidx/fragment/app/z;

    :cond_a
    invoke-virtual {p1}, Landroidx/fragment/app/z;->o()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p1}, Landroidx/fragment/app/z;->j()V

    :cond_b
    :goto_4
    return-void
.end method
