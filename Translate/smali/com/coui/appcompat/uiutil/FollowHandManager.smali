.class public Lcom/coui/appcompat/uiutil/FollowHandManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FollowHandManager"

.field private static sAnchorLocationInWindow:[I

.field private static sAnchorRectInWindow:Landroid/graphics/Rect;

.field private static sClickLocationInWindow:Landroid/graphics/Point;

.field private static sDecorViewRectInWindow:Landroid/graphics/Rect;

.field private static sLimitRectInWindow:Landroid/graphics/Rect;

.field private static sMarginRect:Landroid/graphics/Rect;

.field private static sPaddingRect:Landroid/graphics/Rect;

.field private static sTouchPosition:[I

.field private static sWindowLocationOnScreen:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sWindowLocationOnScreen:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sTouchPosition:[I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sput-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sClickLocationInWindow:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sPaddingRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorLocationInWindow:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePosition(Landroid/content/Context;IIZ)Landroid/graphics/Point;
    .locals 8

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorRectInWindow:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    sget-object p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->TAG:Ljava/lang/String;

    const-string p1, "The AnchorRectInWindow is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sClickLocationInWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->ifSetOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sClickLocationInWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorRectInWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->ifSetOffset()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->sClickLocationInWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorRectInWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getBoundaryBottomInWindow()I

    move-result v4

    sub-int/2addr v4, v2

    sget-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int v7, p2, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v5

    if-lt v4, v7, :cond_3

    add-int/2addr v6, v2

    add-int/2addr v6, p2

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getBoundaryBottomInWindow()I

    move-result p2

    if-ge v6, p2, :cond_4

    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    goto :goto_2

    :cond_3
    sub-int/2addr v3, p2

    sub-int v2, v3, v5

    :cond_4
    :goto_2
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getBoundaryRightInWindow()I

    move-result p2

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v3

    sub-int/2addr p2, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getBoundaryLeftInWindow()I

    move-result p2

    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz p3, :cond_5

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/FollowHandManager;->ifWidthDpIsFullScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sWindowLocationOnScreen:[I

    const/4 p2, 0x0

    aget p0, p0, p2

    if-lez p0, :cond_5

    add-int/2addr p1, p0

    :cond_5
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getBoundaryTopInWindow()I

    move-result p0

    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method

.method public static getAnchorRectInWindow()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorRectInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getBoundaryBottomInWindow()I
    .locals 2

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->TAG:Ljava/lang/String;

    const-string v1, "The sDecorViewRectInWindow is null, must calling init() first"

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sLimitRectInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getBoundaryLeftInWindow()I
    .locals 2

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->TAG:Ljava/lang/String;

    const-string v1, "The sDecorViewRectInWindow is null, must calling init() first"

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sLimitRectInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getBoundaryRightInWindow()I
    .locals 2

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->TAG:Ljava/lang/String;

    const-string v1, "The sDecorViewRectInWindow is null, must calling init() first"

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sLimitRectInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getBoundaryTopInWindow()I
    .locals 2

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->TAG:Ljava/lang/String;

    const-string v1, "The sDecorViewRectInWindow is null, must calling init() first"

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sLimitRectInWindow:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getClickPositionXInWindow()I
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->ifSetOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sTouchPosition:[I

    aget v0, v0, v1

    sget-object v2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorLocationInWindow:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorRectInWindow:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->TAG:Ljava/lang/String;

    const-string v2, "The AnchorRectInWindow is null, must calling init() first"

    invoke-static {v0, v2}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getClickPositionYInWindow()I
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->ifSetOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sTouchPosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sget-object v2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorLocationInWindow:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorRectInWindow:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->TAG:Ljava/lang/String;

    const-string v1, "The AnchorRectInWindow is null, must calling init() first"

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getDecorViewRectInWindow()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getLimitRectInWindow()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sLimitRectInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getMarginRect()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getPaddingRect()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sPaddingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getWindowLocationOnScreen()[I
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sWindowLocationOnScreen:[I

    return-object v0
.end method

.method public static ifSetOffset()Z
    .locals 4

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sTouchPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public static ifWidthDpIsFullScreen(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenWidthRealSize(Landroid/content/Context;)I

    move-result p0

    int-to-double v2, v0

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double p0, v2, v4

    if-eqz p0, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    cmpl-double p0, v2, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static init(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/coui/appcompat/uiutil/FollowHandManager;->init(Landroid/view/View;II)V

    return-void
.end method

.method public static init(Landroid/view/View;II)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->reset()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/coui/appcompat/uiutil/FollowHandManager;->setOffset(II)V

    :cond_1
    const/4 p1, 0x2

    .line 4
    new-array p1, p1, [I

    .line 5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    sput-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    .line 6
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    sput-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorRectInWindow:Landroid/graphics/Rect;

    .line 7
    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 8
    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorRectInWindow:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 9
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 12
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 13
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 14
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 15
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 16
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 18
    aget p2, p1, v0

    .line 19
    aget v1, p1, v2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 21
    aget v3, p1, v0

    .line 22
    aget p1, p1, v2

    .line 23
    sget-object v4, Lcom/coui/appcompat/uiutil/FollowHandManager;->sWindowLocationOnScreen:[I

    sub-int/2addr p2, v3

    aput p2, v4, v0

    sub-int/2addr v1, p1

    .line 24
    aput v1, v4, v2

    .line 25
    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    neg-int p2, p2

    neg-int v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 26
    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sAnchorLocationInWindow:[I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 27
    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sClickLocationInWindow:Landroid/graphics/Point;

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getClickPositionXInWindow()I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 28
    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sClickLocationInWindow:Landroid/graphics/Point;

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->getClickPositionYInWindow()I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 31
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 33
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_3

    .line 34
    sget-object p2, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 35
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sDecorViewRectInWindow:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v2, :cond_4

    .line 36
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 37
    :cond_4
    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-nez p2, :cond_5

    .line 38
    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 39
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-ne p1, v0, :cond_2

    .line 40
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_6
    return-void
.end method

.method private static reset()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/coui/appcompat/uiutil/FollowHandManager;->setOffset(II)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/FollowHandManager;->setLimitRectInWindow(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static setLimitRectInWindow(Landroid/graphics/Rect;)V
    .locals 0

    sput-object p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sLimitRectInWindow:Landroid/graphics/Rect;

    return-void
.end method

.method public static setMargin(Landroid/graphics/Rect;)V
    .locals 0

    sput-object p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sMarginRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static setOffset(II)V
    .locals 2

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sTouchPosition:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    return-void
.end method

.method public static setPadding(Landroid/graphics/Rect;)V
    .locals 0

    sput-object p0, Lcom/coui/appcompat/uiutil/FollowHandManager;->sPaddingRect:Landroid/graphics/Rect;

    return-void
.end method
