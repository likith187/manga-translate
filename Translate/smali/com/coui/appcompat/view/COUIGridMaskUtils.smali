.class public Lcom/coui/appcompat/view/COUIGridMaskUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "COUIGridMaskUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectMask(Landroid/app/Activity;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-static {p0, v0}, Lcom/coui/appcompat/view/COUIGridMaskUtils;->injectMask(Landroid/app/Activity;Lcom/coui/component/responsiveui/layoutgrid/MarginType;)V

    return-void
.end method

.method public static injectMask(Landroid/app/Activity;Lcom/coui/component/responsiveui/layoutgrid/MarginType;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/coui/appcompat/view/COUIGridMaskUtils;->isMaskAlreadyExist(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;->setMarginType(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)V

    const p1, 0x1020002

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static isMaskAlreadyExist(Landroid/app/Activity;)Z
    .locals 3

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static removeMask(Landroid/app/Activity;)V
    .locals 3

    invoke-static {p0}, Lcom/coui/appcompat/view/COUIGridMaskUtils;->isMaskAlreadyExist(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_1

    const-string p0, "COUIGridMaskUtils"

    const-string v0, "removeMask: content is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/view/COUIResponsiveGridMaskView;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
