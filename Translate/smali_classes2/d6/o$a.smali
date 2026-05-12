.class Ld6/o$a;
.super Lm6/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/o;->q(Lm6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lm6/a;

.field final synthetic e:Lm6/b;

.field final synthetic f:Lf6/b;

.field final synthetic g:Ld6/o;


# direct methods
.method constructor <init>(Ld6/o;Lm6/a;Lm6/b;Lf6/b;)V
    .locals 0

    iput-object p1, p0, Ld6/o$a;->g:Ld6/o;

    iput-object p2, p0, Ld6/o$a;->d:Lm6/a;

    iput-object p3, p0, Ld6/o$a;->e:Lm6/b;

    iput-object p4, p0, Ld6/o$a;->f:Lf6/b;

    invoke-direct {p0}, Lm6/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lm6/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld6/o$a;->d(Lm6/a;)Lf6/b;

    move-result-object p0

    return-object p0
.end method

.method public d(Lm6/a;)Lf6/b;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Ld6/o$a;->d:Lm6/a;

    invoke-virtual/range {p1 .. p1}, Lm6/a;->f()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lm6/a;->a()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lm6/a;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf6/b;

    iget-object v4, v4, Lf6/b;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lm6/a;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf6/b;

    iget-object v5, v5, Lf6/b;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lm6/a;->d()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lm6/a;->c()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lm6/a;->e()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lm6/a;->h(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lm6/a;

    iget-object v1, v0, Ld6/o$a;->e:Lm6/b;

    iget-object v2, v0, Ld6/o$a;->d:Lm6/a;

    invoke-virtual {v1, v2}, Lm6/b;->a(Lm6/a;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lm6/a;->c()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lm6/a;->b()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lf6/b;

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lm6/a;->g()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v2, v0, Ld6/o$a;->f:Lf6/b;

    iget-object v4, v1, Lf6/b;->b:Ljava/lang/String;

    iget v5, v1, Lf6/b;->c:F

    iget-object v6, v1, Lf6/b;->d:Lf6/b$a;

    iget v7, v1, Lf6/b;->e:I

    iget v8, v1, Lf6/b;->f:F

    iget v9, v1, Lf6/b;->g:F

    iget v10, v1, Lf6/b;->h:I

    iget v11, v1, Lf6/b;->i:I

    iget v12, v1, Lf6/b;->j:F

    iget-boolean v13, v1, Lf6/b;->k:Z

    iget-object v14, v1, Lf6/b;->l:Landroid/graphics/PointF;

    iget-object v15, v1, Lf6/b;->m:Landroid/graphics/PointF;

    invoke-virtual/range {v2 .. v15}, Lf6/b;->a(Ljava/lang/String;Ljava/lang/String;FLf6/b$a;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v0, v0, Ld6/o$a;->f:Lf6/b;

    return-object v0
.end method
