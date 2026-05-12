.class public final Lv1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/math/MathContext;

.field private final b:Ljava/util/LinkedHashMap;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    const-string v1, "DECIMAL64"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lv1/d;->a:Ljava/math/MathContext;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lv1/d;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lv1/d;->c:Ljava/util/Map;

    return-void
.end method

.method private final j(Lv1/e;Lv1/e;)Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lv1/d;->o(Ljava/math/BigDecimal;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string p1, "ZERO"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lv1/d;->o(Ljava/math/BigDecimal;)Z

    move-result p1

    invoke-direct {p0, p1}, Lv1/d;->r(Z)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method private final l(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0

    iget-object p0, p0, Lv1/d;->b:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final o(Ljava/math/BigDecimal;)Z
    .locals 0

    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final p(Lv1/e;Lv1/e;)Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lv1/d;->o(Ljava/math/BigDecimal;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    const-string p1, "ONE"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lv1/d;->o(Ljava/math/BigDecimal;)Z

    move-result p1

    invoke-direct {p0, p1}, Lv1/d;->r(Z)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method private final q(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 8

    invoke-virtual {p2}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "valueOf(this.toLong())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    const-string v1, "multiply(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p2, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p2

    iget-object v3, p0, Lv1/d;->a:Ljava/math/MathContext;

    invoke-virtual {p1, p2, v3}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    iget-object p1, p0, Lv1/d;->a:Ljava/math/MathContext;

    invoke-virtual {p2, v3, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 p2, -0x1

    if-ne v0, p2, :cond_0

    iget-object p0, p0, Lv1/d;->a:Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/MathContext;->getPrecision()I

    move-result p0

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, p1, p0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final r(Z)Ljava/math/BigDecimal;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    const-string p1, "ONE"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-string p1, "ZERO"

    goto :goto_0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lv1/h;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->v(Lv1/h;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lv1/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->w(Lv1/i;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lv1/b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->t(Lv1/b;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lv1/j;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->x(Lv1/j;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Lv1/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->u(Lv1/c;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f(Lv1/q;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->z(Lv1/q;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g(Lv1/p;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->y(Lv1/p;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h(Lv1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lv1/d;->s(Lv1/a;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/lang/String;Lv1/g;)Lv1/d;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv1/d;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).toLowerCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final k(Ljava/lang/String;Lv1/e;)Lv1/d;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lv1/d;->l(Ljava/lang/String;Ljava/math/BigDecimal;)V

    return-object p0
.end method

.method public final m(Lv1/e;)Ljava/math/BigDecimal;
    .locals 1

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lv1/e;->a(Lv1/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final n()Ljava/math/MathContext;
    .locals 0

    iget-object p0, p0, Lv1/d;->a:Ljava/math/MathContext;

    return-object p0
.end method

.method public s(Lv1/a;)Ljava/math/BigDecimal;
    .locals 1

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/a;->c()Lv1/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lv1/a;->b()Lv1/n;

    move-result-object p1

    invoke-virtual {p1}, Lv1/n;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lv1/d;->l(Ljava/lang/String;Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public t(Lv1/b;)Ljava/math/BigDecimal;
    .locals 5

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/b;->b()Lv1/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lv1/b;->d()Lv1/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1}, Lv1/b;->c()Lv1/n;

    move-result-object v2

    invoke-virtual {v2}, Lv1/n;->c()Lv1/o;

    move-result-object v2

    sget-object v3, Lv1/d$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p0, Lu1/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid binary operator \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv1/b;->c()Lv1/n;

    move-result-object p1

    invoke-virtual {p1}, Lv1/n;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gtz p1, :cond_0

    move v3, v4

    :cond_0
    invoke-direct {p0, v3}, Lv1/d;->r(Z)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gez p1, :cond_1

    move v3, v4

    :cond_1
    invoke-direct {p0, v3}, Lv1/d;->r(Z)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_2

    move v3, v4

    :cond_2
    invoke-direct {p0, v3}, Lv1/d;->r(Z)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-lez p1, :cond_3

    move v3, v4

    :cond_3
    invoke-direct {p0, v3}, Lv1/d;->r(Z)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-direct {p0, p1}, Lv1/d;->r(Z)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lv1/d;->r(Z)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v0, v1}, Lv1/d;->q(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lv1/d;->a:Ljava/math/MathContext;

    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "remainder(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lv1/d;->a:Ljava/math/MathContext;

    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "divide(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "this.multiply(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "this.subtract(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "this.add(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lv1/c;)Ljava/math/BigDecimal;
    .locals 4

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/c;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv1/d;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/g;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lv1/c;->b()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/e;

    invoke-virtual {p0, v2}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lv1/g;->a(Ljava/util/List;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lu1/a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined function \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v(Lv1/h;)Ljava/math/BigDecimal;
    .locals 1

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/h;->b()Lv1/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public w(Lv1/i;)Ljava/math/BigDecimal;
    .locals 0

    const-string p0, "expr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/i;->b()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public x(Lv1/j;)Ljava/math/BigDecimal;
    .locals 4

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/j;->b()Lv1/e;

    move-result-object v0

    invoke-virtual {p1}, Lv1/j;->d()Lv1/e;

    move-result-object v1

    invoke-virtual {p1}, Lv1/j;->c()Lv1/n;

    move-result-object v2

    invoke-virtual {v2}, Lv1/n;->c()Lv1/o;

    move-result-object v2

    sget-object v3, Lv1/d$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v0, v1}, Lv1/d;->j(Lv1/e;Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lu1/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid logical operator \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv1/j;->c()Lv1/n;

    move-result-object p1

    invoke-virtual {p1}, Lv1/n;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, v0, v1}, Lv1/d;->p(Lv1/e;Lv1/e;)Ljava/math/BigDecimal;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public y(Lv1/p;)Ljava/math/BigDecimal;
    .locals 3

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/p;->c()Lv1/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv1/d;->m(Lv1/e;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lv1/p;->b()Lv1/n;

    move-result-object p1

    invoke-virtual {p1}, Lv1/n;->c()Lv1/o;

    move-result-object p1

    sget-object v1, Lv1/d$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/math/BigDecimal;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-direct {p1, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {p0, v0, p1}, Lv1/d;->q(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lu1/a;

    const-string p1, "Invalid unary operator"

    invoke-direct {p0, p1}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public z(Lv1/q;)Ljava/math/BigDecimal;
    .locals 2

    const-string v0, "expr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/q;->b()Lv1/n;

    move-result-object p1

    invoke-virtual {p1}, Lv1/n;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lv1/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigDecimal;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lu1/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined variable \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method
