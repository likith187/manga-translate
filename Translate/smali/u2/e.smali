.class public Lu2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/e$b;
    }
.end annotation


# static fields
.field private static o:I


# instance fields
.field private a:Lu2/f;

.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lu2/e$b;

.field private final e:Lu2/e$b;

.field private final f:Lu2/e$b;

.field private g:D

.field private h:D

.field private i:Z

.field private j:D

.field private k:D

.field private l:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private m:D

.field private final n:Lu2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lu2/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu2/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu2/e$b;-><init>(Lu2/e$a;)V

    iput-object v0, p0, Lu2/e;->d:Lu2/e$b;

    new-instance v0, Lu2/e$b;

    invoke-direct {v0, v1}, Lu2/e$b;-><init>(Lu2/e$a;)V

    iput-object v0, p0, Lu2/e;->e:Lu2/e$b;

    new-instance v0, Lu2/e$b;

    invoke-direct {v0, v1}, Lu2/e$b;-><init>(Lu2/e$a;)V

    iput-object v0, p0, Lu2/e;->f:Lu2/e$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/e;->i:Z

    const-wide v0, 0x3f747ae147ae147bL    # 0.005

    iput-wide v0, p0, Lu2/e;->j:D

    iput-wide v0, p0, Lu2/e;->k:D

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lu2/e;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu2/e;->m:D

    if-eqz p1, :cond_0

    iput-object p1, p0, Lu2/e;->n:Lu2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "spring:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lu2/e;->o:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lu2/e;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu2/e;->c:Ljava/lang/String;

    sget-object p1, Lu2/f;->c:Lu2/f;

    invoke-virtual {p0, p1}, Lu2/e;->o(Lu2/f;)Lu2/e;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d(Lu2/e$b;)D
    .locals 2

    iget-wide v0, p0, Lu2/e;->h:D

    iget-wide p0, p1, Lu2/e$b;->a:D

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private h(D)V
    .locals 7

    iget-object v0, p0, Lu2/e;->d:Lu2/e$b;

    iget-wide v1, v0, Lu2/e$b;->a:D

    mul-double/2addr v1, p1

    iget-object p0, p0, Lu2/e;->e:Lu2/e$b;

    iget-wide v3, p0, Lu2/e$b;->a:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, v0, Lu2/e$b;->a:D

    iget-wide v1, v0, Lu2/e$b;->b:D

    mul-double/2addr v1, p1

    iget-wide p0, p0, Lu2/e$b;->b:D

    mul-double/2addr p0, v5

    add-double/2addr v1, p0

    iput-wide v1, v0, Lu2/e$b;->b:D

    return-void
.end method


# virtual methods
.method public a(Lu2/h;)Lu2/e;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lu2/e;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newListener is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method b(D)V
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lu2/e;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lu2/e;->i:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-wide v2, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v2, p1

    :goto_0
    iget-wide v4, v0, Lu2/e;->m:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lu2/e;->m:D

    iget-object v2, v0, Lu2/e;->a:Lu2/f;

    iget-wide v3, v2, Lu2/f;->b:D

    iget-wide v5, v2, Lu2/f;->a:D

    iget-object v2, v0, Lu2/e;->d:Lu2/e$b;

    iget-wide v7, v2, Lu2/e$b;->a:D

    iget-wide v9, v2, Lu2/e$b;->b:D

    iget-object v2, v0, Lu2/e;->f:Lu2/e$b;

    iget-wide v11, v2, Lu2/e$b;->a:D

    iget-wide v13, v2, Lu2/e$b;->b:D

    move v15, v1

    :goto_1
    iget-wide v1, v0, Lu2/e;->m:D

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v18, v1, v16

    if-ltz v18, :cond_3

    sub-double v1, v1, v16

    iput-wide v1, v0, Lu2/e;->m:D

    cmpg-double v1, v1, v16

    if-gez v1, :cond_2

    iget-object v1, v0, Lu2/e;->e:Lu2/e$b;

    iput-wide v7, v1, Lu2/e$b;->a:D

    iput-wide v9, v1, Lu2/e$b;->b:D

    :cond_2
    iget-wide v1, v0, Lu2/e;->h:D

    sub-double v11, v1, v11

    mul-double/2addr v11, v3

    mul-double v13, v5, v9

    sub-double/2addr v11, v13

    mul-double v13, v9, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v18

    add-double/2addr v13, v7

    mul-double v20, v11, v16

    mul-double v20, v20, v18

    add-double v20, v9, v20

    sub-double v13, v1, v13

    mul-double/2addr v13, v3

    mul-double v22, v5, v20

    sub-double v13, v13, v22

    mul-double v22, v20, v16

    mul-double v22, v22, v18

    add-double v22, v7, v22

    mul-double v24, v13, v16

    mul-double v24, v24, v18

    add-double v24, v9, v24

    sub-double v18, v1, v22

    mul-double v18, v18, v3

    mul-double v22, v5, v24

    sub-double v18, v18, v22

    mul-double v22, v24, v16

    add-double v22, v7, v22

    mul-double v26, v18, v16

    add-double v26, v9, v26

    sub-double v1, v1, v22

    mul-double/2addr v1, v3

    mul-double v28, v5, v26

    sub-double v1, v1, v28

    add-double v20, v20, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v24

    add-double v20, v9, v20

    add-double v20, v20, v26

    const-wide v28, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v20, v20, v28

    add-double v13, v13, v18

    mul-double v13, v13, v24

    add-double/2addr v11, v13

    add-double/2addr v11, v1

    mul-double v11, v11, v28

    mul-double v20, v20, v16

    add-double v7, v7, v20

    mul-double v11, v11, v16

    add-double/2addr v9, v11

    move-wide/from16 v11, v22

    move-wide/from16 v13, v26

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lu2/e;->f:Lu2/e$b;

    iput-wide v11, v5, Lu2/e$b;->a:D

    iput-wide v13, v5, Lu2/e$b;->b:D

    iget-object v5, v0, Lu2/e;->d:Lu2/e$b;

    iput-wide v7, v5, Lu2/e$b;->a:D

    iput-wide v9, v5, Lu2/e$b;->b:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_4

    div-double v1, v1, v16

    invoke-direct {v0, v1, v2}, Lu2/e;->h(D)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lu2/e;->i()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lu2/e;->b:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lu2/e;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v15

    goto :goto_4

    :cond_6
    :goto_2
    cmpl-double v1, v3, v5

    if-lez v1, :cond_7

    iget-wide v3, v0, Lu2/e;->h:D

    iput-wide v3, v0, Lu2/e;->g:D

    iget-object v1, v0, Lu2/e;->d:Lu2/e$b;

    iput-wide v3, v1, Lu2/e$b;->a:D

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lu2/e;->d:Lu2/e$b;

    iget-wide v3, v1, Lu2/e$b;->a:D

    iput-wide v3, v0, Lu2/e;->h:D

    iput-wide v3, v0, Lu2/e;->g:D

    :goto_3
    invoke-virtual {v0, v5, v6}, Lu2/e;->p(D)Lu2/e;

    move v1, v2

    :goto_4
    iget-boolean v3, v0, Lu2/e;->i:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iput-boolean v4, v0, Lu2/e;->i:Z

    move v3, v2

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    if-eqz v1, :cond_9

    iput-boolean v2, v0, Lu2/e;->i:Z

    goto :goto_6

    :cond_9
    move v2, v4

    :goto_6
    iget-object v1, v0, Lu2/e;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu2/h;

    if-eqz v3, :cond_b

    invoke-interface {v4, v0}, Lu2/h;->onSpringActivate(Lu2/e;)V

    :cond_b
    invoke-interface {v4, v0}, Lu2/h;->onSpringUpdate(Lu2/e;)V

    if-eqz v2, :cond_a

    invoke-interface {v4, v0}, Lu2/h;->onSpringAtRest(Lu2/e;)V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public c()D
    .locals 2

    iget-object p0, p0, Lu2/e;->d:Lu2/e$b;

    iget-wide v0, p0, Lu2/e$b;->a:D

    return-wide v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lu2/e;->h:D

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu2/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g()D
    .locals 2

    iget-object p0, p0, Lu2/e;->d:Lu2/e$b;

    iget-wide v0, p0, Lu2/e$b;->b:D

    return-wide v0
.end method

.method public i()Z
    .locals 4

    iget-object v0, p0, Lu2/e;->d:Lu2/e$b;

    iget-wide v0, v0, Lu2/e$b;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lu2/e;->j:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lu2/e;->d:Lu2/e$b;

    invoke-direct {p0, v0}, Lu2/e;->d(Lu2/e$b;)D

    move-result-wide v0

    iget-wide v2, p0, Lu2/e;->k:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lu2/e;->a:Lu2/f;

    iget-wide v0, p0, Lu2/f;->b:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 4

    iget-object v0, p0, Lu2/e;->a:Lu2/f;

    iget-wide v0, v0, Lu2/f;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lu2/e;->g:D

    iget-wide v2, p0, Lu2/e;->h:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lu2/e;->c()D

    move-result-wide v0

    iget-wide v2, p0, Lu2/e;->h:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lu2/e;->g:D

    iget-wide v2, p0, Lu2/e;->h:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lu2/e;->c()D

    move-result-wide v0

    iget-wide v2, p0, Lu2/e;->h:D

    cmpg-double p0, v0, v2

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k()Lu2/e;
    .locals 4

    iget-object v0, p0, Lu2/e;->d:Lu2/e$b;

    iget-wide v1, v0, Lu2/e$b;->a:D

    iput-wide v1, p0, Lu2/e;->h:D

    iget-object v3, p0, Lu2/e;->f:Lu2/e$b;

    iput-wide v1, v3, Lu2/e$b;->a:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lu2/e$b;->b:D

    return-object p0
.end method

.method public l(D)Lu2/e;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lu2/e;->m(DZ)Lu2/e;

    move-result-object p0

    return-object p0
.end method

.method public m(DZ)Lu2/e;
    .locals 1

    iput-wide p1, p0, Lu2/e;->g:D

    iget-object v0, p0, Lu2/e;->d:Lu2/e$b;

    iput-wide p1, v0, Lu2/e$b;->a:D

    iget-object p1, p0, Lu2/e;->n:Lu2/b;

    invoke-virtual {p0}, Lu2/e;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu2/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lu2/e;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu2/h;

    invoke-interface {p2, p0}, Lu2/h;->onSpringUpdate(Lu2/e;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lu2/e;->k()Lu2/e;

    :cond_1
    return-object p0
.end method

.method public n(D)Lu2/e;
    .locals 2

    iget-wide v0, p0, Lu2/e;->h:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu2/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lu2/e;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lu2/e;->g:D

    iput-wide p1, p0, Lu2/e;->h:D

    iget-object p1, p0, Lu2/e;->n:Lu2/b;

    invoke-virtual {p0}, Lu2/e;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu2/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lu2/e;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu2/h;

    invoke-interface {p2, p0}, Lu2/h;->onSpringEndStateChange(Lu2/e;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public o(Lu2/f;)Lu2/e;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lu2/e;->a:Lu2/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public p(D)Lu2/e;
    .locals 3

    iget-object v0, p0, Lu2/e;->d:Lu2/e$b;

    iget-wide v1, v0, Lu2/e$b;->b:D

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    iput-wide p1, v0, Lu2/e$b;->b:D

    iget-object p1, p0, Lu2/e;->n:Lu2/b;

    invoke-virtual {p0}, Lu2/e;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu2/b;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lu2/e;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lu2/e;->r()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lu2/e;->i:Z

    return p0
.end method
