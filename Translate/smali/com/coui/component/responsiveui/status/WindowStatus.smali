.class public final Lcom/coui/component/responsiveui/status/WindowStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/component/responsiveui/status/IWindowStatus;


# instance fields
.field private a:I

.field private b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

.field private c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;


# direct methods
.method public constructor <init>(ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
    .locals 1

    const-string v0, "windowSizeClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutGridWindowSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    .line 3
    iput-object p2, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    .line 4
    iput-object p3, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/component/responsiveui/status/WindowStatus;-><init>(ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/coui/component/responsiveui/status/WindowStatus;ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;ILjava/lang/Object;)Lcom/coui/component/responsiveui/status/WindowStatus;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/component/responsiveui/status/WindowStatus;->copy(ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)Lcom/coui/component/responsiveui/status/WindowStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    return p0
.end method

.method public final component2()Lcom/coui/component/responsiveui/window/WindowSizeClass;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    return-object p0
.end method

.method public final component3()Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    return-object p0
.end method

.method public final copy(ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)Lcom/coui/component/responsiveui/status/WindowStatus;
    .locals 0

    const-string p0, "windowSizeClass"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layoutGridWindowSize"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coui/component/responsiveui/status/WindowStatus;

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/component/responsiveui/status/WindowStatus;-><init>(ILcom/coui/component/responsiveui/window/WindowSizeClass;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coui/component/responsiveui/status/WindowStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coui/component/responsiveui/status/WindowStatus;

    iget v1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    iget v3, p1, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    iget-object v3, p1, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    iget-object p1, p1, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLayoutGridWindowSize()Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    return-object p0
.end method

.method public final getOrientation()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    return p0
.end method

.method public final getWindowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public layoutGridWindowSize()Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    return-object p0
.end method

.method public final setLayoutGridWindowSize(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    return-void
.end method

.method public final setWindowSizeClass(Lcom/coui/component/responsiveui/window/WindowSizeClass;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowStatus { orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowSizeClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->c:Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public windowOrientation()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->a:I

    return p0
.end method

.method public windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowStatus;->b:Lcom/coui/component/responsiveui/window/WindowSizeClass;

    return-object p0
.end method
