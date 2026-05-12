.class public abstract Lcom/coui/appcompat/material/navigation/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/material/navigation/NavigationBarView$SavedState;,
        Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemReselectedListener;,
        Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;,
        Lcom/coui/appcompat/material/navigation/NavigationBarView$LabelVisibility;
    }
.end annotation


# static fields
.field public static final LABEL_VISIBILITY_AUTO:I = -0x1

.field public static final LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final LABEL_VISIBILITY_SELECTED:I = 0x0

.field public static final LABEL_VISIBILITY_UNLABELED:I = 0x2

.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private itemRippleColor:Landroid/content/res/ColorStateList;

.field private final menu:Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

.field private final presenter:Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

.field private reselectedListener:Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemReselectedListener;

.field private selectedListener:Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-static {p1, p2, p3, p4}, Lm4/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

    invoke-direct {p1}, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->presenter:Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v2, Lcom/google/android/material/R$styleable;->NavigationBarView:[I

    sget v0, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    sget v1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    filled-new-array {v0, v1}, [I

    move-result-object v5

    move-object v0, v6

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/h0;

    move-result-object p2

    new-instance p3, Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMaxItemCount()I

    move-result v0

    invoke-direct {p3, v6, p4, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenu;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object p3, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menu:Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    move-result-object p4

    iput-object p4, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1, p4}, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;->setMenuView(Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;->setId(I)V

    invoke-virtual {p4, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setPresenter(Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;)V

    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconTint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconTint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const p1, 0x1010038

    invoke-virtual {p4, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemIconSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_navigation_bar_item_default_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemIconSize(I)V

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemTextAppearanceInactive(I)V

    :cond_1
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextAppearanceActive:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemTextAppearanceActive(I)V

    :cond_2
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextColor:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemTextColor:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_5

    :cond_4
    invoke-direct {p0, v6}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->createMaterialShapeDrawableBackground(Landroid/content/Context;)Lcom/google/android/material/shape/i;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingTop:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingTop:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemPaddingTop(I)V

    :cond_6
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingBottom:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemPaddingBottom:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemPaddingBottom(I)V

    :cond_7
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_elevation:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_elevation:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setElevation(F)V

    :cond_8
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_backgroundTint:I

    invoke-static {v6, p2, p1}, Li4/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/h0;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_labelVisibilityMode:I

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/h0;->l(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemBackground:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p4, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    goto :goto_1

    :cond_9
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemRippleColor:I

    invoke-static {v6, p2, p1}, Li4/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/h0;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_itemActiveIndicatorStyle:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemActiveIndicatorEnabled(Z)V

    sget-object v0, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator:[I

    invoke-virtual {v6, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_width:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemActiveIndicatorWidth(I)V

    sget v0, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_height:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemActiveIndicatorHeight(I)V

    sget v0, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_marginHorizontal:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemActiveIndicatorMarginHorizontal(I)V

    sget v0, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_android_color:I

    invoke-static {v6, p1, v0}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    sget v0, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator_shapeAppearance:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {v6, v0, v1}, Lcom/google/android/material/shape/n;->b(Landroid/content/Context;II)Lcom/google/android/material/shape/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/n;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_a
    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_menu:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_b

    sget p1, Lcom/google/android/material/R$styleable;->NavigationBarView_menu:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->inflateMenu(I)V

    :cond_b
    invoke-virtual {p2}, Landroidx/appcompat/widget/h0;->y()V

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/coui/appcompat/material/navigation/NavigationBarView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/material/navigation/NavigationBarView$1;-><init>(Lcom/coui/appcompat/material/navigation/NavigationBarView;)V

    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/material/navigation/NavigationBarView;)Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemReselectedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->reselectedListener:Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemReselectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/material/navigation/NavigationBarView;)Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->selectedListener:Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;

    return-object p0
.end method

.method private createMaterialShapeDrawableBackground(Landroid/content/Context;)Lcom/google/android/material/shape/i;
    .locals 2

    new-instance v0, Lcom/google/android/material/shape/i;

    invoke-direct {v0}, Lcom/google/android/material/shape/i;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    return-object v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method


# virtual methods
.method protected abstract createNavigationBarMenuView(Landroid/content/Context;)Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;
.end method

.method public getBadge(I)Lcom/google/android/material/badge/a;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getBadge(I)Lcom/google/android/material/badge/a;

    move-result-object p0

    return-object p0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorHeight()I

    move-result p0

    return p0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorMarginHorizontal()I

    move-result p0

    return p0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/n;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/n;

    move-result-object p0

    return-object p0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorWidth()I

    move-result p0

    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getItemBackgroundResource()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconSize()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemIconSize()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemPaddingBottom()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemPaddingBottom()I

    move-result p0

    return p0
.end method

.method public getItemPaddingTop()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemPaddingTop()I

    move-result p0

    return p0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemTextAppearanceActive()I

    move-result p0

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemTextAppearanceInactive()I

    move-result p0

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result p0

    return p0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menu:Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

    return-object p0
.end method

.method public getMenuView()Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    return-object p0
.end method

.method public getOrCreateBadge(I)Lcom/google/android/material/badge/a;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getOrCreateBadge(I)Lcom/google/android/material/badge/a;

    move-result-object p0

    return-object p0
.end method

.method public getPresenter()Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->presenter:Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method public inflateMenu(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->presenter:Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menu:Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->presenter:Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->presenter:Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public isItemActiveIndicatorEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemActiveIndicatorEnabled()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/google/android/material/shape/j;->e(Landroid/view/View;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/coui/appcompat/material/navigation/NavigationBarView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/coui/appcompat/material/navigation/NavigationBarView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menu:Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

    iget-object p1, p1, Lcom/coui/appcompat/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/material/navigation/NavigationBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/coui/appcompat/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menu:Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public removeBadge(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->removeBadge(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, Lcom/google/android/material/shape/j;->d(Landroid/view/View;F)V

    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorEnabled(Z)V

    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorHeight(I)V

    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorMarginHorizontal(I)V

    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/n;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/n;)V

    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemActiveIndicatorWidth(I)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemPaddingBottom(I)V

    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemPaddingTop(I)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->itemRippleColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lj4/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menuView:Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setLabelVisibilityMode(I)V

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->presenter:Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemReselectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->reselectedListener:Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemReselectedListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->selectedListener:Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menu:Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->menu:Lcom/coui/appcompat/material/navigation/NavigationBarMenu;

    iget-object p0, p0, Lcom/coui/appcompat/material/navigation/NavigationBarView;->presenter:Lcom/coui/appcompat/material/navigation/NavigationBarPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
