.class public Lb7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lb7/a;

.field private b:Lc7/b;

.field private c:I

.field private d:I

.field private final e:La7/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, La7/e;

    invoke-direct {v0}, La7/e;-><init>()V

    invoke-direct {p0, v0}, Lb7/b;-><init>(La7/e;)V

    return-void
.end method

.method public constructor <init>(La7/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lb7/b;->e:La7/e;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lb7/b;->a:Lb7/a;

    .line 5
    iput-object p1, p0, Lb7/b;->b:Lc7/b;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lb7/b;->c:I

    .line 7
    iput p1, p0, Lb7/b;->d:I

    return-void
.end method

.method private e()V
    .locals 2

    iget-object p0, p0, Lb7/b;->a:Lb7/a;

    :goto_0
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "world has body ====>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lb7/a;->k:Lb7/a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(F)V
    .locals 2

    iget-object v0, p0, Lb7/b;->a:Lb7/a;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lb7/a;->x:Z

    iget-object v0, v0, Lb7/a;->k:Lb7/a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb7/b;->b:Lc7/b;

    :goto_1
    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lc7/b;->e:Z

    iget-object v0, v0, Lc7/b;->b:Lc7/b;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb7/b;->a:Lb7/a;

    :goto_2
    if-eqz v0, :cond_5

    iget-boolean v1, v0, Lb7/a;->x:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lb7/a;->m:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lb7/a;->h()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v0, p1}, Lb7/b;->h(Lb7/a;F)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb7/a;->x:Z

    iget-object v1, v0, Lb7/a;->f:La7/e;

    invoke-virtual {v1}, La7/e;->f()V

    :cond_4
    :goto_3
    iget-object v0, v0, Lb7/a;->k:Lb7/a;

    goto :goto_2

    :cond_5
    return-void
.end method

.method private h(Lb7/a;F)V
    .locals 3

    invoke-virtual {p1}, Lb7/a;->x()V

    iget-object p0, p1, Lb7/a;->e:La7/e;

    iget-object v0, p1, Lb7/a;->f:La7/e;

    iget v1, p1, Lb7/a;->s:F

    invoke-virtual {v0, v1}, La7/e;->b(F)La7/e;

    move-result-object v0

    invoke-virtual {v0, p2}, La7/e;->b(F)La7/e;

    move-result-object v0

    invoke-virtual {p0, v0}, La7/e;->a(La7/e;)La7/e;

    iget-object p0, p1, Lb7/a;->e:La7/e;

    iget v0, p1, Lb7/a;->t:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, La7/e;->b(F)La7/e;

    iget-object p0, p1, Lb7/a;->l:Lc7/a;

    :goto_0
    if-eqz p0, :cond_3

    iget-object v0, p0, Lc7/a;->b:Lc7/b;

    iget-boolean v1, v0, Lc7/b;->e:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc7/b;->e:Z

    iget-object v1, p0, Lc7/a;->a:Lb7/a;

    iget-boolean v2, v1, Lb7/a;->x:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lb7/a;->m:Z

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p1, p2}, Lc7/b;->e(Lb7/a;F)V

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lc7/a;->b:Lc7/b;

    invoke-virtual {v1, p1}, Lc7/b;->j(Lb7/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p0, p0, Lc7/a;->d:Lc7/a;

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lb7/a;->c:La7/e;

    iget v0, p0, La7/e;->a:F

    iget-object v1, p1, Lb7/a;->e:La7/e;

    iget v2, v1, La7/e;->a:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iput v0, p0, La7/e;->a:F

    iget v0, p0, La7/e;->b:F

    iget v1, v1, La7/e;->b:F

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    iput v0, p0, La7/e;->b:F

    invoke-virtual {p1}, Lb7/a;->w()V

    return-void
.end method


# virtual methods
.method public a(La7/e;IIFFLjava/lang/String;)Lb7/a;
    .locals 7

    new-instance v6, Lb7/a;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lb7/a;-><init>(La7/e;IIFF)V

    invoke-virtual {v6, p6}, Lb7/a;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, v6, Lb7/a;->j:Lb7/a;

    iget-object p1, p0, Lb7/b;->a:Lb7/a;

    iput-object p1, v6, Lb7/a;->k:Lb7/a;

    if-eqz p1, :cond_0

    iput-object v6, p1, Lb7/a;->j:Lb7/a;

    :cond_0
    iput-object v6, p0, Lb7/b;->a:Lb7/a;

    iget p1, p0, Lb7/b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb7/b;->c:I

    invoke-static {}, La7/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lb7/b;->e()V

    :cond_1
    return-object v6
.end method

.method public b(Lc7/c;)Lc7/b;
    .locals 2

    invoke-static {p0, p1}, Lc7/b;->a(Lb7/b;Lc7/c;)Lc7/b;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iput-object v0, p1, Lc7/b;->a:Lc7/b;

    iget-object v1, p0, Lb7/b;->b:Lc7/b;

    iput-object v1, p1, Lc7/b;->b:Lc7/b;

    if-eqz v1, :cond_1

    iput-object p1, v1, Lc7/b;->a:Lc7/b;

    :cond_1
    iput-object p1, p0, Lb7/b;->b:Lc7/b;

    iget v1, p0, Lb7/b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb7/b;->d:I

    iget-object p0, p1, Lc7/b;->c:Lc7/a;

    iput-object p1, p0, Lc7/a;->b:Lc7/b;

    invoke-virtual {p1}, Lc7/b;->c()Lb7/a;

    move-result-object v1

    iput-object v1, p0, Lc7/a;->a:Lb7/a;

    iget-object p0, p1, Lc7/b;->c:Lc7/a;

    iput-object v0, p0, Lc7/a;->c:Lc7/a;

    invoke-virtual {p1}, Lc7/b;->b()Lb7/a;

    move-result-object v1

    iget-object v1, v1, Lb7/a;->l:Lc7/a;

    iput-object v1, p0, Lc7/a;->d:Lc7/a;

    invoke-virtual {p1}, Lc7/b;->b()Lb7/a;

    move-result-object p0

    iget-object p0, p0, Lb7/a;->l:Lc7/a;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lc7/b;->b()Lb7/a;

    move-result-object p0

    iget-object p0, p0, Lb7/a;->l:Lc7/a;

    iget-object v1, p1, Lc7/b;->c:Lc7/a;

    iput-object v1, p0, Lc7/a;->c:Lc7/a;

    :cond_2
    invoke-virtual {p1}, Lc7/b;->b()Lb7/a;

    move-result-object p0

    iget-object v1, p1, Lc7/b;->c:Lc7/a;

    iput-object v1, p0, Lb7/a;->l:Lc7/a;

    iget-object p0, p1, Lc7/b;->d:Lc7/a;

    iput-object p1, p0, Lc7/a;->b:Lc7/b;

    invoke-virtual {p1}, Lc7/b;->b()Lb7/a;

    move-result-object v1

    iput-object v1, p0, Lc7/a;->a:Lb7/a;

    iget-object p0, p1, Lc7/b;->d:Lc7/a;

    iput-object v0, p0, Lc7/a;->c:Lc7/a;

    invoke-virtual {p1}, Lc7/b;->c()Lb7/a;

    move-result-object v0

    iget-object v0, v0, Lb7/a;->l:Lc7/a;

    iput-object v0, p0, Lc7/a;->d:Lc7/a;

    invoke-virtual {p1}, Lc7/b;->c()Lb7/a;

    move-result-object p0

    iget-object p0, p0, Lb7/a;->l:Lc7/a;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lc7/b;->c()Lb7/a;

    move-result-object p0

    iget-object p0, p0, Lb7/a;->l:Lc7/a;

    iget-object v0, p1, Lc7/b;->d:Lc7/a;

    iput-object v0, p0, Lc7/a;->c:Lc7/a;

    :cond_3
    invoke-virtual {p1}, Lc7/b;->c()Lb7/a;

    move-result-object p0

    iget-object v0, p1, Lc7/b;->d:Lc7/a;

    iput-object v0, p0, Lb7/a;->l:Lc7/a;

    return-object p1
.end method

.method public c(Lb7/a;)V
    .locals 2

    iget v0, p0, Lb7/b;->c:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lb7/a;->l:Lc7/a;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lc7/a;->d:Lc7/a;

    iget-object v0, v0, Lc7/a;->b:Lc7/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lb7/b;->d(Lc7/b;)V

    :cond_1
    iput-object v1, p1, Lb7/a;->l:Lc7/a;

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lb7/a;->l:Lc7/a;

    iget-object v0, p1, Lb7/a;->j:Lb7/a;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lb7/a;->k:Lb7/a;

    iput-object v1, v0, Lb7/a;->k:Lb7/a;

    :cond_3
    iget-object v1, p1, Lb7/a;->k:Lb7/a;

    if-eqz v1, :cond_4

    iput-object v0, v1, Lb7/a;->j:Lb7/a;

    :cond_4
    iget-object v0, p0, Lb7/b;->a:Lb7/a;

    if-ne p1, v0, :cond_5

    iput-object v1, p0, Lb7/b;->a:Lb7/a;

    :cond_5
    iget p1, p0, Lb7/b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb7/b;->c:I

    return-void
.end method

.method public d(Lc7/b;)V
    .locals 5

    iget v0, p0, Lb7/b;->d:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lc7/b;->a:Lc7/b;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lc7/b;->b:Lc7/b;

    iput-object v1, v0, Lc7/b;->b:Lc7/b;

    :cond_1
    iget-object v1, p1, Lc7/b;->b:Lc7/b;

    if-eqz v1, :cond_2

    iput-object v0, v1, Lc7/b;->a:Lc7/b;

    :cond_2
    iget-object v0, p0, Lb7/b;->b:Lc7/b;

    if-ne p1, v0, :cond_3

    iput-object v1, p0, Lb7/b;->b:Lc7/b;

    :cond_3
    invoke-virtual {p1}, Lc7/b;->b()Lb7/a;

    move-result-object v0

    invoke-virtual {p1}, Lc7/b;->c()Lb7/a;

    move-result-object v1

    iget-object v2, p1, Lc7/b;->c:Lc7/a;

    iget-object v3, v2, Lc7/a;->c:Lc7/a;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lc7/a;->d:Lc7/a;

    iput-object v4, v3, Lc7/a;->d:Lc7/a;

    :cond_4
    iget-object v4, v2, Lc7/a;->d:Lc7/a;

    if-eqz v4, :cond_5

    iput-object v3, v4, Lc7/a;->c:Lc7/a;

    :cond_5
    iget-object v3, v0, Lb7/a;->l:Lc7/a;

    if-ne v2, v3, :cond_6

    iput-object v4, v0, Lb7/a;->l:Lc7/a;

    :cond_6
    const/4 v0, 0x0

    iput-object v0, v2, Lc7/a;->c:Lc7/a;

    iput-object v0, v2, Lc7/a;->d:Lc7/a;

    iget-object p1, p1, Lc7/b;->d:Lc7/a;

    iget-object v2, p1, Lc7/a;->c:Lc7/a;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lc7/a;->d:Lc7/a;

    iput-object v3, v2, Lc7/a;->d:Lc7/a;

    :cond_7
    iget-object v3, p1, Lc7/a;->d:Lc7/a;

    if-eqz v3, :cond_8

    iput-object v2, v3, Lc7/a;->c:Lc7/a;

    :cond_8
    iget-object v2, v1, Lb7/a;->l:Lc7/a;

    if-ne p1, v2, :cond_9

    iput-object v3, v1, Lb7/a;->l:Lc7/a;

    :cond_9
    iput-object v0, p1, Lc7/a;->c:Lc7/a;

    iput-object v0, p1, Lc7/a;->d:Lc7/a;

    iget p1, p0, Lb7/b;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb7/b;->d:I

    return-void
.end method

.method public f()La7/e;
    .locals 0

    iget-object p0, p0, Lb7/b;->e:La7/e;

    return-object p0
.end method

.method public i(F)V
    .locals 0

    invoke-direct {p0, p1}, Lb7/b;->g(F)V

    return-void
.end method
