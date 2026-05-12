.class Lj1/o$a;
.super Ls1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/o;->r(Ls1/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ls1/b;

.field final synthetic e:Ls1/c;

.field final synthetic f:Ll1/b;

.field final synthetic g:Lj1/o;


# direct methods
.method constructor <init>(Lj1/o;Ls1/b;Ls1/c;Ll1/b;)V
    .locals 0

    iput-object p1, p0, Lj1/o$a;->g:Lj1/o;

    iput-object p2, p0, Lj1/o$a;->d:Ls1/b;

    iput-object p3, p0, Lj1/o$a;->e:Ls1/c;

    iput-object p4, p0, Lj1/o$a;->f:Ll1/b;

    invoke-direct {p0}, Ls1/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ls1/b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj1/o$a;->d(Ls1/b;)Ll1/b;

    move-result-object p0

    return-object p0
.end method

.method public d(Ls1/b;)Ll1/b;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lj1/o$a;->d:Ls1/b;

    invoke-virtual/range {p1 .. p1}, Ls1/b;->f()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ls1/b;->a()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ls1/b;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll1/b;

    iget-object v4, v4, Ll1/b;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ls1/b;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll1/b;

    iget-object v5, v5, Ll1/b;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ls1/b;->d()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ls1/b;->c()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ls1/b;->e()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Ls1/b;->h(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ls1/b;

    iget-object v1, v0, Lj1/o$a;->e:Ls1/c;

    iget-object v2, v0, Lj1/o$a;->d:Ls1/b;

    invoke-virtual {v1, v2}, Ls1/c;->a(Ls1/b;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ls1/b;->c()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ls1/b;->b()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ll1/b;

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ls1/b;->g()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lj1/o$a;->f:Ll1/b;

    iget-object v4, v1, Ll1/b;->b:Ljava/lang/String;

    iget v5, v1, Ll1/b;->c:F

    iget-object v6, v1, Ll1/b;->d:Ll1/b$a;

    iget v7, v1, Ll1/b;->e:I

    iget v8, v1, Ll1/b;->f:F

    iget v9, v1, Ll1/b;->g:F

    iget v10, v1, Ll1/b;->h:I

    iget v11, v1, Ll1/b;->i:I

    iget v12, v1, Ll1/b;->j:F

    iget-boolean v13, v1, Ll1/b;->k:Z

    iget-object v14, v1, Ll1/b;->l:Landroid/graphics/PointF;

    iget-object v15, v1, Ll1/b;->m:Landroid/graphics/PointF;

    invoke-virtual/range {v2 .. v15}, Ll1/b;->a(Ljava/lang/String;Ljava/lang/String;FLl1/b$a;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v0, v0, Lj1/o$a;->f:Ll1/b;

    return-object v0
.end method
