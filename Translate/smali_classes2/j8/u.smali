.class Lj8/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lj8/n0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lj8/n0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/u;->a:Lj8/n0$a;

    return-void
.end method

.method private static synthetic A(Ljava/lang/Float;)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method private static synthetic B(Ljava/lang/Float;)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method private C(Ljava/util/List;)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    iget-object v7, p0, Lj8/u;->a:Lj8/n0$a;

    iget-object v7, v7, Lj8/n0$a;->i:Lj8/c1;

    iget-wide v7, v7, Lj8/c1;->l:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private E(Ljava/util/List;Ljava/util/List;Lj8/c1;)Ljava/util/List;
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lj8/p;

    invoke-direct {v0}, Lj8/p;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/OptionalDouble;->orElse(D)D

    move-result-wide v0

    iget-wide p2, p3, Lj8/c1;->j:D

    mul-double/2addr v0, p2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lj8/q;

    invoke-direct {p3}, Lj8/q;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p2

    new-instance p3, Lj8/r;

    invoke-direct {p3, v0, v1}, Lj8/r;-><init>(D)V

    invoke-interface {p2, p3}, Ljava/util/stream/DoubleStream;->filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/DoubleStream;->min()Ljava/util/OptionalDouble;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/util/OptionalDouble;->orElse(D)D

    move-result-wide p2

    iget-object p0, p0, Lj8/u;->a:Lj8/n0$a;

    iget-object p0, p0, Lj8/n0$a;->i:Lj8/c1;

    iget-wide v0, p0, Lj8/c1;->k:D

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lj8/s;

    invoke-direct {p1, p2, p3}, Lj8/s;-><init>(D)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Float;)D
    .locals 2

    invoke-static {p0}, Lj8/u;->A(Ljava/lang/Float;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(DLjava/lang/Float;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0, p1, p2}, Lj8/u;->z(DLjava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lj8/m0;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Lj8/u;->u(Lj8/m0;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lj8/m0;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Lj8/u;->x(Lj8/m0;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(DD)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj8/u;->y(DD)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lj8/m0;Lj8/m0;)I
    .locals 0

    invoke-static {p0, p1}, Lj8/u;->t(Lj8/m0;Lj8/m0;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Lj8/u;Landroid/content/Context;Lj8/n0$a;Lj8/m0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj8/u;->s(Lj8/u;Landroid/content/Context;Lj8/n0$a;Lj8/m0;)V

    return-void
.end method

.method public static synthetic h(Lj8/n0$a;Lj8/m0;)V
    .locals 0

    invoke-static {p0, p1}, Lj8/u;->q(Lj8/n0$a;Lj8/m0;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/Float;)D
    .locals 2

    invoke-static {p0}, Lj8/u;->B(Ljava/lang/Float;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic j(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lj8/u;->v(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lj8/m0;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Lj8/u;->w(Lj8/m0;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lj8/u;Landroid/content/Context;Lj8/n0$a;Lj8/m0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj8/u;->r(Lj8/u;Landroid/content/Context;Lj8/n0$a;Lj8/m0;)V

    return-void
.end method

.method private m(Lj8/m0;Landroid/content/Context;Lj8/n0$a;)F
    .locals 1

    iget-boolean v0, p1, Lj8/m0;->n:Z

    if-eqz v0, :cond_0

    iget-object p2, p1, Lj8/m0;->c:Ljava/lang/String;

    iget v0, p1, Lj8/m0;->j:F

    iget-object p1, p1, Lj8/m0;->f:Lj8/m0$a;

    iget-object p1, p1, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {p1}, Lk8/e;->t(Ljava/util/List;)Laa/h;

    move-result-object p1

    iget-object p3, p3, Lj8/n0$a;->i:Lj8/c1;

    invoke-direct {p0, p2, v0, p1, p3}, Lj8/u;->n(Ljava/lang/String;FLaa/h;Lj8/c1;)F

    move-result p0

    return p0

    :cond_0
    invoke-static {p2, p1, p3}, Lj8/b1;->a(Landroid/content/Context;Lj8/m0;Lj8/n0$a;)Landroid/widget/FrameLayout;

    move-result-object p0

    const-string p1, "textview"

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    iget-object p1, p3, Lj8/n0$a;->i:Lj8/c1;

    iget p1, p1, Lj8/c1;->g:I

    int-to-float p1, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private n(Ljava/lang/String;FLaa/h;Lj8/c1;)F
    .locals 4

    new-instance p0, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/TextPaint;-><init>(I)V

    float-to-int p2, p2

    iget v0, p4, Lj8/c1;->g:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-wide v0, p3, Laa/h;->a:D

    iget p3, p4, Lj8/c1;->f:I

    int-to-double v2, p3

    sub-double/2addr v0, v2

    iget p3, p4, Lj8/c1;->b:I

    mul-int/lit8 p3, p3, 0x2

    int-to-double v2, p3

    sub-double/2addr v0, v2

    double-to-int p3, v0

    :goto_0
    iget v0, p4, Lj8/c1;->g:I

    if-le p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v1, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    int-to-float p0, p2

    return p0
.end method

.method public static o(Ljava/util/List;Landroid/content/Context;Lj8/n0$a;)V
    .locals 2

    new-instance v0, Lj8/u;

    invoke-direct {v0, p2}, Lj8/u;-><init>(Lj8/n0$a;)V

    new-instance v1, Lj8/i;

    invoke-direct {v1, p2}, Lj8/i;-><init>(Lj8/n0$a;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean v1, p2, Lj8/n0$a;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Lj8/l;

    invoke-direct {v1, v0, p1, p2}, Lj8/l;-><init>(Lj8/u;Landroid/content/Context;Lj8/n0$a;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p2, Lj8/n0$a;->i:Lj8/c1;

    invoke-virtual {v0, p0, p1}, Lj8/u;->D(Ljava/util/List;Lj8/c1;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lj8/m;

    invoke-direct {v1, v0, p1, p2}, Lj8/m;-><init>(Lj8/u;Landroid/content/Context;Lj8/n0$a;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private p(Ljava/util/List;)Ljava/util/List;
    .locals 2

    new-instance v0, Lj8/t;

    invoke-direct {v0}, Lj8/t;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj8/j;

    invoke-direct {v1}, Lj8/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lj8/u;->C(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lj8/k;

    invoke-direct {v0, p1}, Lj8/k;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic q(Lj8/n0$a;Lj8/m0;)V
    .locals 1

    iget-object v0, p1, Lj8/m0;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lj8/n0$a;->i:Lj8/c1;

    iget p0, p0, Lj8/c1;->m:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lj8/m0;->n:Z

    return-void
.end method

.method private static synthetic r(Lj8/u;Landroid/content/Context;Lj8/n0$a;Lj8/m0;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lj8/u;->m(Lj8/m0;Landroid/content/Context;Lj8/n0$a;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p3, Lj8/m0;->k:Ljava/lang/Float;

    return-void
.end method

.method private static synthetic s(Lj8/u;Landroid/content/Context;Lj8/n0$a;Lj8/m0;)V
    .locals 1

    iget-boolean v0, p3, Lj8/m0;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p1, p2}, Lj8/u;->m(Lj8/m0;Landroid/content/Context;Lj8/n0$a;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p3, Lj8/m0;->k:Ljava/lang/Float;

    :cond_0
    return-void
.end method

.method private static synthetic t(Lj8/m0;Lj8/m0;)I
    .locals 2

    iget p0, p0, Lj8/m0;->j:F

    float-to-double v0, p0

    iget p0, p1, Lj8/m0;->j:F

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private static synthetic u(Lj8/m0;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lj8/m0;->j:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic v(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic w(Lj8/m0;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lj8/m0;->j:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic x(Lj8/m0;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lj8/m0;->k:Ljava/lang/Float;

    return-object p0
.end method

.method private static synthetic y(DD)Z
    .locals 0

    cmpl-double p0, p2, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic z(DLjava/lang/Float;)Ljava/lang/Float;
    .locals 0

    double-to-float p0, p0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public D(Ljava/util/List;Lj8/c1;)V
    .locals 5

    invoke-direct {p0, p1}, Lj8/u;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lj8/n;

    invoke-direct {v2}, Lj8/n;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lj8/o;

    invoke-direct {v3}, Lj8/o;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2, v1, p2}, Lj8/u;->E(Ljava/util/List;Ljava/util/List;Lj8/c1;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj8/m0;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    iput-object v4, v3, Lj8/m0;->k:Ljava/lang/Float;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
