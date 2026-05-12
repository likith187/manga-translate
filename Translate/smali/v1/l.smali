.class public final Lv1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/math/MathContext;

.field private final c:Ljava/util/List;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mathContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lv1/l;->b:Ljava/math/MathContext;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv1/l;->c:Ljava/util/List;

    return-void
.end method

.method private final a(Lv1/o;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lv1/l;->b(Lv1/o;Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Lv1/o;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lv1/l;->a:Ljava/lang/String;

    iget v1, p0, Lv1/l;->d:I

    iget v2, p0, Lv1/l;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv1/l;->c:Ljava/util/List;

    new-instance v1, Lv1/n;

    invoke-direct {v1, p1, v0, p2}, Lv1/n;-><init>(Lv1/o;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final c()C
    .locals 3

    iget-object v0, p0, Lv1/l;->a:Ljava/lang/String;

    iget v1, p0, Lv1/l;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv1/l;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private final d()V
    .locals 1

    :goto_0
    invoke-direct {p0}, Lv1/l;->l()C

    move-result v0

    invoke-direct {p0, v0}, Lv1/l;->f(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lv1/l;->c()C

    goto :goto_0

    :cond_0
    sget-object v0, Lv1/o;->IDENTIFIER:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    return-void
.end method

.method private final e(C)Z
    .locals 0

    const/16 p0, 0x61

    if-gt p0, p1, :cond_0

    const/16 p0, 0x7b

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x41

    if-gt p0, p1, :cond_1

    const/16 p0, 0x5b

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5f

    if-ne p1, p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final f(C)Z
    .locals 1

    invoke-direct {p0, p1}, Lv1/l;->e(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lv1/l;->h(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final g()Z
    .locals 1

    iget v0, p0, Lv1/l;->e:I

    iget-object p0, p0, Lv1/l;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final h(C)Z
    .locals 0

    const/16 p0, 0x2e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x30

    if-gt p0, p1, :cond_0

    const/16 p0, 0x3a

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final i(CCC)Z
    .locals 4

    invoke-direct {p0, p1}, Lv1/l;->h(C)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x2d

    const/16 v1, 0x2b

    const/16 v2, 0x65

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x45

    if-ne p1, v3, :cond_2

    :goto_0
    invoke-direct {p0, p2}, Lv1/l;->h(C)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p3}, Lv1/l;->h(C)Z

    move-result p0

    if-nez p0, :cond_6

    if-eq p3, v1, :cond_6

    if-ne p3, v0, :cond_5

    goto :goto_2

    :cond_2
    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_5

    :goto_1
    if-eq p2, v2, :cond_4

    if-ne p2, v3, :cond_5

    :cond_4
    invoke-direct {p0, p3}, Lv1/l;->h(C)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method

.method private final j(C)Z
    .locals 3

    invoke-direct {p0}, Lv1/l;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lv1/l;->a:Ljava/lang/String;

    iget v2, p0, Lv1/l;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    iget p1, p0, Lv1/l;->e:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lv1/l;->e:I

    return v0
.end method

.method private final k()V
    .locals 4

    :goto_0
    invoke-direct {p0}, Lv1/l;->l()C

    move-result v0

    invoke-direct {p0, v0}, Lv1/l;->h(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lv1/l;->c()C

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lv1/l;->l()C

    move-result v0

    invoke-direct {p0}, Lv1/l;->n()C

    move-result v1

    invoke-direct {p0}, Lv1/l;->m()C

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lv1/l;->i(CCC)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lv1/l;->c()C

    :goto_1
    invoke-direct {p0}, Lv1/l;->l()C

    move-result v0

    invoke-direct {p0}, Lv1/l;->n()C

    move-result v1

    invoke-direct {p0}, Lv1/l;->m()C

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lv1/l;->i(CCC)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lv1/l;->c()C

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lv1/l;->a:Ljava/lang/String;

    iget v2, p0, Lv1/l;->d:I

    iget v3, p0, Lv1/l;->e:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lv1/l;->b:Ljava/math/MathContext;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    sget-object v1, Lv1/o;->NUMBER:Lv1/o;

    invoke-direct {p0, v1, v0}, Lv1/l;->b(Lv1/o;Ljava/lang/Object;)V

    return-void
.end method

.method private final l()C
    .locals 1

    invoke-direct {p0}, Lv1/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv1/l;->a:Ljava/lang/String;

    iget p0, p0, Lv1/l;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    return p0
.end method

.method private final m()C
    .locals 2

    iget v0, p0, Lv1/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lv1/l;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv1/l;->a:Ljava/lang/String;

    iget p0, p0, Lv1/l;->e:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    return p0
.end method

.method private final n()C
    .locals 1

    iget v0, p0, Lv1/l;->e:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lv1/l;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final o()V
    .locals 3

    iget v0, p0, Lv1/l;->e:I

    iput v0, p0, Lv1/l;->d:I

    invoke-direct {p0}, Lv1/l;->c()C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    sget-object v0, Lv1/o;->PLUS:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_3
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4

    sget-object v0, Lv1/o;->MINUS:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_4
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_5

    sget-object v0, Lv1/o;->STAR:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_5
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    sget-object v0, Lv1/o;->SLASH:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_6
    const/16 v1, 0x25

    if-ne v0, v1, :cond_7

    sget-object v0, Lv1/o;->MODULO:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_7
    const/16 v1, 0x5e

    if-ne v0, v1, :cond_8

    sget-object v0, Lv1/o;->EXPONENT:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_8
    const/16 v1, 0x221a

    if-ne v0, v1, :cond_9

    sget-object v0, Lv1/o;->SQUARE_ROOT:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_9
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_b

    invoke-direct {p0, v1}, Lv1/l;->j(C)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lv1/o;->EQUAL_EQUAL:Lv1/o;

    :goto_0
    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lv1/o;->ASSIGN:Lv1/o;

    goto :goto_0

    :cond_b
    const/16 v2, 0x21

    if-ne v0, v2, :cond_d

    invoke-direct {p0, v1}, Lv1/l;->j(C)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lv1/o;->NOT_EQUAL:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_c
    invoke-static {v0}, Lv1/m;->a(C)V

    goto/16 :goto_3

    :cond_d
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_f

    invoke-direct {p0, v1}, Lv1/l;->j(C)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lv1/o;->GREATER_EQUAL:Lv1/o;

    :goto_1
    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_e
    sget-object v0, Lv1/o;->GREATER:Lv1/o;

    goto :goto_1

    :cond_f
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_11

    invoke-direct {p0, v1}, Lv1/l;->j(C)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lv1/o;->LESS_EQUAL:Lv1/o;

    :goto_2
    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto/16 :goto_3

    :cond_10
    sget-object v0, Lv1/o;->LESS:Lv1/o;

    goto :goto_2

    :cond_11
    const/16 v1, 0x7c

    if-ne v0, v1, :cond_13

    invoke-direct {p0, v1}, Lv1/l;->j(C)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lv1/o;->BAR_BAR:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto :goto_3

    :cond_12
    invoke-static {v0}, Lv1/m;->a(C)V

    goto :goto_3

    :cond_13
    const/16 v1, 0x26

    if-ne v0, v1, :cond_15

    invoke-direct {p0, v1}, Lv1/l;->j(C)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Lv1/o;->AMP_AMP:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto :goto_3

    :cond_14
    invoke-static {v0}, Lv1/m;->a(C)V

    goto :goto_3

    :cond_15
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_16

    sget-object v0, Lv1/o;->COMMA:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto :goto_3

    :cond_16
    const/16 v1, 0x28

    if-ne v0, v1, :cond_17

    sget-object v0, Lv1/o;->LEFT_PAREN:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto :goto_3

    :cond_17
    const/16 v1, 0x29

    if-ne v0, v1, :cond_18

    sget-object v0, Lv1/o;->RIGHT_PAREN:Lv1/o;

    invoke-direct {p0, v0}, Lv1/l;->a(Lv1/o;)V

    goto :goto_3

    :cond_18
    invoke-direct {p0, v0}, Lv1/l;->h(C)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lv1/l;->k()V

    goto :goto_3

    :cond_19
    invoke-direct {p0, v0}, Lv1/l;->e(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lv1/l;->d()V

    goto :goto_3

    :cond_1a
    invoke-static {v0}, Lv1/m;->a(C)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final p()Ljava/util/List;
    .locals 5

    :goto_0
    invoke-direct {p0}, Lv1/l;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lv1/l;->o()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv1/l;->c:Ljava/util/List;

    new-instance v1, Lv1/n;

    sget-object v2, Lv1/o;->EOF:Lv1/o;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lv1/n;-><init>(Lv1/o;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lv1/l;->c:Ljava/util/List;

    return-object p0
.end method
