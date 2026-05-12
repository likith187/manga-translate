.class public Lcom/airbnb/lottie/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/airbnb/lottie/q0;

.field private final b:Ljava/util/HashSet;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:F

.field private f:Ljava/util/Map;

.field private g:Ljava/util/List;

.field private h:Landroidx/collection/j;

.field private i:Landroidx/collection/f;

.field private j:Ljava/util/List;

.field private k:Landroid/graphics/Rect;

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/q0;

    invoke-direct {v0}, Lcom/airbnb/lottie/q0;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/j;->a:Lcom/airbnb/lottie/q0;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/j;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/j;->p:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lr1/d;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/airbnb/lottie/j;->b:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/j;->k:Landroid/graphics/Rect;

    return-object p0
.end method

.method public c()Landroidx/collection/j;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/j;->h:Landroidx/collection/j;

    return-object p0
.end method

.method public d()F
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->e()F

    move-result v0

    iget p0, p0, Lcom/airbnb/lottie/j;->n:F

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    long-to-float p0, v0

    return p0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/j;->m:F

    iget p0, p0, Lcom/airbnb/lottie/j;->l:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/j;->m:F

    return p0
.end method

.method public g()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/j;->f:Ljava/util/Map;

    return-object p0
.end method

.method public h(F)F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/j;->l:F

    iget p0, p0, Lcom/airbnb/lottie/j;->m:F

    invoke-static {v0, p0, p1}, Lr1/i;->i(FFF)F

    move-result p0

    return p0
.end method

.method public i()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/j;->n:F

    return p0
.end method

.method public j()Ljava/util/Map;
    .locals 6

    invoke-static {}, Lr1/j;->e()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/j;->e:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/airbnb/lottie/j;->e:F

    iget-object v1, p0, Lcom/airbnb/lottie/j;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/airbnb/lottie/j;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/j0;

    iget v5, p0, Lcom/airbnb/lottie/j;->e:F

    div-float/2addr v5, v0

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/j0;->a(F)Lcom/airbnb/lottie/j0;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/j;->d:Ljava/util/Map;

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/j;->j:Ljava/util/List;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Ll1/h;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll1/h;

    invoke-virtual {v2, p1}, Ll1/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/j;->p:I

    return p0
.end method

.method public n()Lcom/airbnb/lottie/q0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/j;->a:Lcom/airbnb/lottie/q0;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public p()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/j;->l:F

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/j;->o:Z

    return p0
.end method

.method public r(I)V
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/j;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/j;->p:I

    return-void
.end method

.method public s(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/f;Ljava/util/Map;Ljava/util/Map;FLandroidx/collection/j;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/j;->k:Landroid/graphics/Rect;

    iput p2, p0, Lcom/airbnb/lottie/j;->l:F

    iput p3, p0, Lcom/airbnb/lottie/j;->m:F

    iput p4, p0, Lcom/airbnb/lottie/j;->n:F

    iput-object p5, p0, Lcom/airbnb/lottie/j;->j:Ljava/util/List;

    iput-object p6, p0, Lcom/airbnb/lottie/j;->i:Landroidx/collection/f;

    iput-object p7, p0, Lcom/airbnb/lottie/j;->c:Ljava/util/Map;

    iput-object p8, p0, Lcom/airbnb/lottie/j;->d:Ljava/util/Map;

    iput p9, p0, Lcom/airbnb/lottie/j;->e:F

    iput-object p10, p0, Lcom/airbnb/lottie/j;->h:Landroidx/collection/j;

    iput-object p11, p0, Lcom/airbnb/lottie/j;->f:Ljava/util/Map;

    iput-object p12, p0, Lcom/airbnb/lottie/j;->g:Ljava/util/List;

    return-void
.end method

.method public t(J)Lo1/e;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/j;->i:Landroidx/collection/f;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo1/e;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/airbnb/lottie/j;->j:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/e;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lo1/e;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/j;->o:Z

    return-void
.end method

.method public v(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/j;->a:Lcom/airbnb/lottie/q0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/q0;->b(Z)V

    return-void
.end method
