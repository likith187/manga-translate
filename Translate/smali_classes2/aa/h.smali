.class public Laa/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v0, v1}, Laa/h;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Laa/h;->a:D

    .line 3
    iput-wide p3, p0, Laa/h;->b:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Laa/h;->b([D)V

    return-void
.end method


# virtual methods
.method public a()Laa/h;
    .locals 5

    new-instance v0, Laa/h;

    iget-wide v1, p0, Laa/h;->a:D

    iget-wide v3, p0, Laa/h;->b:D

    invoke-direct {v0, v1, v2, v3, v4}, Laa/h;-><init>(DD)V

    return-object v0
.end method

.method public b([D)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Laa/h;->a:D

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-wide v0, p1, v3

    :cond_1
    iput-wide v0, p0, Laa/h;->b:D

    goto :goto_1

    :cond_2
    iput-wide v0, p0, Laa/h;->a:D

    iput-wide v0, p0, Laa/h;->b:D

    :goto_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Laa/h;->a()Laa/h;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Laa/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Laa/h;

    iget-wide v3, p0, Laa/h;->a:D

    iget-wide v5, p1, Laa/h;->a:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Laa/h;->b:D

    iget-wide p0, p1, Laa/h;->b:D

    cmpl-double p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Laa/h;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    iget-wide v3, p0, Laa/h;->a:D

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

    iget-wide v1, p0, Laa/h;->a:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Laa/h;->b:D

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
