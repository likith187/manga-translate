.class Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/COUIDividerAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DividerBehavior"
.end annotation


# instance fields
.field private mScrollChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollUp(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 4

    .line 2
    instance-of v0, p2, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;

    if-eqz v0, :cond_0

    .line 3
    instance-of v0, p3, Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;

    iget v1, v0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOverScroll:I

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOverScroll:I

    if-eq v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    .line 7
    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    .line 3
    instance-of p1, p2, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->access$000(Lcom/google/android/material/appbar/COUIDividerAppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move p3, p4

    :cond_2
    return p3
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 2

    .line 2
    instance-of v0, p3, Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->mScrollChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;-><init>(Lcom/google/android/material/appbar/COUIDividerAppBarLayout$1;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->mScrollChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->mScrollChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;

    invoke-virtual {v0, p3}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;->setTarget(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->mScrollChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;

    invoke-virtual {v0, p2}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;->setAbl(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->mScrollChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 8
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method
