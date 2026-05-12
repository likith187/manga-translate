.class Lj8/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/m0$a;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "j8.m0"


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:[Laa/d;

.field e:[Laa/d;

.field f:Lj8/m0$a;

.field g:Lorg/opencv/core/Mat;

.field h:[I

.field i:[I

.field j:F

.field k:Ljava/lang/Float;

.field l:Landroid/graphics/Typeface;

.field m:Z

.field n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj8/m0;->m:Z

    iput-boolean v0, p0, Lj8/m0;->n:Z

    return-void
.end method

.method private static synthetic A(I)[Laa/d;
    .locals 0

    new-array p0, p0, [Laa/d;

    return-object p0
.end method

.method private static synthetic B([I)Laa/d;
    .locals 5

    new-instance v0, Laa/d;

    const/4 v1, 0x0

    aget v1, p0, v1

    int-to-double v1, v1

    const/4 v3, 0x1

    aget p0, p0, v3

    int-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Laa/d;-><init>(DD)V

    return-object v0
.end method

.method private static synthetic C(I)[Laa/d;
    .locals 0

    new-array p0, p0, [Laa/d;

    return-object p0
.end method

.method private static synthetic D([I)Laa/d;
    .locals 5

    new-instance v0, Laa/d;

    const/4 v1, 0x0

    aget v1, p0, v1

    int-to-double v1, v1

    const/4 v3, 0x1

    aget p0, p0, v3

    int-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Laa/d;-><init>(DD)V

    return-object v0
.end method

.method private static synthetic E(I)[Laa/d;
    .locals 0

    new-array p0, p0, [Laa/d;

    return-object p0
.end method

.method private static synthetic F(Lj8/m0;Lj8/m0;)Lj8/m0;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj8/m0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lj8/m0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj8/m0;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj8/m0;->m:Z

    iget-object v0, p0, Lj8/m0;->e:[Laa/d;

    if-nez v0, :cond_0

    iget-object p1, p1, Lj8/m0;->e:[Laa/d;

    iput-object p1, p0, Lj8/m0;->e:[Laa/d;

    :cond_0
    return-object p0
.end method

.method private static synthetic G(Laa/d;Laa/d;)I
    .locals 4

    iget-wide v0, p0, Laa/d;->a:D

    iget-wide v2, p0, Laa/d;->b:D

    add-double/2addr v0, v2

    iget-wide v2, p1, Laa/d;->a:D

    iget-wide p0, p1, Laa/d;->b:D

    add-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private static synthetic H(Laa/d;Laa/d;)I
    .locals 4

    iget-wide v0, p0, Laa/d;->b:D

    iget-wide v2, p0, Laa/d;->a:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Laa/d;->b:D

    iget-wide p0, p1, Laa/d;->a:D

    sub-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private static I(Ljava/util/List;)[Laa/d;
    .locals 2

    new-instance v0, Laa/b;

    invoke-direct {v0}, Laa/b;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lj8/i0;

    invoke-direct {v1}, Lj8/i0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Laa/b;->D(Ljava/util/List;)V

    invoke-static {v0}, Lorg/opencv/imgproc/Imgproc;->e(Laa/b;)Laa/f;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Laa/d;

    invoke-virtual {p0, v0}, Laa/f;->b([Laa/d;)V

    invoke-static {v0}, Lj8/m0;->K([Laa/d;)[Laa/d;

    move-result-object p0

    return-object p0
.end method

.method protected static J(Ljava/util/List;Laa/h;Lj8/n0$a;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj8/m0;

    iget v2, v1, Lj8/m0;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lj8/m0;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v2, v1, Lj8/m0;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lj8/w;

    invoke-direct {v1}, Lj8/w;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lj8/d0;

    invoke-direct {v2, p1, p2, v0}, Lj8/d0;-><init>(Laa/h;Lj8/n0$a;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lj8/e0;

    invoke-direct {p1, p2}, Lj8/e0;-><init>(Lj8/n0$a;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lj8/f0;

    invoke-direct {p1}, Lj8/f0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static K([Laa/d;)[Laa/d;
    .locals 5

    new-instance v0, Lj8/b0;

    invoke-direct {v0}, Lj8/b0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x3

    aget-object v3, p0, v2

    new-instance v4, Lj8/c0;

    invoke-direct {v4}, Lj8/c0;-><init>()V

    invoke-static {p0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    aget-object v0, p0, v0

    aget-object p0, p0, v2

    filled-new-array {v1, v0, v3, p0}, [Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lj8/m0;Lj8/m0;)I
    .locals 0

    invoke-static {p0, p1}, Lj8/m0;->x(Lj8/m0;Lj8/m0;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/List;)Lj8/m0;
    .locals 0

    invoke-static {p0}, Lj8/m0;->y(Ljava/util/List;)Lj8/m0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([I)Laa/d;
    .locals 0

    invoke-static {p0}, Lj8/m0;->D([I)Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(I)[Laa/d;
    .locals 0

    invoke-static {p0}, Lj8/m0;->E(I)[Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lj8/m0;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lj8/m0;->u(Lj8/m0;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/List;I)Z
    .locals 0

    invoke-static {p0, p1}, Lj8/m0;->s(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/util/List;Lj8/n0$a;I)Lj8/m0;
    .locals 0

    invoke-static {p0, p1, p2}, Lj8/m0;->t(Ljava/util/List;Lj8/n0$a;I)Lj8/m0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Laa/h;Lj8/n0$a;Ljava/util/Map;Lj8/m0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj8/m0;->v(Laa/h;Lj8/n0$a;Ljava/util/Map;Lj8/m0;)V

    return-void
.end method

.method public static synthetic i(I)[Laa/d;
    .locals 0

    invoke-static {p0}, Lj8/m0;->A(I)[Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(I)[Laa/d;
    .locals 0

    invoke-static {p0}, Lj8/m0;->C(I)[Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Laa/d;Laa/d;)I
    .locals 0

    invoke-static {p0, p1}, Lj8/m0;->H(Laa/d;Laa/d;)I

    move-result p0

    return p0
.end method

.method public static synthetic l(Laa/d;Laa/d;)I
    .locals 0

    invoke-static {p0, p1}, Lj8/m0;->G(Laa/d;Laa/d;)I

    move-result p0

    return p0
.end method

.method public static synthetic m([I)Laa/d;
    .locals 0

    invoke-static {p0}, Lj8/m0;->z([I)Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lj8/m0;Lj8/m0;)Lj8/m0;
    .locals 0

    invoke-static {p0, p1}, Lj8/m0;->F(Lj8/m0;Lj8/m0;)Lj8/m0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o([I)Laa/d;
    .locals 0

    invoke-static {p0}, Lj8/m0;->B([I)Laa/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lj8/n0$a;Lj8/m0;)Z
    .locals 0

    invoke-static {p0, p1}, Lj8/m0;->w(Lj8/n0$a;Lj8/m0;)Z

    move-result p0

    return p0
.end method

.method private static q(Lj8/v;)Z
    .locals 5

    iget-object v0, p0, Lj8/v;->a:[[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    sget-object v2, Lj8/m0;->o:Ljava/lang/String;

    invoke-static {v0}, Ll8/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "invalid input bounding box %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ll8/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lj8/v;->c:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "for %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ll8/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected static r(Ljava/util/List;Laa/h;Lj8/n0$a;)Ljava/util/List;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lj8/g0;

    invoke-direct {v0, p0}, Lj8/g0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lj8/h0;

    invoke-direct {v0, p0, p2}, Lj8/h0;-><init>(Ljava/util/List;Lj8/n0$a;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic s(Ljava/util/List;I)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj8/v;

    invoke-static {p0}, Lj8/m0;->q(Lj8/v;)Z

    move-result p0

    return p0
.end method

.method private static synthetic t(Ljava/util/List;Lj8/n0$a;I)Lj8/m0;
    .locals 5

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj8/v;

    new-instance v0, Lj8/m0;

    invoke-direct {v0}, Lj8/m0;-><init>()V

    iput p2, v0, Lj8/m0;->a:I

    iget-object p2, p0, Lj8/v;->c:Ljava/lang/String;

    iput-object p2, v0, Lj8/m0;->c:Ljava/lang/String;

    iget-object p2, p0, Lj8/v;->d:[I

    iput-object p2, v0, Lj8/m0;->h:[I

    iget-object p2, p0, Lj8/v;->e:[I

    iput-object p2, v0, Lj8/m0;->i:[I

    iget p2, p0, Lj8/v;->g:I

    iput p2, v0, Lj8/m0;->b:I

    iget-object p2, p0, Lj8/v;->a:[[I

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lj8/k0;

    invoke-direct {v1}, Lj8/k0;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lj8/l0;

    invoke-direct {v1}, Lj8/l0;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Laa/d;

    iput-object p2, v0, Lj8/m0;->d:[Laa/d;

    iget-object p2, p0, Lj8/v;->b:[[I

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lj8/x;

    invoke-direct {v1}, Lj8/x;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lj8/y;

    invoke-direct {v1}, Lj8/y;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Laa/d;

    iput-object p2, v0, Lj8/m0;->e:[Laa/d;

    :cond_0
    iget-object p0, p0, Lj8/v;->a:[[I

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lj8/z;

    invoke-direct {p2}, Lj8/z;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lj8/a0;

    invoke-direct {p2}, Lj8/a0;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Laa/d;

    invoke-static {p0}, Lk8/e;->u([Laa/d;)Laa/h;

    move-result-object p0

    iget-wide v1, p0, Laa/h;->b:D

    iget-object p0, p1, Lj8/n0$a;->i:Lj8/c1;

    iget-wide v3, p0, Lj8/c1;->i:D

    mul-double/2addr v1, v3

    double-to-float p0, v1

    iput p0, v0, Lj8/m0;->j:F

    :cond_1
    iget-object p0, p1, Lj8/n0$a;->a:Landroid/graphics/Typeface;

    iput-object p0, v0, Lj8/m0;->l:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static synthetic u(Lj8/m0;)Ljava/util/stream/Stream;
    .locals 0

    iget-object p0, p0, Lj8/m0;->d:[Laa/d;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic v(Laa/h;Lj8/n0$a;Ljava/util/Map;Lj8/m0;)V
    .locals 3

    iget-object v0, p3, Lj8/m0;->e:[Laa/d;

    if-eqz v0, :cond_0

    new-instance p2, Lj8/m0$a;

    iget-object p1, p1, Lj8/n0$a;->i:Lj8/c1;

    iget v1, p1, Lj8/c1;->a:I

    iget p1, p1, Lj8/c1;->b:I

    invoke-direct {p2, v0, p0, v1, p1}, Lj8/m0$a;-><init>([Laa/d;Laa/h;II)V

    iput-object p2, p3, Lj8/m0;->f:Lj8/m0$a;

    goto :goto_1

    :cond_0
    iget v0, p3, Lj8/m0;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v0, Lj8/m0$a;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object p2, p3, Lj8/m0;->d:[Laa/d;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lj8/m0;->I(Ljava/util/List;)[Laa/d;

    move-result-object p2

    :goto_0
    iget-object p1, p1, Lj8/n0$a;->i:Lj8/c1;

    iget v1, p1, Lj8/c1;->a:I

    iget p1, p1, Lj8/c1;->b:I

    invoke-direct {v0, p2, p0, v1, p1}, Lj8/m0$a;-><init>([Laa/d;Laa/h;II)V

    iput-object v0, p3, Lj8/m0;->f:Lj8/m0$a;

    :goto_1
    return-void
.end method

.method private static synthetic w(Lj8/n0$a;Lj8/m0;)Z
    .locals 6

    iget-object v0, p1, Lj8/m0;->f:Lj8/m0$a;

    iget-object v0, v0, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {v0}, Lk8/e;->t(Ljava/util/List;)Laa/h;

    move-result-object v0

    iget-object p0, p0, Lj8/n0$a;->i:Lj8/c1;

    iget v1, p0, Lj8/c1;->a:I

    iget v2, p0, Lj8/c1;->b:I

    add-int/2addr v1, v2

    iget p0, p0, Lj8/c1;->g:I

    add-int/2addr v1, p0

    iget-wide v2, v0, Laa/h;->a:D

    int-to-double v4, v1

    cmpl-double p0, v2, v4

    if-lez p0, :cond_0

    iget-object p0, p1, Lj8/m0;->f:Lj8/m0$a;

    iget-object p0, p0, Lj8/m0$a;->d:Laa/e;

    iget p0, p0, Laa/e;->f:I

    if-le p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic x(Lj8/m0;Lj8/m0;)I
    .locals 0

    iget p0, p0, Lj8/m0;->b:I

    iget p1, p1, Lj8/m0;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static synthetic y(Ljava/util/List;)Lj8/m0;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lj8/j0;

    invoke-direct {v0}, Lj8/j0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj8/m0;

    return-object p0
.end method

.method private static synthetic z([I)Laa/d;
    .locals 5

    new-instance v0, Laa/d;

    const/4 v1, 0x0

    aget v1, p0, v1

    int-to-double v1, v1

    const/4 v3, 0x1

    aget p0, p0, v3

    int-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Laa/d;-><init>(DD)V

    return-object v0
.end method
