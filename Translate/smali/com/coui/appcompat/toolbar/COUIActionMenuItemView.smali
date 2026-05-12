.class public Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;
.super Landroidx/appcompat/view/menu/ActionMenuItemView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "COUIActionMenuItemView"


# instance fields
.field private mIconMenuMinWidth:I

.field private mIsText:Z

.field private mMarginEnd:I

.field private mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

.field private mPaddingHorizontal:I

.field private mPaddingVertical:I

.field private mTextMenuItemMaxWidth:I

.field private mTextPaddingHorizontal:I

.field private mTextPaddingVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_bg_padding_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mPaddingHorizontal:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/toolbar/R$dimen;->coui_toolbar_menu_bg_padding_vertical:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mPaddingVertical:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/toolbar/R$dimen;->coui_toolbar_text_menu_bg_padding_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mTextPaddingHorizontal:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/toolbar/R$dimen;->coui_toolbar_text_menu_bg_padding_vertical:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mTextPaddingVertical:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/toolbar/R$dimen;->coui_action_menu_item_view_margin_end:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mMarginEnd:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/toolbar/R$dimen;->coui_action_menu_item_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mIconMenuMinWidth:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_action_bar_text_menu_item_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mTextMenuItemMaxWidth:I

    return-void
.end method

.method private configMenuIconBackground()V
    .locals 3

    new-instance v0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->getMaskRippleRadiusByType(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setCircleRippleMask(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, v2}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-void
.end method

.method private setReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setReflectField error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIActionMenuItemView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "android.widget.Button"

    return-object p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mIsText:Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mIsText:Z

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mTextMenuItemMaxWidth:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mIconMenuMinWidth:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-class v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    const-string v1, "mMinWidth"

    invoke-direct {p0, v0, p0, v1, p2}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->setReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->configMenuIconBackground()V

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mPaddingHorizontal:I

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mPaddingVertical:I

    invoke-virtual {p0, p2, v0, p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPadding(IIII)V

    :goto_1
    iget-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mIsText:Z

    if-eqz p2, :cond_2

    const/4 v0, -0x2

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez p2, :cond_3

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mMarginEnd:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isTextMenuItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mIsText:Z

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/toolbar/R$dimen;->coui_action_menu_item_view_margin_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mMarginEnd:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mMarginEnd:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/m0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->refresh(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/m0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method setItemWithGap(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mIsText:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->mMarginEnd:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/m0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
