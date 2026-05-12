.class public Lcom/coui/appcompat/view/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    if-eq v1, p0, :cond_2

    instance-of p0, v1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static getContentViewOverlay(Landroid/view/View;)Landroid/view/ViewOverlay;
    .locals 0

    invoke-static {p0}, Lcom/coui/appcompat/view/ViewUtil;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/view/ViewUtil;->getOverlay(Landroid/view/View;)Landroid/view/ViewOverlay;

    move-result-object p0

    return-object p0
.end method

.method private static getOverlay(Landroid/view/View;)Landroid/view/ViewOverlay;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    return-object p0
.end method
