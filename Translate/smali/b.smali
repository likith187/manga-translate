.class public final Lb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:F

.field private final k:F

.field private l:F

.field private m:F

.field private final n:F

.field private o:Z

.field private p:F

.field private q:F

.field private r:Ljava/lang/Float;

.field private s:Ljava/lang/Float;

.field private t:Ljava/lang/Float;

.field private u:Ljava/lang/Float;

.field private final v:Lc;


# direct methods
.method public constructor <init>(F)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb;->a:F

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lb;->b:F

    const p1, 0x44bb8000    # 1500.0f

    iput p1, p0, Lb;->c:F

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lb;->d:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lb;->e:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lb;->f:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lb;->g:F

    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, p0, Lb;->h:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lb;->i:F

    const/high16 v3, 0x427a0000    # 62.5f

    iput v3, p0, Lb;->j:F

    iput v2, p0, Lb;->k:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lb;->n:F

    iput v0, p0, Lb;->p:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p1, v4

    iput p1, p0, Lb;->l:F

    iput v1, p0, Lb;->m:F

    iget p1, p0, Lb;->p:F

    mul-float/2addr p1, v3

    iput p1, p0, Lb;->q:F

    new-instance p1, Lc;

    invoke-direct {p1}, Lc;-><init>()V

    iput-object p1, p0, Lb;->v:Lc;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lb;->m:F

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lb;->a:F

    return p0
.end method

.method public final c()V
    .locals 7

    iget-boolean v0, p0, Lb;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lb;->a:F

    iget v1, p0, Lb;->n:F

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lb;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    if-lez v2, :cond_1

    neg-float v1, v0

    iget v2, p0, Lb;->l:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v0

    int-to-float v4, v3

    sub-float/2addr v0, v4

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lb;->r:Ljava/lang/Float;

    iget v0, p0, Lb;->m:F

    neg-float v1, v0

    iget v2, p0, Lb;->l:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v0

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lb;->s:Ljava/lang/Float;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lb;->l:F

    int-to-float v2, v3

    mul-float/2addr v0, v0

    sub-float/2addr v2, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lb;->t:Ljava/lang/Float;

    :cond_2
    :goto_0
    iput-boolean v3, p0, Lb;->o:Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(FF)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lb;->q:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    invoke-virtual {p0}, Lb;->b()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lb;->p:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(F)Lb;
    .locals 1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lb;->m:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb;->o:Z

    return-object p0
.end method

.method public final f(F)Lb;
    .locals 0

    iput p1, p0, Lb;->a:F

    return-object p0
.end method

.method public final g(F)Lb;
    .locals 4

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lb;->l:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lb;->u:Ljava/lang/Float;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb;->o:Z

    return-object p0
.end method

.method public final h(FFF)Lc;
    .locals 10

    invoke-virtual {p0}, Lb;->c()V

    float-to-double v0, p3

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget p3, p0, Lb;->a:F

    sub-float/2addr p1, p3

    iget p3, p0, Lb;->m:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p3, v2

    if-lez v3, :cond_0

    iget-object p3, p0, Lb;->s:Ljava/lang/Float;

    invoke-static {p3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float/2addr p3, p1

    sub-float/2addr p3, p2

    iget-object v2, p0, Lb;->s:Ljava/lang/Float;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lb;->r:Ljava/lang/Float;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr p3, v2

    sub-float p3, p1, p3

    iget-object v2, p0, Lb;->s:Ljava/lang/Float;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, p1

    sub-float/2addr v2, p2

    iget-object p1, p0, Lb;->s:Ljava/lang/Float;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p0, Lb;->r:Ljava/lang/Float;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    div-float/2addr v2, p1

    float-to-double p1, p3

    iget-object v3, p0, Lb;->s:Ljava/lang/Float;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr p1, v3

    float-to-double v3, v2

    iget-object v5, p0, Lb;->r:Ljava/lang/Float;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lb;->s:Ljava/lang/Float;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p3, p2

    float-to-double p2, p3

    iget-object v3, p0, Lb;->s:Ljava/lang/Float;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr p2, v3

    iget-object v3, p0, Lb;->r:Ljava/lang/Float;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lb;->r:Ljava/lang/Float;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    add-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    cmpg-float p3, p3, v2

    if-nez p3, :cond_1

    iget p3, p0, Lb;->l:F

    mul-float v2, p3, p1

    add-float/2addr p2, v2

    float-to-double v2, p1

    float-to-double p1, p2

    mul-double v4, p1, v0

    add-double/2addr v2, v4

    neg-float p3, p3

    float-to-double v4, p3

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    iget v4, p0, Lb;->l:F

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lb;->l:F

    neg-float v5, v4

    float-to-double v5, v5

    mul-double/2addr v2, v5

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr p1, v0

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const/4 p3, 0x1

    int-to-float p3, p3

    iget-object v2, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr p3, v2

    iget v2, p0, Lb;->m:F

    iget v3, p0, Lb;->l:F

    mul-float v4, v2, v3

    mul-float/2addr v4, p1

    add-float/2addr v4, p2

    mul-float/2addr p3, v4

    neg-float p2, v2

    mul-float/2addr p2, v3

    float-to-double v2, p2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    float-to-double v4, p1

    iget-object p2, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v6, p2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p3

    iget-object p2, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v8, p2

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iget v2, p0, Lb;->m:F

    neg-float v2, v2

    iget v3, p0, Lb;->l:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    iget v4, p0, Lb;->m:F

    neg-float v4, v4

    iget v5, p0, Lb;->l:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    float-to-double v4, v4

    iget-object v6, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget v6, p0, Lb;->m:F

    iget v7, p0, Lb;->l:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, p3

    float-to-double v6, v6

    iget-object v8, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget-object v6, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-double v6, v6

    iget-object p3, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {p3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double v8, p3

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object p3, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {p3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float/2addr p3, p1

    float-to-double v6, p3

    iget-object p1, p0, Lb;->t:Ljava/lang/Float;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v8, p1

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lb;->v:Lc;

    iget v2, p0, Lb;->a:F

    float-to-double v2, v2

    add-double/2addr v2, p2

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Lc;->e(F)V

    iget-object p1, p0, Lb;->v:Lc;

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lc;->f(F)V

    iget-object p1, p0, Lb;->v:Lc;

    double-to-float p2, p2

    iget p3, p0, Lb;->a:F

    add-float/2addr p2, p3

    invoke-virtual {p0, p2, v0}, Lb;->d(FF)Z

    move-result p2

    invoke-virtual {p1, p2}, Lc;->d(Z)V

    iget-object p1, p0, Lb;->v:Lc;

    invoke-virtual {p1}, Lc;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lb;->v:Lc;

    iget p2, p0, Lb;->a:F

    invoke-virtual {p1, p2}, Lc;->e(F)V

    iget-object p1, p0, Lb;->v:Lc;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lc;->f(F)V

    :cond_2
    iget-object p0, p0, Lb;->v:Lc;

    return-object p0
.end method
