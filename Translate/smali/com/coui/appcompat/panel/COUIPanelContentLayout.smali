.class public Lcom/coui/appcompat/panel/COUIPanelContentLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuConfigRule;


# static fields
.field private static final PANEL_OUTSETS:Landroid/graphics/Rect;


# instance fields
.field private mCOUIPanelPressHelper:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mIsLayoutAtMaxHeight:Z

.field public mIsTurnOnAnim:Z

.field private final mPanelHorizontalPadding:I

.field private mPopupRuleEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->PANEL_OUTSETS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mPopupRuleEnable:Z

    .line 5
    new-instance p2, Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    invoke-direct {p2}, Lcom/coui/appcompat/panel/COUIPanelPressHelper;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mCOUIPanelPressHelper:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/panel/R$dimen;->coui_bottom_sheet_content_horizontal_padding_with_card:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mPanelHorizontalPadding:I

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Landroid/view/View;ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->lambda$setDragViewPressAnim$0(Landroid/view/View;ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private getNavigationBarHeight(Landroid/view/WindowInsets;Landroid/content/res/Configuration;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private initButton(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isBigScreen(Landroid/content/res/Configuration;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$bool;->is_coui_bottom_sheet_dialog_in_big_screen:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$bool;->is_coui_bottom_sheet_dialog_in_big_screen:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setDragViewPressAnim$0(Landroid/view/View;ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean p4, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mIsTurnOnAnim:Z

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mCOUIPanelPressHelper:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->startAnim(Landroid/view/View;)V

    :cond_2
    :goto_0
    return p4
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/support/panel/R$id;->panel_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public dragBgEndAnim()V
    .locals 1

    sget v0, Lcom/support/panel/R$id;->tv_drag_press_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mCOUIPanelPressHelper:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->endAnim(Landroid/view/View;)V

    return-void
.end method

.method public getBarrierDirection()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;
    .locals 1

    sget v0, Lcom/support/panel/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    return-object p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mDisplayFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mDisplayFrame:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mPanelHorizontalPadding:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    sget v0, Lcom/support/panel/R$id;->divider_line:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDragBgView()Landroid/view/View;
    .locals 1

    sget v0, Lcom/support/panel/R$id;->tv_drag_press_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDragView()Landroid/widget/ImageView;
    .locals 1

    sget v0, Lcom/support/panel/R$id;->drag_img:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public getDrawLayout()Landroid/widget/FrameLayout;
    .locals 1

    sget v0, Lcom/support/panel/R$id;->drag_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getLayoutAtMaxHeight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mIsLayoutAtMaxHeight:Z

    return p0
.end method

.method public getMaxHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p0

    return p0
.end method

.method public getOutsets()Landroid/graphics/Rect;
    .locals 0

    sget-object p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->PANEL_OUTSETS:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPanelBarView()Lcom/coui/appcompat/panel/COUIPanelBarView;
    .locals 1

    sget v0, Lcom/support/panel/R$id;->panel_drag_bar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIPanelBarView;

    return-object p0
.end method

.method public getPopupMenuRuleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mPopupRuleEnable:Z

    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method refresh()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/panel/R$drawable;->coui_pannel_press_shadow_bg:I

    invoke-static {v0, v1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/support/panel/R$id;->tv_drag_press_bg:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public removeContentView()V
    .locals 1

    sget v0, Lcom/support/panel/R$id;->panel_content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeDragViewPressAnim()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget v0, Lcom/support/panel/R$id;->tv_drag_press_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setCenterButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->initButton(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 1

    sget v0, Lcom/support/panel/R$id;->divider_line:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    sget v0, Lcom/support/panel/R$id;->drag_img:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDragViewDrawableTintColor(I)V
    .locals 1

    sget v0, Lcom/support/panel/R$id;->drag_img:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setDragViewPressAnim(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget v0, Lcom/support/panel/R$id;->tv_drag_press_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/coui/appcompat/panel/e;

    invoke-direct {v1, p0, v0, p1}, Lcom/coui/appcompat/panel/e;-><init>(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setLayoutAtMaxHeight(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mIsLayoutAtMaxHeight:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->initButton(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNavigationMargin(Landroid/content/res/Configuration;ILandroid/view/WindowInsets;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isGestureNavigation(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isDisplayInUpperWindow(Landroid/app/Activity;)Z

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->isBigScreen(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-direct {p0, p3, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getNavigationBarHeight(Landroid/view/WindowInsets;Landroid/content/res/Configuration;)I

    move-result p1

    sget p3, Lcom/support/panel/R$id;->panel_content:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p3

    sget v2, Lcom/support/panel/R$id;->coordinator:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    sget v3, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->isIsHandlePanel()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    move v2, p1

    move p1, v5

    :cond_3
    :goto_1
    const/4 p2, 0x3

    invoke-static {p0, p2, p1}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->setMargin(Landroid/view/View;II)V

    invoke-static {p3, p2, v2}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->setMargin(Landroid/view/View;II)V

    :cond_4
    return-void
.end method

.method public setPopupMenuRuleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->mPopupRuleEnable:Z

    return-void
.end method

.method public setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->initButton(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUpBottomBar(ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDividerVisibility(Z)V

    sget p1, Lcom/support/panel/R$id;->bottom_bar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_bottom_bar_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButDividerVerMargin(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_bottom_button_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButVerPadding(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_bottom_bar_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerPaddingBottom(I)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButPaddingOffset(I)V

    const p1, 0x102001a

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x1020019

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->initButton(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0, p4, p5}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->initButton(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v1, p6, p7}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->initButton(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
