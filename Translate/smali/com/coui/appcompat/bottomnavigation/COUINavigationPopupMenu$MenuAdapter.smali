.class Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;)V
    .locals 2

    invoke-virtual {p2}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const v1, 0x10100a0

    mul-int/2addr p0, v1

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$300(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {v0, p0}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_3
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$200(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$100()I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    sget v2, Lcom/support/bottomnavigation/R$drawable;->coui_popup_list_top_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_2

    sget v2, Lcom/support/bottomnavigation/R$drawable;->coui_popup_list_bottom_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/support/bottomnavigation/R$drawable;->coui_popup_list_center_selector:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {v2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    sget v3, Lcom/support/bottomnavigation/R$id;->popup_item_imageView:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/support/bottomnavigation/R$id;->popup_item_textView:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {v2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-direct {p0, v3, v2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->setIcon(Landroid/widget/ImageView;Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;)V

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {v2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$000(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {p1}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$300(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$400(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)F

    move-result p1

    invoke-virtual {v4, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p3}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p3

    if-ne p3, v1, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$500(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_popup_horizontal_margin:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->access$500(Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_popup_horizontal_margin:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    return-object p2
.end method
