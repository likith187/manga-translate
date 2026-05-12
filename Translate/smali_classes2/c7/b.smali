.class public Lc7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lc7/b;

.field public b:Lc7/b;

.field public c:Lc7/a;

.field public d:Lc7/a;

.field public e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Lb7/a;

.field private m:Lb7/a;

.field private final n:La7/e;

.field private final o:La7/e;

.field private final p:La7/e;

.field private final q:La7/e;

.field private final r:La7/e;

.field private final s:La7/c;


# direct methods
.method private constructor <init>(La7/e;Lc7/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc7/b;->a:Lc7/b;

    iput-object v0, p0, Lc7/b;->b:Lc7/b;

    const/4 v0, 0x0

    iput v0, p0, Lc7/b;->h:F

    iput v0, p0, Lc7/b;->j:F

    new-instance v1, La7/e;

    invoke-direct {v1}, La7/e;-><init>()V

    iput-object v1, p0, Lc7/b;->n:La7/e;

    new-instance v2, La7/e;

    invoke-direct {v2}, La7/e;-><init>()V

    iput-object v2, p0, Lc7/b;->o:La7/e;

    new-instance v2, La7/e;

    invoke-direct {v2}, La7/e;-><init>()V

    iput-object v2, p0, Lc7/b;->p:La7/e;

    new-instance v3, La7/e;

    invoke-direct {v3}, La7/e;-><init>()V

    iput-object v3, p0, Lc7/b;->q:La7/e;

    new-instance v3, La7/c;

    invoke-direct {v3}, La7/c;-><init>()V

    iput-object v3, p0, Lc7/b;->s:La7/c;

    iput-object p1, p0, Lc7/b;->r:La7/e;

    iget-object p1, p2, Lc7/c;->a:Lb7/a;

    iput-object p1, p0, Lc7/b;->l:Lb7/a;

    iget-object p1, p2, Lc7/c;->b:Lb7/a;

    iput-object p1, p0, Lc7/b;->m:Lb7/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc7/b;->e:Z

    new-instance p1, Lc7/a;

    invoke-direct {p1}, Lc7/a;-><init>()V

    iput-object p1, p0, Lc7/b;->c:Lc7/a;

    new-instance p1, Lc7/a;

    invoke-direct {p1}, Lc7/a;-><init>()V

    iput-object p1, p0, Lc7/b;->d:Lc7/a;

    iget p1, p2, Lc7/c;->e:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    iget p1, p2, Lc7/c;->d:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    iget p1, p2, Lc7/c;->f:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lc7/c;->c:La7/e;

    invoke-virtual {v2, p1}, La7/e;->e(La7/e;)La7/e;

    invoke-virtual {v1, v2}, La7/e;->e(La7/e;)La7/e;

    move-result-object p1

    iget-object v0, p0, Lc7/b;->m:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->f()La7/e;

    move-result-object v0

    invoke-virtual {p1, v0}, La7/e;->g(La7/e;)La7/e;

    iget p1, p2, Lc7/c;->d:F

    iput p1, p0, Lc7/b;->i:F

    iget p1, p2, Lc7/c;->e:F

    iput p1, p0, Lc7/b;->f:F

    iget p1, p2, Lc7/c;->f:F

    iput p1, p0, Lc7/b;->g:F

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lb7/b;Lc7/c;)Lc7/b;
    .locals 1

    new-instance v0, Lc7/b;

    invoke-virtual {p0}, Lb7/b;->f()La7/e;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lc7/b;-><init>(La7/e;Lc7/c;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lb7/a;
    .locals 0

    iget-object p0, p0, Lc7/b;->l:Lb7/a;

    return-object p0
.end method

.method public final c()Lb7/a;
    .locals 0

    iget-object p0, p0, Lc7/b;->m:Lb7/a;

    return-object p0
.end method

.method public d()La7/e;
    .locals 0

    iget-object p0, p0, Lc7/b;->p:La7/e;

    return-object p0
.end method

.method public e(Lb7/a;F)V
    .locals 4

    iget v0, p1, Lb7/a;->s:F

    iput v0, p0, Lc7/b;->k:F

    const v0, 0x40c90fdb

    iget v1, p0, Lc7/b;->f:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lb7/a;->e()F

    move-result v2

    mul-float/2addr v2, v0

    iget v0, p0, Lc7/b;->g:F

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Lb7/a;->e()F

    move-result v0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v2, v0

    const/high16 v1, 0x34000000

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    mul-float/2addr p2, v2

    iput p2, p0, Lc7/b;->j:F

    :cond_0
    iget p2, p0, Lc7/b;->j:F

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p2

    iput v1, p0, Lc7/b;->j:F

    :cond_1
    iget p2, p0, Lc7/b;->j:F

    mul-float/2addr v0, p2

    iput v0, p0, Lc7/b;->h:F

    iget-object v0, p0, Lc7/b;->s:La7/c;

    iget-object v1, v0, La7/c;->a:La7/e;

    iget v2, p0, Lc7/b;->k:F

    add-float v3, v2, p2

    iput v3, v1, La7/e;->a:F

    iget-object v1, v0, La7/c;->b:La7/e;

    add-float/2addr v2, p2

    iput v2, v1, La7/e;->b:F

    invoke-virtual {v0}, La7/c;->a()La7/c;

    iget-object p2, p0, Lc7/b;->o:La7/e;

    iget-object v0, p1, Lb7/a;->c:La7/e;

    invoke-virtual {p2, v0}, La7/e;->e(La7/e;)La7/e;

    move-result-object p2

    iget-object v0, p0, Lc7/b;->n:La7/e;

    invoke-virtual {p2, v0}, La7/e;->g(La7/e;)La7/e;

    move-result-object p2

    iget-object v0, p0, Lc7/b;->p:La7/e;

    invoke-virtual {p2, v0}, La7/e;->g(La7/e;)La7/e;

    move-result-object p2

    iget v0, p0, Lc7/b;->h:F

    invoke-virtual {p2, v0}, La7/e;->b(F)La7/e;

    iget-object p1, p1, Lb7/a;->e:La7/e;

    iget p2, p1, La7/e;->a:F

    iget v0, p0, Lc7/b;->k:F

    iget-object p0, p0, Lc7/b;->q:La7/e;

    iget v1, p0, La7/e;->a:F

    mul-float/2addr v1, v0

    add-float/2addr p2, v1

    iput p2, p1, La7/e;->a:F

    iget p2, p1, La7/e;->b:F

    iget p0, p0, La7/e;->b:F

    mul-float/2addr v0, p0

    add-float/2addr p2, v0

    iput p2, p1, La7/e;->b:F

    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lc7/b;->g:F

    return-void
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Lc7/b;->f:F

    return-void
.end method

.method public h(FF)V
    .locals 0

    iget-object p0, p0, Lc7/b;->p:La7/e;

    iput p1, p0, La7/e;->a:F

    iput p2, p0, La7/e;->b:F

    return-void
.end method

.method public i(La7/e;)V
    .locals 0

    iget-object p0, p0, Lc7/b;->p:La7/e;

    invoke-virtual {p0, p1}, La7/e;->e(La7/e;)La7/e;

    return-void
.end method

.method public j(Lb7/a;)V
    .locals 2

    iget-object v0, p0, Lc7/b;->r:La7/e;

    iget-object v1, p0, Lc7/b;->q:La7/e;

    invoke-virtual {v0, v1}, La7/e;->e(La7/e;)La7/e;

    iget-object v0, p0, Lc7/b;->r:La7/e;

    iget v1, p0, Lc7/b;->j:F

    invoke-virtual {v0, v1}, La7/e;->b(F)La7/e;

    move-result-object v0

    iget-object v1, p0, Lc7/b;->o:La7/e;

    invoke-virtual {v0, v1}, La7/e;->a(La7/e;)La7/e;

    move-result-object v0

    iget-object v1, p1, Lb7/a;->e:La7/e;

    invoke-virtual {v0, v1}, La7/e;->a(La7/e;)La7/e;

    move-result-object v0

    invoke-virtual {v0}, La7/e;->c()La7/e;

    iget-object v0, p0, Lc7/b;->s:La7/c;

    iget-object v1, p0, Lc7/b;->r:La7/e;

    invoke-static {v0, v1, v1}, La7/c;->b(La7/c;La7/e;La7/e;)V

    iget-object v0, p0, Lc7/b;->q:La7/e;

    iget-object v1, p0, Lc7/b;->r:La7/e;

    invoke-virtual {v0, v1}, La7/e;->a(La7/e;)La7/e;

    iget-object p1, p1, Lb7/a;->e:La7/e;

    iget-object v0, p0, Lc7/b;->r:La7/e;

    iget p0, p0, Lc7/b;->k:F

    invoke-virtual {v0, p0}, La7/e;->b(F)La7/e;

    move-result-object p0

    invoke-virtual {p1, p0}, La7/e;->a(La7/e;)La7/e;

    return-void
.end method
