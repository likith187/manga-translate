.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;
.super Lcom/coui/appcompat/material/bottomnavigation/BottomNavigationMenuView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field protected static final ACTIVE_ANIMATION_DURATION_MS:J = 0x64L

.field public static final MAX_ITEM_COUNT:I = 0xa

.field public static final MAX_ITEM_COUNT_LARGE:I = 0x7

.field public static final MAX_ITEM_COUNT_MEDIUM:I = 0x6

.field public static final MAX_ITEM_COUNT_SMALL:I = 0x5


# instance fields
.field private mCOUINavigationItemView:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

.field private mDefaultPadding:I

.field private mEnlargeIndex:I

.field private mItemHeight:I

.field private mLayoutType:I

.field private mNavigationType:I

.field private mTempChildWidths:[I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mEnlargeIndex:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/bottomnavigation/R$dimen;->coui_tool_navigation_edge_item_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mDefaultPadding:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 p1, 0xa

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mTempChildWidths:[I

    return-void
.end method

.method private setLayoutPadding()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mLayoutType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_tool_navigation_edge_item_default_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mDefaultPadding:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_tool_navigation_item_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mItemHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_tool_navigation_edge_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mDefaultPadding:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_tool_navigation_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mItemHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clearColorFilter()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->clearColorFilter()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected createNavigationBarItemView(Landroid/content/Context;)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mCOUINavigationItemView:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mCOUINavigationItemView:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    return-object p0
.end method

.method public getCOUINavigationItemView()Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mCOUINavigationItemView:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    return-object p0
.end method

.method public getEnlargeId()I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mEnlargeIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mEnlargeIndex:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p0

    return p0
.end method

.method public getVisibleItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public initEnlargeParams()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setLayoutPadding()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mNavigationType:I

    if-nez p0, :cond_0

    invoke-static {p1}, Ld0/h;->M0(Landroid/view/accessibility/AccessibilityNodeInfo;)Ld0/h;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld0/h;->j0(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mDefaultPadding:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_tool_navigation_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mItemHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    div-int v2, p1, v2

    mul-int v3, v2, p2

    sub-int/2addr p1, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, p2, :cond_2

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mTempChildWidths:[I

    aput v2, v5, v4

    if-lez p1, :cond_1

    add-int/lit8 v6, v2, 0x1

    aput v6, v5, v4

    add-int/lit8 p1, p1, -0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move p1, v3

    move p2, p1

    move v2, p2

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge p1, v4, :cond_4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mTempChildWidths:[I

    aget v5, v5, v2

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr p2, v4

    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, p1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mItemHeight:I

    invoke-static {p2, v0, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setEnlarge(ZI)V
    .locals 3

    iput p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mEnlargeIndex:I

    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mEnlargeIndex:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, p1

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setEnlarge(ZZ)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setItemForEnlargeColor()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/bottomnavigation/R$color;->coui_navigation_enlarge_item_color:I

    invoke-static {v2, v3}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    check-cast v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setIconTintForWhite()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemLayoutType(I)V
    .locals 2

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mLayoutType:I

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setLayoutPadding()V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mLayoutType:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->childLayout(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setItemNavigationType(I)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mNavigationType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mNavigationType:I

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setNavigationType(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected setShowPressShadow(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setShowPressShadow(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mTextSize:I

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->mTextSize:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTextSize(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
