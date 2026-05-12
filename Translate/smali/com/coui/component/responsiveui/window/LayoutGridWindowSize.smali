.class public final Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    iput p2, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p2, p1}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
    .locals 1

    const-string v0, "windowSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    iget p1, p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    invoke-direct {p0, v0, p1}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;IIILjava/lang/Object;)Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->copy(II)Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    return p0
.end method

.method public final copy(II)Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;
    .locals 0

    new-instance p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    invoke-direct {p0, p1, p2}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    iget v2, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    iget v3, p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    iget p1, p1, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
