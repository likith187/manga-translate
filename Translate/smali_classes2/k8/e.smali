.class public abstract Lk8/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ll8/f;Laa/d;)Laa/d;
    .locals 0

    invoke-static {p0, p1}, Lk8/e;->r(Ll8/f;Laa/d;)Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;II)Laa/d;
    .locals 0

    invoke-static {p0, p1, p2}, Lk8/e;->p(Ljava/util/List;II)Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Laa/d;Laa/d;)Laa/d;
    .locals 0

    invoke-static {p0, p1}, Lk8/e;->q(Laa/d;Laa/d;)Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Laa/e;Laa/d;)Laa/d;
    .locals 0

    invoke-static {p0, p1}, Lk8/e;->o(Laa/e;Laa/d;)Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/List;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Laa/d;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Laa/d;

    invoke-static {p0, p1}, Lk8/e;->f([Laa/d;I)[Laa/d;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static f([Laa/d;I)[Laa/d;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lk8/e;->g([Laa/d;II)Laa/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Lk8/e;->g([Laa/d;II)Laa/d;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v2, p1}, Lk8/e;->g([Laa/d;II)Laa/d;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v3, p1}, Lk8/e;->g([Laa/d;II)Laa/d;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static g([Laa/d;II)Laa/d;
    .locals 6

    aget-object v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    rem-int/2addr v1, v2

    aget-object v1, p0, v1

    invoke-static {v0, v1, p2}, Lk8/e;->h(Laa/d;Laa/d;I)Laa/d;

    move-result-object v1

    add-int/lit8 p1, p1, 0x3

    array-length v2, p0

    rem-int/2addr p1, v2

    aget-object p0, p0, p1

    invoke-static {v0, p0, p2}, Lk8/e;->h(Laa/d;Laa/d;I)Laa/d;

    move-result-object p0

    new-instance p1, Laa/d;

    iget-wide v2, v0, Laa/d;->a:D

    iget-wide v4, v1, Laa/d;->a:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Laa/d;->a:D

    add-double/2addr v2, v4

    iget-wide v4, v0, Laa/d;->b:D

    iget-wide v0, v1, Laa/d;->b:D

    add-double/2addr v4, v0

    iget-wide v0, p0, Laa/d;->b:D

    add-double/2addr v4, v0

    invoke-direct {p1, v2, v3, v4, v5}, Laa/d;-><init>(DD)V

    return-object p1
.end method

.method public static h(Laa/d;Laa/d;I)Laa/d;
    .locals 7

    new-instance v0, Laa/d;

    iget-wide v1, p0, Laa/d;->a:D

    iget-wide v3, p1, Laa/d;->a:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Laa/d;->b:D

    iget-wide v5, p1, Laa/d;->b:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Laa/d;-><init>(DD)V

    invoke-static {v0}, Lk8/e;->s(Laa/d;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Laa/d;

    iget-wide v3, v0, Laa/d;->a:D

    div-double/2addr v3, v1

    int-to-double p1, p2

    mul-double/2addr v3, p1

    iget-wide v5, v0, Laa/d;->b:D

    div-double/2addr v5, v1

    mul-double/2addr v5, p1

    invoke-direct {p0, v3, v4, v5, v6}, Laa/d;-><init>(DD)V

    :goto_0
    return-object p0
.end method

.method public static i(Laa/e;Laa/e;)Laa/e;
    .locals 8

    invoke-virtual {p0}, Laa/e;->e()Laa/d;

    move-result-object v0

    invoke-virtual {p0}, Laa/e;->a()Laa/d;

    move-result-object p0

    invoke-virtual {p1}, Laa/e;->e()Laa/d;

    move-result-object v1

    invoke-virtual {p1}, Laa/e;->a()Laa/d;

    move-result-object p1

    iget-wide v2, v0, Laa/d;->a:D

    iget-wide v4, v1, Laa/d;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p1, Laa/d;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    iput-wide v2, v0, Laa/d;->a:D

    iget-wide v2, p0, Laa/d;->a:D

    iget-wide v4, v1, Laa/d;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p1, Laa/d;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    iput-wide v2, p0, Laa/d;->a:D

    iget-wide v2, v0, Laa/d;->b:D

    iget-wide v4, v1, Laa/d;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p1, Laa/d;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    iput-wide v2, v0, Laa/d;->b:D

    iget-wide v2, p0, Laa/d;->b:D

    iget-wide v4, v1, Laa/d;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-wide v3, p1, Laa/d;->b:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int p1, v1

    int-to-double v1, p1

    iput-wide v1, p0, Laa/d;->b:D

    new-instance p1, Laa/e;

    new-instance v3, Laa/h;

    iget-wide v4, p0, Laa/d;->a:D

    iget-wide v6, v0, Laa/d;->a:D

    sub-double/2addr v4, v6

    iget-wide v6, v0, Laa/d;->b:D

    sub-double/2addr v1, v6

    invoke-direct {v3, v4, v5, v1, v2}, Laa/h;-><init>(DD)V

    invoke-direct {p1, v0, v3}, Laa/e;-><init>(Laa/d;Laa/h;)V

    return-object p1
.end method

.method public static j(Laa/e;Laa/h;)Laa/e;
    .locals 4

    new-instance v0, Laa/e;

    new-instance v1, Laa/d;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Laa/d;-><init>(DD)V

    invoke-direct {v0, v1, p1}, Laa/e;-><init>(Laa/d;Laa/h;)V

    invoke-static {p0, v0}, Lk8/e;->i(Laa/e;Laa/e;)Laa/e;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/List;Laa/e;)Ljava/util/List;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lk8/b;

    invoke-direct {v0, p1}, Lk8/b;-><init>(Laa/e;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static l(Ljava/util/List;)Laa/d;
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/d;

    invoke-virtual {v0}, Laa/d;->a()Laa/d;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-wide v2, v0, Laa/d;->a:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laa/d;

    iget-wide v4, v4, Laa/d;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Laa/d;->a:D

    iget-wide v2, v0, Laa/d;->b:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laa/d;

    iget-wide v4, v4, Laa/d;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Laa/d;->b:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static m(Ljava/util/List;)Laa/e;
    .locals 9

    invoke-static {p0}, Lk8/e;->n(Ljava/util/List;)Laa/d;

    move-result-object v0

    invoke-static {p0}, Lk8/e;->l(Ljava/util/List;)Laa/d;

    move-result-object p0

    new-instance v1, Laa/e;

    new-instance v2, Laa/h;

    iget-wide v3, p0, Laa/d;->a:D

    iget-wide v5, v0, Laa/d;->a:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Laa/d;->b:D

    iget-wide v7, v0, Laa/d;->b:D

    sub-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Laa/h;-><init>(DD)V

    invoke-direct {v1, v0, v2}, Laa/e;-><init>(Laa/d;Laa/h;)V

    return-object v1
.end method

.method public static n(Ljava/util/List;)Laa/d;
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/d;

    invoke-virtual {v0}, Laa/d;->a()Laa/d;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-wide v2, v0, Laa/d;->a:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laa/d;

    iget-wide v4, v4, Laa/d;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Laa/d;->a:D

    iget-wide v2, v0, Laa/d;->b:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laa/d;

    iget-wide v4, v4, Laa/d;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Laa/d;->b:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static synthetic o(Laa/e;Laa/d;)Laa/d;
    .locals 7

    new-instance v0, Laa/d;

    invoke-virtual {p0}, Laa/e;->a()Laa/d;

    move-result-object v1

    iget-wide v1, v1, Laa/d;->a:D

    invoke-virtual {p0}, Laa/e;->e()Laa/d;

    move-result-object v3

    iget-wide v3, v3, Laa/d;->a:D

    iget-wide v5, p1, Laa/d;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-virtual {p0}, Laa/e;->a()Laa/d;

    move-result-object v3

    iget-wide v3, v3, Laa/d;->b:D

    invoke-virtual {p0}, Laa/e;->e()Laa/d;

    move-result-object p0

    iget-wide v5, p0, Laa/d;->b:D

    iget-wide p0, p1, Laa/d;->b:D

    invoke-static {v5, v6, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Laa/d;-><init>(DD)V

    return-object v0
.end method

.method private static synthetic p(Ljava/util/List;II)Laa/d;
    .locals 0

    add-int/2addr p2, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p2, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p2, p1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laa/d;

    return-object p0
.end method

.method private static synthetic q(Laa/d;Laa/d;)Laa/d;
    .locals 5

    new-instance v0, Laa/d;

    iget-wide v1, p1, Laa/d;->a:D

    iget-wide v3, p0, Laa/d;->a:D

    sub-double/2addr v1, v3

    iget-wide v3, p1, Laa/d;->b:D

    iget-wide p0, p0, Laa/d;->b:D

    sub-double/2addr v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Laa/d;-><init>(DD)V

    return-object v0
.end method

.method private static synthetic r(Ll8/f;Laa/d;)Laa/d;
    .locals 5

    new-instance v0, Laa/d;

    iget-wide v1, p1, Laa/d;->a:D

    iget-wide v3, p1, Laa/d;->b:D

    invoke-virtual {p0, v1, v2, v3, v4}, Ll8/f;->b(DD)[D

    move-result-object p0

    invoke-direct {v0, p0}, Laa/d;-><init>([D)V

    return-object v0
.end method

.method public static s(Laa/d;)D
    .locals 6

    iget-wide v0, p0, Laa/d;->a:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v4, p0, Laa/d;->b:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static t(Ljava/util/List;)Laa/h;
    .locals 10

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa/d;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laa/d;

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laa/d;

    iget-wide v2, p0, Laa/d;->a:D

    iget-wide v4, v0, Laa/d;->a:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-wide v6, p0, Laa/d;->b:D

    iget-wide v8, v0, Laa/d;->b:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int p0, v2

    iget-wide v2, v1, Laa/d;->a:D

    iget-wide v6, v0, Laa/d;->a:D

    sub-double/2addr v2, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-wide v6, v1, Laa/d;->b:D

    iget-wide v0, v0, Laa/d;->b:D

    sub-double/2addr v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Laa/h;

    int-to-double v2, v0

    int-to-double v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Laa/h;-><init>(DD)V

    return-object v1
.end method

.method public static u([Laa/d;)Laa/h;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lk8/e;->t(Ljava/util/List;)Laa/h;

    move-result-object p0

    return-object p0
.end method

.method public static v(DDDD)Ljava/util/List;
    .locals 2

    new-instance v0, Laa/d;

    invoke-direct {v0, p0, p1, p2, p3}, Laa/d;-><init>(DD)V

    new-instance v1, Laa/d;

    invoke-direct {v1, p4, p5, p2, p3}, Laa/d;-><init>(DD)V

    new-instance p2, Laa/d;

    invoke-direct {p2, p4, p5, p6, p7}, Laa/d;-><init>(DD)V

    new-instance p3, Laa/d;

    invoke-direct {p3, p0, p1, p6, p7}, Laa/d;-><init>(DD)V

    filled-new-array {v0, v1, p2, p3}, [Laa/d;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/util/List;I)Ljava/util/List;
    .locals 2

    const/16 v0, -0x5a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    neg-int p1, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lk8/d;

    invoke-direct {v1, p0, p1}, Lk8/d;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static x(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lk8/e;->n(Ljava/util/List;)Laa/d;

    move-result-object v0

    invoke-static {p0, v0}, Lk8/e;->y(Ljava/util/List;Laa/d;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/util/List;Laa/d;)Ljava/util/List;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lk8/a;

    invoke-direct {v0, p1}, Lk8/a;-><init>(Laa/d;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static z(Ljava/util/List;Ll8/f;)Ljava/util/List;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lk8/c;

    invoke-direct {v0, p1}, Lk8/c;-><init>(Ll8/f;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lk8/e;->w(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
