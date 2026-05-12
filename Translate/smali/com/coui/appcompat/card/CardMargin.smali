.class public final Lcom/coui/appcompat/card/CardMargin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final firstColumnInner:I

.field private final firstColumnOuter:I

.field private final firstRowTop:I

.field private final otherRowTop:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/card/CardMargin;->firstRowTop:I

    iput p2, p0, Lcom/coui/appcompat/card/CardMargin;->otherRowTop:I

    iput p3, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnOuter:I

    iput p4, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnInner:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/coui/appcompat/card/CardMargin;IIIIILjava/lang/Object;)Lcom/coui/appcompat/card/CardMargin;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/coui/appcompat/card/CardMargin;->firstRowTop:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/coui/appcompat/card/CardMargin;->otherRowTop:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnOuter:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnInner:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/card/CardMargin;->copy(IIII)Lcom/coui/appcompat/card/CardMargin;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstRowTop:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->otherRowTop:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnOuter:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnInner:I

    return p0
.end method

.method public final copy(IIII)Lcom/coui/appcompat/card/CardMargin;
    .locals 0

    new-instance p0, Lcom/coui/appcompat/card/CardMargin;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/card/CardMargin;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coui/appcompat/card/CardMargin;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coui/appcompat/card/CardMargin;

    iget v1, p0, Lcom/coui/appcompat/card/CardMargin;->firstRowTop:I

    iget v3, p1, Lcom/coui/appcompat/card/CardMargin;->firstRowTop:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/card/CardMargin;->otherRowTop:I

    iget v3, p1, Lcom/coui/appcompat/card/CardMargin;->otherRowTop:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnOuter:I

    iget v3, p1, Lcom/coui/appcompat/card/CardMargin;->firstColumnOuter:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnInner:I

    iget p1, p1, Lcom/coui/appcompat/card/CardMargin;->firstColumnInner:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFirstColumnInner()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnInner:I

    return p0
.end method

.method public final getFirstColumnOuter()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnOuter:I

    return p0
.end method

.method public final getFirstRowTop()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstRowTop:I

    return p0
.end method

.method public final getOtherRowTop()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->otherRowTop:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/card/CardMargin;->firstRowTop:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coui/appcompat/card/CardMargin;->otherRowTop:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnOuter:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnInner:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardMargin(firstRowTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/card/CardMargin;->firstRowTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", otherRowTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/card/CardMargin;->otherRowTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstColumnOuter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnOuter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstColumnInner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/card/CardMargin;->firstColumnInner:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
