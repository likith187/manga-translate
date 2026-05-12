.class public Lcom/coui/appcompat/panel/COUIPanelFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;
    }
.end annotation


# static fields
.field private static final ENTER_MASK_ALPHA_ANIM_DURATION:J = 0x15eL

.field private static final ENTER_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXIT_MASK_ALPHA_ANIM_DURATION:J = 0x12cL

.field private static final EXIT_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MASK_ALPHA:J = 0xffL

.field private static final SAVE_IS_IN_TINY_SCREEN_PANEL_KEY:Ljava/lang/String; = "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

.field private static final SAVE_IS_SHOW_IN_FIRST_PANEL_KEY:Ljava/lang/String; = "SAVE_IS_SHOW_IN_FIRST_PANEL_KEY"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mDragPanelListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

.field private mDragView:Landroid/view/View;

.field protected mIsInTinyScreen:Z

.field private mIsShowOnFirstPanel:Ljava/lang/Boolean;

.field private mOutSideViewOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

.field private mPanelFragmentAnimationListener:Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;

.field private mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

.field private mTitleView:Landroid/view/View;

.field private mTitleViewLayout:Landroid/widget/FrameLayout;

.field private mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3e851eb8    # 0.26f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelFragment;->ENTER_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelFragment;->EXIT_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelFragmentAnimationListener:Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelContentLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    return-object p0
.end method

.method private ensurePanelView()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/support/panel/R$layout;->coui_panel_view_layout_tiny:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/support/panel/R$layout;->coui_panel_view_layout:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    :cond_1
    return-void
.end method

.method private setBottomButtonBar(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 8

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->ensurePanelView()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/4 v1, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setUpBottomBar(ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCenterButton()Landroid/widget/Button;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p0, :cond_0

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getContentResId()I
    .locals 0

    sget p0, Lcom/support/panel/R$id;->panel_container:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public getDialogOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public getDragPanelListener()Lcom/coui/appcompat/panel/COUIPanelDragListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragPanelListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    return-object p0
.end method

.method protected getDragView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragView:Landroid/view/View;

    return-object p0
.end method

.method public getDragViewHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    return-object p0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p0, :cond_0

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutSideViewOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mOutSideViewOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public getPanelBarView()Lcom/coui/appcompat/panel/COUIPanelBarView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    return-object p0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p0, :cond_0

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getShowOnFirstPanel()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleView:Landroid/view/View;

    return-object p0
.end method

.method public getToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    return-object p0
.end method

.method public getToolbarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideDragView()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_drag_view_hide_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAbandon(Ljava/lang/Boolean;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setOutSideViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "SAVE_IS_SHOW_IN_FIRST_PANEL_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setPanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;Ljava/lang/Boolean;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public onAdd(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/panel/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$color;->coui_color_mask:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget v2, Lcom/support/appcompat/R$anim;->coui_open_slide_exit:I

    if-ne p3, v2, :cond_0

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/coui/appcompat/panel/COUIPanelFragment;->EXIT_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/coui/appcompat/panel/COUIPanelFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelFragment;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    sget v4, Lcom/support/appcompat/R$anim;->coui_close_slide_enter:I

    if-ne p3, v4, :cond_1

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coui/appcompat/panel/COUIPanelFragment;->ENTER_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelFragment$2;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment$2;-><init>(Lcom/coui/appcompat/panel/COUIPanelFragment;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelFragment$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIPanelFragment$3;-><init>(Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    new-instance p1, Lcom/coui/appcompat/panel/COUIPanelFragment$4;

    invoke-direct {p1, p0, v1, v2}, Lcom/coui/appcompat/panel/COUIPanelFragment$4;-><init>(Lcom/coui/appcompat/panel/COUIPanelFragment;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v3

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v1, "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/support/panel/R$layout;->coui_panel_view_layout_tiny:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/support/panel/R$layout;->coui_panel_view_layout:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragView:Landroid/view/View;

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getPanelBarView()Lcom/coui/appcompat/panel/COUIPanelBarView;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    sget p3, Lcom/support/panel/R$layout;->coui_panel_layout:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/support/panel/R$id;->bottom_sheet_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget p2, Lcom/support/panel/R$id;->title_view_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getContentResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mContentView:Landroid/view/View;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->addContentView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    return-object p0
.end method

.method public onHide(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "SAVE_IS_SHOW_IN_FIRST_PANEL_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShow(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public setIsInTinyScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    return-void
.end method

.method public setOutSideViewOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mOutSideViewOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragPanelListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    return-void
.end method

.method public setPanelFragmentAnimationListener(Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelFragmentAnimationListener:Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;

    return-void
.end method

.method protected setShowOnFirstPanel(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    return-void
.end method

.method public setTitleView(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setTitleView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleView:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleView:Landroid/view/View;

    .line 7
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setToolbar(Lcom/coui/appcompat/toolbar/COUIToolbar;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    :cond_0
    return-void
.end method

.method public showDragView()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_drag_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
