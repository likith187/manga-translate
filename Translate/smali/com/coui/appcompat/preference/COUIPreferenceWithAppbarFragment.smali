.class public abstract Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;
.super Lcom/coui/appcompat/preference/COUIPreferenceFragment;
.source "SourceFile"


# instance fields
.field private mContainerFitsSystemWindows:Z

.field private mDividerHeight:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mContainerFitsSystemWindows:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mDividerHeight:I

    return p0
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "status_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getStatusBarView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public abstract getTitle()Ljava/lang/String;
.end method

.method public getToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    return-object p0
.end method

.method public isCustomWindowBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needStatusBarViewHolder()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mContainerFitsSystemWindows:Z

    xor-int/2addr p0, v2

    return p0

    :cond_0
    return v2
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    sget p3, Lcom/support/preference/R$layout;->coui_preference_percent_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setEnablePointerDownAction(Z)V

    invoke-virtual {p0}, Landroidx/preference/g;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-le v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mContainerFitsSystemWindows:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/support/preference/R$id;->toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    new-instance v0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;)V

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->toolbar_divider_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mDividerHeight:I

    sget p2, Lcom/support/preference/R$id;->appbar_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->needStatusBarViewHolder()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->getStatusBarView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroidx/core/view/m0;->x0(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;-><init>(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->isCustomWindowBackground()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/support/preference/R$drawable;->coui_window_background_with_card_selector:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_4
    return-void
.end method
