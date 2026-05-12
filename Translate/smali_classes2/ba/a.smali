.class public abstract Lba/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_2

    new-instance v2, Lorg/opencv/core/Mat;

    sget v3, Laa/a;->r:I

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4, v3}, Lorg/opencv/core/Mat;-><init>(III)V

    mul-int/lit8 v3, v1, 0x2

    new-array v3, v3, [I

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/opencv/core/Mat;

    iget-wide v6, v6, Lorg/opencv/core/Mat;->a:J

    mul-int/lit8 v8, v5, 0x2

    const/16 v9, 0x20

    shr-long v9, v6, v9

    long-to-int v9, v9

    aput v9, v3, v8

    add-int/2addr v8, v4

    long-to-int v6, v6

    aput v6, v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0, v0, v3}, Lorg/opencv/core/Mat;->t(II[I)I

    goto :goto_2

    :cond_2
    new-instance v2, Lorg/opencv/core/Mat;

    invoke-direct {v2}, Lorg/opencv/core/Mat;-><init>()V

    :goto_2
    return-object v2
.end method

.method public static b(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lba/a;->a(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    :goto_1
    return-object p0
.end method
