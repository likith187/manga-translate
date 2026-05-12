.class public Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/Window;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->updateParentPanel(Landroid/view/Window;Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->updateWindowLocation(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public static adjustToFree(Landroid/view/Window;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->adjustToFree(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;)V

    return-void
.end method

.method public static adjustToFree(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->adjustToFree(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public static adjustToFree(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    const/4 v0, -0x2

    .line 3
    invoke-static {p0, v0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->setWindowWidth(Landroid/view/Window;I)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/16 v0, 0x33

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    .line 6
    sget v0, Lcom/support/dialog/R$style;->Animation_COUI_DialogListWindow:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 7
    new-instance v0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;-><init>(Landroid/view/Window;Landroid/graphics/Point;Landroid/view/View;Landroid/graphics/Point;)V

    invoke-static {p0, v0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->setFirstLayoutListener(Landroid/view/Window;Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;)V

    return-void
.end method

.method private static dpToPx(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static getDimensionPixel(Landroid/view/Window;II)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p2
.end method

.method private static getDrawable(Landroid/view/Window;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLocationRectInScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    aget v0, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private static lerp(III)I
    .locals 0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static offsetWindowTo(Landroid/view/Window;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static setFirstLayoutListener(Landroid/view/Window;Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;-><init>(Landroid/view/Window;Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static setWindowWidth(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static updateParentPanel(Landroid/view/Window;Z)V
    .locals 6

    sget v0, Lcom/support/dialog/R$id;->parentPanel:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget p1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_four:I

    invoke-static {p0, p1, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->getDimensionPixel(Landroid/view/Window;II)I

    move-result p1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/coui/appcompat/uiutil/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getDecorViewRectInWindow()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/uiutil/FollowHandManager;->ifWidthDpIsFullScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getWindowLocationOnScreen()[I

    move-result-object v3

    aget v3, v3, v1

    if-lez v3, :cond_0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const v4, 0x800033

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getWindowLocationOnScreen()[I

    move-result-object v4

    aget v4, v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getWindowLocationOnScreen()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-static {v2, v1}, Lcom/coui/appcompat/uiutil/UIUtil;->safeForceHasOverlappingRendering(Landroid/view/View;Z)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$color;->coui_dialog_follow_hand_spot_shadow_color:I

    invoke-static {v1, v2}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v0, v2, p1, v1}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    check-cast p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    sget v2, Lcom/support/dialog/R$dimen;->coui_dialog_max_width:I

    invoke-static {p0, v2, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->getDimensionPixel(Landroid/view/Window;II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMaxWidth(I)V

    :goto_0
    sget p1, Lcom/support/dialog/R$drawable;->coui_alert_dialog_builder_background:I

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->getDrawable(Landroid/view/Window;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method private static updateWindowLocation(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->offsetWindowTo(Landroid/view/Window;II)V

    return-void

    :cond_0
    sget v0, Lcom/support/dialog/R$dimen;->coui_alert_dialog_layout_anchor_view_padding_top:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->getDimensionPixel(Landroid/view/Window;II)I

    move-result v0

    sget v2, Lcom/support/dialog/R$id;->parentPanel:I

    invoke-virtual {p0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {p2, v2, v3, v1}, Lcom/coui/appcompat/uiutil/FollowHandManager;->calculatePosition(Landroid/content/Context;IIZ)Landroid/graphics/Point;

    move-result-object p2

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getClickPositionYInWindow()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    iget v3, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {p2, v2, v3, v1}, Lcom/coui/appcompat/uiutil/FollowHandManager;->calculatePosition(Landroid/content/Context;IIZ)Landroid/graphics/Point;

    move-result-object p2

    :cond_2
    :goto_0
    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getDecorViewRectInWindow()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_3

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Point;->y:I

    :cond_3
    instance-of p3, p0, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getWindowLocationOnScreen()[I

    move-result-object v2

    aget v1, v2, v1

    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_4
    invoke-static {p1}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getDecorViewRectInWindow()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_5
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_1
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method
