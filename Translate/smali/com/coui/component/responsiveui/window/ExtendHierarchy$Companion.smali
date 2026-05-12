.class public final Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/window/ExtendHierarchy;
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
    invoke-direct {p0}, Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final childWindowWidth(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;I)F
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowWidthSizeClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, p3

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;->parentWindowWidth(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;I)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final childWindowWidth(Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;
    .locals 1

    const-string v0, "windowWidthSizeClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowWidth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/window/ExtendHierarchy$Companion;->parentWindowWidth(Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/coui/component/responsiveui/unit/Dp;->minus(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

.method public final parentWindowWidth(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;I)F
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowWidthSizeClass"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->access$getMEDIUM_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->access$getEXPANDED_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p0

    goto :goto_0

    :cond_1
    int-to-float p0, p3

    :goto_0
    return p0
.end method

.method public final parentWindowWidth(Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;
    .locals 0

    const-string p0, "windowWidthSizeClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "windowWidth"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->access$getMEDIUM_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/coui/component/responsiveui/window/ExtendHierarchy;->access$getEXPANDED_EXTEND_HIERARCHY_PARENT_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method
