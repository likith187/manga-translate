.class public Laa/c;
.super Lorg/opencv/core/Mat;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {v0, v1}, Laa/a;->k(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-super {p0, p1, v1, v0}, Lorg/opencv/core/Mat;->g(III)V

    :cond_0
    return-void
.end method

.method public varargs C([Laa/d;)V
    .locals 8

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Laa/c;->B(I)V

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    mul-int/lit8 v5, v3, 0x2

    iget-wide v6, v4, Laa/d;->a:D

    double-to-int v6, v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    iget-wide v6, v4, Laa/d;->b:D

    double-to-int v4, v6

    aput v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v2, v1}, Lorg/opencv/core/Mat;->t(II[I)I

    :cond_2
    :goto_1
    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Laa/d;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Laa/d;

    invoke-virtual {p0, p1}, Laa/c;->C([Laa/d;)V

    return-void
.end method
