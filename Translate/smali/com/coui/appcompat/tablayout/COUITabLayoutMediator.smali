.class public final Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;,
        Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;,
        Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;,
        Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;
    }
.end annotation


# static fields
.field private static final ALL_CUSTOM_TAB_VIEW:I = 0x2

.field private static final INVALID_VALUE:I = -0x1

.field private static final NO_CUSTOM_TAB_VIEW:I = 0x0

.field private static final PART_CUSTOM_TAB_VIEW:I = 0x1

.field private static final SELECT_TAB_NAME:Ljava/lang/String; = "TabLayout.selectTab(TabLayout.Tab, boolean)"

.field private static final SET_SCROLL_POSITION_NAME:Ljava/lang/String; = "TabLayout.setScrollPosition(int, float, boolean, boolean)"

.field private static sSelectTab:Ljava/lang/reflect/Method;

.field private static sSetScrollPosition:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

.field private mAttached:Z

.field private final mAutoRefresh:Z

.field private mCustomTabViewType:I

.field private mLayoutResAll:I

.field private mLayoutResIdMap:Landroid/util/SparseIntArray;

.field private final mOnConfigureTabCallback:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

.field private mOnPageChangeCallback:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

.field private mOnTabSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

.field private mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$j;

.field private final mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

.field private final mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    :try_start_0
    const-string v1, "setScrollPosition"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v4, v4}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v1, "selectTab"

    const-class v3, Lcom/coui/appcompat/tablayout/COUITab;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t reflect into method TabLayout.setScrollPosition(int, float, boolean, boolean)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;ZLcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;ZLcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setUpdateindicatorposition(Z)V

    .line 5
    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    .line 6
    iput-boolean p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAutoRefresh:Z

    .line 7
    iput-object p4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mOnConfigureTabCallback:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mCustomTabViewType:I

    .line 9
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mLayoutResIdMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method static selectTab(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/tablayout/COUITab;Z)V
    .locals 2

    const-string v0, "TabLayout.selectTab(TabLayout.Tab, boolean)"

    :try_start_0
    sget-object v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->throwMethodNotFound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->throwInvokeFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static setScrollPosition(Lcom/coui/appcompat/tablayout/COUITabLayout;IFZZ)V
    .locals 2

    const-string v0, "TabLayout.setScrollPosition(int, float, boolean, boolean)"

    :try_start_0
    sget-object v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->throwMethodNotFound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->throwInvokeFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static throwInvokeFailed(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t invoke method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwMethodNotFound(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attach()V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAttached:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAttached:Z

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {v1, v2, v3}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mOnPageChangeCallback:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mOnTabSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V

    iget-boolean v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAutoRefresh:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;)V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TabLayoutMediator is already attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detach()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAutoRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mOnTabSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->removeOnTabSelectedListener(Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mOnPageChangeCallback:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$i;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$j;

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mOnTabSelectedListener:Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mOnPageChangeCallback:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAttached:Z

    return-void
.end method

.method populateTabsFromPagerAdapter()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->removeAllTabs()V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mCustomTabViewType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mLayoutResAll:I

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/tablayout/COUITab;->setCustomView(I)Lcom/coui/appcompat/tablayout/COUITab;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mLayoutResIdMap:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mLayoutResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/tablayout/COUITab;->setCustomView(I)Lcom/coui/appcompat/tablayout/COUITab;

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mOnConfigureTabCallback:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

    invoke-interface {v4, v3, v2}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;->onConfigureTab(Lcom/coui/appcompat/tablayout/COUITab;I)V

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v4, v3, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/tablayout/COUITab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/tablayout/COUITab;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result p0

    if-eq v0, p0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITab;->select()V

    :cond_4
    return-void
.end method

.method public setTabCustomView(I)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mCustomTabViewType:I

    .line 2
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mLayoutResAll:I

    .line 3
    iget-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAttached:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 5
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    :cond_0
    return-void
.end method

.method public setTabCustomView(II)V
    .locals 2

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mCustomTabViewType:I

    .line 7
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mLayoutResIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    iget-boolean p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mAttached:Z

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 10
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    :cond_0
    return-void
.end method
