.class public final Lv1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "tokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/k;->a:Ljava/util/List;

    return-void
.end method

.method private final a()Lv1/e;
    .locals 4

    invoke-direct {p0}, Lv1/k;->o()Lv1/e;

    move-result-object v0

    :goto_0
    sget-object v1, Lv1/o;->PLUS:Lv1/o;

    sget-object v2, Lv1/o;->MINUS:Lv1/o;

    filled-new-array {v1, v2}, [Lv1/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lv1/k;->m([Lv1/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v1

    invoke-direct {p0}, Lv1/k;->o()Lv1/e;

    move-result-object v2

    new-instance v3, Lv1/b;

    invoke-direct {v3, v0, v1, v2}, Lv1/b;-><init>(Lv1/e;Lv1/n;Lv1/e;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final b()Lv1/n;
    .locals 1

    invoke-direct {p0}, Lv1/k;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lv1/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv1/k;->b:I

    :cond_0
    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object p0

    return-object p0
.end method

.method private final c()Lv1/e;
    .locals 4

    invoke-direct {p0}, Lv1/k;->i()Lv1/e;

    move-result-object v0

    :goto_0
    sget-object v1, Lv1/o;->AMP_AMP:Lv1/o;

    filled-new-array {v1}, [Lv1/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lv1/k;->m([Lv1/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v1

    invoke-direct {p0}, Lv1/k;->i()Lv1/e;

    move-result-object v2

    new-instance v3, Lv1/j;

    invoke-direct {v3, v0, v1, v2}, Lv1/j;-><init>(Lv1/e;Lv1/n;Lv1/e;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final d()Lv1/e;
    .locals 2

    invoke-direct {p0}, Lv1/k;->p()Lv1/e;

    move-result-object v0

    sget-object v1, Lv1/o;->ASSIGN:Lv1/o;

    filled-new-array {v1}, [Lv1/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lv1/k;->m([Lv1/o;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lv1/k;->d()Lv1/e;

    move-result-object p0

    instance-of v1, v0, Lv1/q;

    if-eqz v1, :cond_0

    check-cast v0, Lv1/q;

    invoke-virtual {v0}, Lv1/q;->b()Lv1/n;

    move-result-object v0

    new-instance v1, Lv1/a;

    invoke-direct {v1, v0, p0}, Lv1/a;-><init>(Lv1/n;Lv1/e;)V

    return-object v1

    :cond_0
    new-instance p0, Lu1/a;

    const-string v0, "Invalid assignment target"

    invoke-direct {p0, v0}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method private final e()Lv1/e;
    .locals 4

    sget-object v0, Lv1/o;->IDENTIFIER:Lv1/o;

    sget-object v1, Lv1/o;->LEFT_PAREN:Lv1/o;

    invoke-direct {p0, v0, v1}, Lv1/k;->n(Lv1/o;Lv1/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lv1/k;->t()Ln8/q;

    move-result-object v0

    invoke-virtual {v0}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/n;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lv1/o;->RIGHT_PAREN:Lv1/o;

    invoke-direct {p0, v2}, Lv1/k;->f(Lv1/o;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lv1/k;->k()Lv1/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v2, Lv1/o;->COMMA:Lv1/o;

    filled-new-array {v2}, [Lv1/o;

    move-result-object v2

    invoke-direct {p0, v2}, Lv1/k;->m([Lv1/o;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    sget-object v2, Lv1/o;->RIGHT_PAREN:Lv1/o;

    const-string v3, "Expected \')\' after function arguments"

    invoke-direct {p0, v2, v3}, Lv1/k;->h(Lv1/o;Ljava/lang/String;)Lv1/n;

    new-instance p0, Lv1/c;

    invoke-virtual {v0}, Lv1/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lv1/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    :cond_2
    invoke-direct {p0}, Lv1/k;->u()Lv1/e;

    move-result-object p0

    return-object p0
.end method

.method private final f(Lv1/o;)Z
    .locals 2

    invoke-direct {p0}, Lv1/k;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lv1/k;->r()Lv1/n;

    move-result-object p0

    invoke-virtual {p0}, Lv1/n;->c()Lv1/o;

    move-result-object p0

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private final g()Lv1/e;
    .locals 5

    invoke-direct {p0}, Lv1/k;->a()Lv1/e;

    move-result-object v0

    :goto_0
    sget-object v1, Lv1/o;->GREATER:Lv1/o;

    sget-object v2, Lv1/o;->GREATER_EQUAL:Lv1/o;

    sget-object v3, Lv1/o;->LESS:Lv1/o;

    sget-object v4, Lv1/o;->LESS_EQUAL:Lv1/o;

    filled-new-array {v1, v2, v3, v4}, [Lv1/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lv1/k;->m([Lv1/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v1

    invoke-direct {p0}, Lv1/k;->a()Lv1/e;

    move-result-object v2

    new-instance v3, Lv1/b;

    invoke-direct {v3, v0, v1, v2}, Lv1/b;-><init>(Lv1/e;Lv1/n;Lv1/e;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final h(Lv1/o;Ljava/lang/String;)Lv1/n;
    .locals 0

    invoke-direct {p0, p1}, Lv1/k;->f(Lv1/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lv1/k;->b()Lv1/n;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lu1/a;

    invoke-direct {p0, p2}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final i()Lv1/e;
    .locals 4

    invoke-direct {p0}, Lv1/k;->g()Lv1/e;

    move-result-object v0

    :goto_0
    sget-object v1, Lv1/o;->EQUAL_EQUAL:Lv1/o;

    sget-object v2, Lv1/o;->NOT_EQUAL:Lv1/o;

    filled-new-array {v1, v2}, [Lv1/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lv1/k;->m([Lv1/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v1

    invoke-direct {p0}, Lv1/k;->g()Lv1/e;

    move-result-object v2

    new-instance v3, Lv1/b;

    invoke-direct {v3, v0, v1, v2}, Lv1/b;-><init>(Lv1/e;Lv1/n;Lv1/e;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final j()Lv1/e;
    .locals 3

    invoke-direct {p0}, Lv1/k;->e()Lv1/e;

    move-result-object v0

    sget-object v1, Lv1/o;->EXPONENT:Lv1/o;

    filled-new-array {v1}, [Lv1/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lv1/k;->m([Lv1/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v1

    invoke-direct {p0}, Lv1/k;->w()Lv1/e;

    move-result-object p0

    new-instance v2, Lv1/b;

    invoke-direct {v2, v0, v1, p0}, Lv1/b;-><init>(Lv1/e;Lv1/n;Lv1/e;)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method private final k()Lv1/e;
    .locals 0

    invoke-direct {p0}, Lv1/k;->d()Lv1/e;

    move-result-object p0

    return-object p0
.end method

.method private final l()Z
    .locals 1

    invoke-direct {p0}, Lv1/k;->r()Lv1/n;

    move-result-object p0

    invoke-virtual {p0}, Lv1/n;->c()Lv1/o;

    move-result-object p0

    sget-object v0, Lv1/o;->EOF:Lv1/o;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final varargs m([Lv1/o;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lv1/k;->f(Lv1/o;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lv1/k;->b()Lv1/n;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final n(Lv1/o;Lv1/o;)Z
    .locals 1

    iget v0, p0, Lv1/k;->b:I

    filled-new-array {p1}, [Lv1/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lv1/k;->m([Lv1/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    filled-new-array {p2}, [Lv1/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lv1/k;->m([Lv1/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput v0, p0, Lv1/k;->b:I

    const/4 p0, 0x0

    return p0
.end method

.method private final o()Lv1/e;
    .locals 4

    invoke-direct {p0}, Lv1/k;->w()Lv1/e;

    move-result-object v0

    :goto_0
    sget-object v1, Lv1/o;->STAR:Lv1/o;

    sget-object v2, Lv1/o;->SLASH:Lv1/o;

    sget-object v3, Lv1/o;->MODULO:Lv1/o;

    filled-new-array {v1, v2, v3}, [Lv1/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lv1/k;->m([Lv1/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v1

    invoke-direct {p0}, Lv1/k;->w()Lv1/e;

    move-result-object v2

    new-instance v3, Lv1/b;

    invoke-direct {v3, v0, v1, v2}, Lv1/b;-><init>(Lv1/e;Lv1/n;Lv1/e;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final p()Lv1/e;
    .locals 4

    invoke-direct {p0}, Lv1/k;->c()Lv1/e;

    move-result-object v0

    :goto_0
    sget-object v1, Lv1/o;->BAR_BAR:Lv1/o;

    filled-new-array {v1}, [Lv1/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lv1/k;->m([Lv1/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v1

    invoke-direct {p0}, Lv1/k;->c()Lv1/e;

    move-result-object v2

    new-instance v3, Lv1/j;

    invoke-direct {v3, v0, v1, v2}, Lv1/j;-><init>(Lv1/e;Lv1/n;Lv1/e;)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final r()Lv1/n;
    .locals 1

    iget-object v0, p0, Lv1/k;->a:Ljava/util/List;

    iget p0, p0, Lv1/k;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv1/n;

    return-object p0
.end method

.method private final s()Lv1/n;
    .locals 1

    iget-object v0, p0, Lv1/k;->a:Ljava/util/List;

    iget p0, p0, Lv1/k;->b:I

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv1/n;

    return-object p0
.end method

.method private final t()Ln8/q;
    .locals 3

    new-instance v0, Ln8/q;

    iget-object v1, p0, Lv1/k;->a:Ljava/util/List;

    iget v2, p0, Lv1/k;->b:I

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lv1/k;->a:Ljava/util/List;

    iget p0, p0, Lv1/k;->b:I

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final u()Lv1/e;
    .locals 5

    sget-object v0, Lv1/o;->NUMBER:Lv1/o;

    filled-new-array {v0}, [Lv1/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lv1/k;->m([Lv1/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lv1/i;

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object p0

    invoke-virtual {p0}, Lv1/n;->b()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type java.math.BigDecimal"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Lv1/i;-><init>(Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    sget-object v0, Lv1/o;->IDENTIFIER:Lv1/o;

    filled-new-array {v0}, [Lv1/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lv1/k;->m([Lv1/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lv1/q;

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object p0

    invoke-direct {v0, p0}, Lv1/q;-><init>(Lv1/n;)V

    return-object v0

    :cond_1
    sget-object v0, Lv1/o;->LEFT_PAREN:Lv1/o;

    filled-new-array {v0}, [Lv1/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lv1/k;->m([Lv1/o;)Z

    move-result v0

    const-string v1, "\'."

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lv1/k;->k()Lv1/e;

    move-result-object v0

    sget-object v2, Lv1/o;->RIGHT_PAREN:Lv1/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \')\' after \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v4

    invoke-virtual {v4}, Lv1/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lv1/k;->h(Lv1/o;Ljava/lang/String;)Lv1/n;

    new-instance p0, Lv1/h;

    invoke-direct {p0, v0}, Lv1/h;-><init>(Lv1/e;)V

    return-object p0

    :cond_2
    new-instance v0, Lu1/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected expression after \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object p0

    invoke-virtual {p0}, Lv1/n;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final v()Lv1/e;
    .locals 2

    sget-object v0, Lv1/o;->SQUARE_ROOT:Lv1/o;

    filled-new-array {v0}, [Lv1/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lv1/k;->m([Lv1/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v0

    invoke-direct {p0}, Lv1/k;->w()Lv1/e;

    move-result-object p0

    new-instance v1, Lv1/p;

    invoke-direct {v1, v0, p0}, Lv1/p;-><init>(Lv1/n;Lv1/e;)V

    return-object v1

    :cond_0
    invoke-direct {p0}, Lv1/k;->j()Lv1/e;

    move-result-object p0

    return-object p0
.end method

.method private final w()Lv1/e;
    .locals 2

    sget-object v0, Lv1/o;->MINUS:Lv1/o;

    filled-new-array {v0}, [Lv1/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lv1/k;->m([Lv1/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lv1/k;->s()Lv1/n;

    move-result-object v0

    invoke-direct {p0}, Lv1/k;->w()Lv1/e;

    move-result-object p0

    new-instance v1, Lv1/p;

    invoke-direct {v1, v0, p0}, Lv1/p;-><init>(Lv1/n;Lv1/e;)V

    return-object v1

    :cond_0
    invoke-direct {p0}, Lv1/k;->v()Lv1/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final q()Lv1/e;
    .locals 3

    invoke-direct {p0}, Lv1/k;->k()Lv1/e;

    move-result-object v0

    invoke-direct {p0}, Lv1/k;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lu1/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected end of expression, found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lv1/k;->r()Lv1/n;

    move-result-object p0

    invoke-virtual {p0}, Lv1/n;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
