.class public final Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;
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
    invoke-direct {p0}, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final _hide_fromHeight(F)Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;
    .locals 0

    sget-object p0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_MEDIUM_WINDOW_BASE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coui/component/responsiveui/breakpoints/Breakpoints;->BP_EXPANDED_WINDOW_BASE_HEIGHT:Lcom/coui/component/responsiveui/unit/Dp;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    sget-object p0, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    :goto_0
    return-object p0
.end method

.method public final fromHeight(Landroid/content/Context;I)Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->access$getDEBUG$cp()Z

    move-result v0

    const-string v1, "WindowHeightSizeClass"

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fromHeight] height : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pixel"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p2, :cond_1

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "height :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and Build.VERSION.SDK_INT:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    return-object p0

    :cond_1
    int-to-float p2, p2

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;->_hide_fromHeight(F)Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    move-result-object p0

    return-object p0
.end method

.method public final fromHeight(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;
    .locals 3

    const-string v0, "height"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->access$getDEBUG$cp()Z

    move-result v0

    const-string v1, "WindowHeightSizeClass"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fromHeight] height : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "height :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " and Build.VERSION.SDK_INT:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass$Companion;->_hide_fromHeight(F)Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    move-result-object p0

    return-object p0
.end method
