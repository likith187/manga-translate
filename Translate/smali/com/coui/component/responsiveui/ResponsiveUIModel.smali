.class public final Lcom/coui/component/responsiveui/ResponsiveUIModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/ResponsiveUIModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/ResponsiveUIModel$Companion;

.field private static final d:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

.field private final c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->Companion:Lcom/coui/component/responsiveui/ResponsiveUIModel$Companion;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ResponsiveUIModel"

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
    sput-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {v1, p2}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    new-instance p2, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {p2, p3}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-direct {v0, p1, v1, p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(Landroid/content/Context;Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)V

    invoke-direct {p0, p1, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-direct {v0, p2, p3}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
    .locals 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mWindowSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    .line 2
    new-instance p2, Lcom/coui/component/responsiveui/status/WindowStatus;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 4
    sget-object v1, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    .line 5
    iget-object v2, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->getWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/coui/component/responsiveui/unit/DpKt;->pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {v3}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->getHeight()I

    move-result v3

    invoke-static {v3, p1}, Lcom/coui/component/responsiveui/unit/DpKt;->pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    iget-object v3, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-direct {v2, v3}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    .line 9
    invoke-direct {p2, v0, v1, v2}, Lcom/coui/component/responsiveui/status/WindowStatus;-><init>(ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    .line 10
    new-instance v0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/status/WindowStatus;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->getWidth()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;-><init>(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V

    .line 11
    sget-boolean p1, Lcom/coui/component/responsiveui/ResponsiveUIModel;->d:Z

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[init]: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ResponsiveUIModel"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    new-instance p1, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-direct {p1, v0, p2}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;-><init>(Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;Lcom/coui/component/responsiveui/status/WindowStatus;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    return-void
.end method


# virtual methods
.method public final allColumnWidth()[[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->allColumnWidth()[[I

    move-result-object p0

    return-object p0
.end method

.method public final allMargin()[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->allMargin()[I

    move-result-object p0

    return-object p0
.end method

.method public final calculateGridWidth(I)I
    .locals 1

    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->columnCount()I

    move-result v0

    if-le p1, v0, :cond_1

    sget-boolean p1, Lcom/coui/component/responsiveui/ResponsiveUIModel;->d:Z

    if-eqz p1, :cond_0

    const-string p1, "ResponsiveUIModel"

    const-string v0, "calculateGridWidth: requested grid number larger then current grid total number, fill the whole grid"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->columnCount()I

    move-result p1

    :cond_1
    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->columnCount()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->width(II)I

    move-result p0

    return p0
.end method

.method public final chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;
    .locals 1

    const-string v0, "marginType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {v0, p1}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;

    return-object p0
.end method

.method public final columnCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->columnCount()I

    move-result p0

    return p0
.end method

.method public final columnWidth()[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->columnWidth()[I

    move-result-object p0

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final getMWindowSize()Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    return-object p0
.end method

.method public final getResponsiveUI()Lcom/coui/component/responsiveui/IResponsiveUI;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    return-object p0
.end method

.method public final gutter()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->gutter()I

    move-result p0

    return p0
.end method

.method public final layoutGridWindowSize()Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->layoutGridWindowSize()Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    move-result-object p0

    return-object p0
.end method

.method public final layoutGridWindowWidth()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->layoutGridWindowWidth()I

    move-result p0

    return p0
.end method

.method public final margin()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->margin()I

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-direct {v1, v2}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    iget-object v2, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->setWidth(I)V

    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p1, p1

    invoke-direct {v1, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    iget-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->setHeight(I)V

    iget-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {p1, v0, p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-void
.end method

.method public final rebuild(FF)Lcom/coui/component/responsiveui/ResponsiveUIModel;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {v1, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    iget-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->setWidth(I)V

    .line 4
    iget-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {v0, p2}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    iget-object p2, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->setHeight(I)V

    .line 5
    iget-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    iget-object p2, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {p1, p2, v0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-object p0
.end method

.method public final rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {v0, p1}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->setWidth(I)V

    .line 7
    iget-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {p1, p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->setHeight(I)V

    .line 8
    iget-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    iget-object p2, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {p1, p2, v0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-object p0
.end method

.method public final rebuild(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)Lcom/coui/component/responsiveui/ResponsiveUIModel;
    .locals 2

    const-string v0, "windowSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    .line 2
    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    iget-object v1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-object p0
.end method

.method public final setMWindowSize(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->b:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    return-void
.end method

.method public final showLayoutGridInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->showLayoutGridInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final showWindowStatusInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->showWindowStatusInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final width(II)I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->width(II)I

    move-result p0

    return p0
.end method

.method public final windowOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->windowOrientation()I

    move-result p0

    return p0
.end method

.method public final windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIModel;->c:Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/proxy/ResponsiveUIProxy;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    return-object p0
.end method
