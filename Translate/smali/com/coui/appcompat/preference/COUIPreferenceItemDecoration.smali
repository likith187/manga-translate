.class public Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;
.super Landroidx/recyclerview/widget/COUIRecyclerView$a;
.source "SourceFile"


# instance fields
.field private final mChildLocation:[I

.field private final mItemLocation:[I

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView$a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mItemLocation:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mChildLocation:[I

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/h;

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v0, Landroidx/preference/h;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$b;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$b;->getDividerEndAlignView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mItemLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mChildLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mChildLocation:[I

    aget p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mItemLocation:[I

    aget p0, p0, v2

    :goto_1
    sub-int/2addr p2, p0

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mItemLocation:[I

    aget p2, p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mChildLocation:[I

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p0, p1

    goto :goto_1

    :goto_2
    return p2

    :cond_3
    invoke-interface {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$b;->getDividerEndInset()I

    move-result p0

    return p0

    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0
.end method

.method public getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/h;

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v0, Landroidx/preference/h;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$b;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$b;->getDividerStartAlignView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mItemLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mChildLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mItemLocation:[I

    aget p2, p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mChildLocation:[I

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    sub-int/2addr p0, p1

    :goto_1
    sub-int/2addr p2, p0

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mChildLocation:[I

    aget p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mItemLocation:[I

    aget p0, p0, v2

    goto :goto_1

    :goto_2
    return p2

    :cond_3
    invoke-interface {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$b;->getDividerStartInset()I

    move-result p0

    return p0

    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0
.end method

.method protected getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p0

    instance-of v1, p0, Landroidx/preference/h;

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p0, Landroidx/preference/h;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$b;

    if-eqz p1, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/COUIRecyclerView$b;

    invoke-interface {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$b;->drawDivider()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method
