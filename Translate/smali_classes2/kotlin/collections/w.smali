.class abstract Lkotlin/collections/w;
.super Lkotlin/collections/v;
.source "SourceFile"


# direct methods
.method public static final synthetic E(Ljava/util/List;I)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/w;->I(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic F(Ljava/util/List;I)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/w;->J(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic G(Ljava/util/List;I)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/collections/w;->K(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public static H(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/collections/p0;

    invoke-direct {v0, p0}, Lkotlin/collections/p0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static final I(Ljava/util/List;I)I
    .locals 3

    if-ltz p1, :cond_0

    invoke-static {p0}, Lkotlin/collections/o;->j(Ljava/util/List;)I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-static {p0}, Lkotlin/collections/o;->j(Ljava/util/List;)I

    move-result p0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in range ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lb9/c;

    const/4 v2, 0x0

    invoke-static {p0}, Lkotlin/collections/o;->j(Ljava/util/List;)I

    move-result p0

    invoke-direct {p1, v2, p0}, Lb9/c;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final J(Ljava/util/List;I)I
    .locals 0

    invoke-static {p0}, Lkotlin/collections/o;->j(Ljava/util/List;)I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method

.method private static final K(Ljava/util/List;I)I
    .locals 3

    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in range ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lb9/c;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {p1, v2, p0}, Lb9/c;-><init>(II)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
