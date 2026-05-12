.class public final Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/window/WindowSizeClass;
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
    invoke-direct {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;
    .locals 3

    const-string p0, "width"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "height"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    invoke-virtual {v0, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object v0

    sget-object v1, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;

    invoke-virtual {v1, p2}, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;->fromHeight(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    move-result-object v1

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;

    invoke-virtual {v2, p1, p2}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;->fromWidthAndHeight(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/coui/component/responsiveui/window/WindowSizeClass;-><init>(Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
