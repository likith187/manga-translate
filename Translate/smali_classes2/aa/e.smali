.class public Laa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public f:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Laa/e;->a:I

    .line 3
    iput p2, p0, Laa/e;->b:I

    .line 4
    iput p3, p0, Laa/e;->c:I

    .line 5
    iput p4, p0, Laa/e;->f:I

    return-void
.end method

.method public constructor <init>(Laa/d;Laa/h;)V
    .locals 4

    .line 6
    iget-wide v0, p1, Laa/d;->a:D

    double-to-int v0, v0

    iget-wide v1, p1, Laa/d;->b:D

    double-to-int p1, v1

    iget-wide v1, p2, Laa/h;->a:D

    double-to-int v1, v1

    iget-wide v2, p2, Laa/h;->b:D

    double-to-int p2, v2

    invoke-direct {p0, v0, p1, v1, p2}, Laa/e;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public a()Laa/d;
    .locals 5

    new-instance v0, Laa/d;

    iget v1, p0, Laa/e;->a:I

    iget v2, p0, Laa/e;->c:I

    add-int/2addr v1, v2

    int-to-double v1, v1

    iget v3, p0, Laa/e;->b:I

    iget p0, p0, Laa/e;->f:I

    add-int/2addr v3, p0

    int-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Laa/d;-><init>(DD)V

    return-object v0
.end method

.method public b()Laa/e;
    .locals 4

    new-instance v0, Laa/e;

    iget v1, p0, Laa/e;->a:I

    iget v2, p0, Laa/e;->b:I

    iget v3, p0, Laa/e;->c:I

    iget p0, p0, Laa/e;->f:I

    invoke-direct {v0, v1, v2, v3, p0}, Laa/e;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Laa/e;->b()Laa/e;

    move-result-object p0

    return-object p0
.end method

.method public d()Laa/h;
    .locals 5

    new-instance v0, Laa/h;

    iget v1, p0, Laa/e;->c:I

    int-to-double v1, v1

    iget p0, p0, Laa/e;->f:I

    int-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Laa/h;-><init>(DD)V

    return-object v0
.end method

.method public e()Laa/d;
    .locals 5

    new-instance v0, Laa/d;

    iget v1, p0, Laa/e;->a:I

    int-to-double v1, v1

    iget p0, p0, Laa/e;->b:I

    int-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Laa/d;-><init>(DD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Laa/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Laa/e;

    iget v1, p0, Laa/e;->a:I

    iget v3, p1, Laa/e;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Laa/e;->b:I

    iget v3, p1, Laa/e;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Laa/e;->c:I

    iget v3, p1, Laa/e;->c:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Laa/e;->f:I

    iget p1, p1, Laa/e;->f:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Laa/e;->f:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    iget v3, p0, Laa/e;->c:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    iget v3, p0, Laa/e;->a:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    iget p0, p0, Laa/e;->b:I

    int-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laa/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laa/e;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laa/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Laa/e;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
