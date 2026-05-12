.class public Laa/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Laa/d;

.field public b:Laa/h;

.field public c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Laa/d;

    invoke-direct {v0}, Laa/d;-><init>()V

    iput-object v0, p0, Laa/f;->a:Laa/d;

    .line 3
    new-instance v0, Laa/h;

    invoke-direct {v0}, Laa/h;-><init>()V

    iput-object v0, p0, Laa/f;->b:Laa/h;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Laa/f;->c:D

    return-void
.end method

.method public constructor <init>(Laa/d;Laa/h;D)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Laa/d;->a()Laa/d;

    move-result-object p1

    iput-object p1, p0, Laa/f;->a:Laa/d;

    .line 7
    invoke-virtual {p2}, Laa/h;->a()Laa/h;

    move-result-object p1

    iput-object p1, p0, Laa/f;->b:Laa/h;

    .line 8
    iput-wide p3, p0, Laa/f;->c:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 9
    invoke-direct {p0}, Laa/f;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Laa/f;->d([D)V

    return-void
.end method


# virtual methods
.method public a()Laa/f;
    .locals 5

    new-instance v0, Laa/f;

    iget-object v1, p0, Laa/f;->a:Laa/d;

    iget-object v2, p0, Laa/f;->b:Laa/h;

    iget-wide v3, p0, Laa/f;->c:D

    invoke-direct {v0, v1, v2, v3, v4}, Laa/f;-><init>(Laa/d;Laa/h;D)V

    return-object v0
.end method

.method public b([Laa/d;)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Laa/f;->c:D

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v5

    new-instance v5, Laa/d;

    iget-object v6, v0, Laa/f;->a:Laa/d;

    iget-wide v7, v6, Laa/d;->a:D

    iget-object v9, v0, Laa/f;->b:Laa/h;

    iget-wide v10, v9, Laa/h;->b:D

    mul-double v12, v1, v10

    sub-double/2addr v7, v12

    iget-wide v12, v9, Laa/h;->a:D

    mul-double v14, v3, v12

    sub-double/2addr v7, v14

    iget-wide v14, v6, Laa/d;->b:D

    mul-double/2addr v10, v3

    add-double/2addr v14, v10

    mul-double/2addr v12, v1

    sub-double/2addr v14, v12

    invoke-direct {v5, v7, v8, v14, v15}, Laa/d;-><init>(DD)V

    const/4 v6, 0x0

    aput-object v5, p1, v6

    new-instance v5, Laa/d;

    iget-object v7, v0, Laa/f;->a:Laa/d;

    iget-wide v8, v7, Laa/d;->a:D

    iget-object v10, v0, Laa/f;->b:Laa/h;

    iget-wide v11, v10, Laa/h;->b:D

    mul-double v13, v1, v11

    add-double/2addr v8, v13

    iget-wide v13, v10, Laa/h;->a:D

    mul-double v15, v3, v13

    sub-double/2addr v8, v15

    iget-wide v6, v7, Laa/d;->b:D

    mul-double/2addr v3, v11

    sub-double/2addr v6, v3

    mul-double/2addr v1, v13

    sub-double/2addr v6, v1

    invoke-direct {v5, v8, v9, v6, v7}, Laa/d;-><init>(DD)V

    const/4 v1, 0x1

    aput-object v5, p1, v1

    new-instance v2, Laa/d;

    iget-object v3, v0, Laa/f;->a:Laa/d;

    iget-wide v4, v3, Laa/d;->a:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget-wide v9, v8, Laa/d;->a:D

    sub-double/2addr v4, v9

    iget-wide v9, v3, Laa/d;->b:D

    mul-double/2addr v9, v6

    iget-wide v11, v8, Laa/d;->b:D

    sub-double/2addr v9, v11

    invoke-direct {v2, v4, v5, v9, v10}, Laa/d;-><init>(DD)V

    const/4 v3, 0x2

    aput-object v2, p1, v3

    new-instance v2, Laa/d;

    iget-object v0, v0, Laa/f;->a:Laa/d;

    iget-wide v3, v0, Laa/d;->a:D

    mul-double/2addr v3, v6

    aget-object v1, p1, v1

    iget-wide v8, v1, Laa/d;->a:D

    sub-double/2addr v3, v8

    iget-wide v8, v0, Laa/d;->b:D

    mul-double/2addr v8, v6

    iget-wide v0, v1, Laa/d;->b:D

    sub-double/2addr v8, v0

    invoke-direct {v2, v3, v4, v8, v9}, Laa/d;-><init>(DD)V

    const/4 v0, 0x3

    aput-object v2, p1, v0

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Laa/f;->a()Laa/f;

    move-result-object p0

    return-object p0
.end method

.method public d([D)V
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v2, p0, Laa/f;->a:Laa/d;

    array-length v3, p1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-wide v3, p1, v3

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :goto_0
    iput-wide v3, v2, Laa/d;->a:D

    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    aget-wide v3, p1, v4

    goto :goto_1

    :cond_1
    move-wide v3, v0

    :goto_1
    iput-wide v3, v2, Laa/d;->b:D

    iget-object v2, p0, Laa/f;->b:Laa/h;

    array-length v3, p1

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    aget-wide v3, p1, v4

    goto :goto_2

    :cond_2
    move-wide v3, v0

    :goto_2
    iput-wide v3, v2, Laa/h;->a:D

    array-length v3, p1

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    aget-wide v3, p1, v4

    goto :goto_3

    :cond_3
    move-wide v3, v0

    :goto_3
    iput-wide v3, v2, Laa/h;->b:D

    array-length v2, p1

    const/4 v3, 0x4

    if-le v2, v3, :cond_4

    aget-wide v0, p1, v3

    :cond_4
    iput-wide v0, p0, Laa/f;->c:D

    goto :goto_4

    :cond_5
    iget-object p1, p0, Laa/f;->a:Laa/d;

    iput-wide v0, p1, Laa/d;->a:D

    iput-wide v0, p1, Laa/d;->b:D

    iget-object p1, p0, Laa/f;->b:Laa/h;

    iput-wide v0, p1, Laa/h;->a:D

    iput-wide v0, p1, Laa/h;->b:D

    iput-wide v0, p0, Laa/f;->c:D

    :goto_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Laa/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Laa/f;

    iget-object v1, p0, Laa/f;->a:Laa/d;

    iget-object v3, p1, Laa/f;->a:Laa/d;

    invoke-virtual {v1, v3}, Laa/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laa/f;->b:Laa/h;

    iget-object v3, p1, Laa/f;->b:Laa/h;

    invoke-virtual {v1, v3}, Laa/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Laa/f;->c:D

    iget-wide p0, p1, Laa/f;->c:D

    cmpl-double p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Laa/f;->a:Laa/d;

    iget-wide v0, v0, Laa/d;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    iget-object v3, p0, Laa/f;->a:Laa/d;

    iget-wide v3, v3, Laa/d;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    iget-object v3, p0, Laa/f;->b:Laa/h;

    iget-wide v3, v3, Laa/h;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    iget-object v3, p0, Laa/f;->b:Laa/h;

    iget-wide v3, v3, Laa/h;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    iget-wide v3, p0, Laa/f;->c:D

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

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laa/f;->a:Laa/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laa/f;->b:Laa/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Laa/f;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
