.class public final Lcom/coui/component/responsiveui/ResponsiveUI$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/ResponsiveUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coui/component/responsiveui/ResponsiveUI$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)Lcom/coui/component/responsiveui/IResponsiveUI;
    .locals 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowSize"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sget-object v1, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->getWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/coui/component/responsiveui/unit/DpKt;->pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v2

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->getHeight()I

    move-result v3

    invoke-static {v3, p1}, Lcom/coui/component/responsiveui/unit/DpKt;->pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    new-instance v2, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-direct {v2, p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/component/responsiveui/status/WindowStatus;-><init>(ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    new-instance v0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/status/WindowStatus;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->getWidth()I

    move-result p2

    invoke-direct {v0, p1, v1, p2}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;-><init>(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V

    invoke-static {}, Lcom/coui/component/responsiveui/ResponsiveUI;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[init]: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ResponsiveUI"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-direct {p1, v0, p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;-><init>(Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;Lcom/coui/component/responsiveui/status/WindowStatus;)V

    return-object p1
.end method
