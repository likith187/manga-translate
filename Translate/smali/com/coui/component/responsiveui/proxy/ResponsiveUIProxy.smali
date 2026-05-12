.class public final Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/component/responsiveui/IResponsiveUI;
.implements Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;
.implements Lcom/coui/component/responsiveui/status/IWindowStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy$Companion;

.field private static final e:Z


# instance fields
.field private final synthetic a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

.field private final synthetic b:Lcom/coui/component/responsiveui/status/WindowStatus;

.field private final c:Lcom/coui/component/responsiveui/status/WindowStatus;

.field private final d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->Companion:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy$Companion;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ResponsiveUIProxy"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;Lcom/coui/component/responsiveui/status/WindowStatus;)V
    .locals 1

    const-string v0, "layoutGridSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    iput-object p2, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->b:Lcom/coui/component/responsiveui/status/WindowStatus;

    iput-object p2, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->c:Lcom/coui/component/responsiveui/status/WindowStatus;

    iput-object p1, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    return-void
.end method


# virtual methods
.method public allColumnWidth()[[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->allColumnWidth()[[I

    move-result-object p0

    return-object p0
.end method

.method public allMargin()[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->allMargin()[I

    move-result-object p0

    return-object p0
.end method

.method public chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;
    .locals 1

    const-string v0, "marginType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;

    move-result-object p0

    return-object p0
.end method

.method public columnCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->columnCount()I

    move-result p0

    return p0
.end method

.method public columnWidth()[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->columnWidth()[I

    move-result-object p0

    return-object p0
.end method

.method public gutter()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->gutter()I

    move-result p0

    return p0
.end method

.method public layoutGridWindowSize()Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->b:Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/status/WindowStatus;->layoutGridWindowSize()Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    move-result-object p0

    return-object p0
.end method

.method public layoutGridWindowWidth()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->layoutGridWindowWidth()I

    move-result p0

    return p0
.end method

.method public margin()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->margin()I

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-void
.end method

.method public rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->c:Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/status/WindowStatus;->setOrientation(I)V

    invoke-virtual {v0, p2}, Lcom/coui/component/responsiveui/status/WindowStatus;->setLayoutGridWindowSize(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

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

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/status/WindowStatus;->setWindowSizeClass(Lcom/coui/component/responsiveui/window/WindowSizeClass;)V

    iget-object v0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    iget-object v1, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->c:Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/status/WindowStatus;->getWindowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->getWidth()I

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V

    sget-boolean p1, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->e:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[rebuild]: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->c:Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponsiveUIProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public showLayoutGridInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public showWindowStatusInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->c:Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public width(II)I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->a:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->width(II)I

    move-result p0

    return p0
.end method

.method public windowOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->b:Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/status/WindowStatus;->windowOrientation()I

    move-result p0

    return p0
.end method

.method public windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->b:Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/status/WindowStatus;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    return-object p0
.end method
