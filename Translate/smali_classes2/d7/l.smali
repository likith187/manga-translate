.class public Ld7/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7/f$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/collection/b;

.field private final c:Landroidx/collection/b;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/HashMap;

.field private h:Ljava/util/HashMap;

.field private i:Ld7/f;

.field private j:Lb7/b;

.field private k:Lb7/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    iput-object v0, p0, Ld7/l;->b:Landroidx/collection/b;

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    iput-object v0, p0, Ld7/l;->c:Landroidx/collection/b;

    iput-boolean v1, p0, Ld7/l;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/l;->e:Z

    iput-boolean v0, p0, Ld7/l;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ld7/l;->i:Ld7/f;

    iput-object p1, p0, Ld7/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ld7/l;->t()V

    return-void
.end method

.method private A()V
    .locals 1

    iget-boolean v0, p0, Ld7/l;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld7/l;->i:Ld7/f;

    invoke-virtual {v0}, Ld7/f;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/l;->e:Z

    return-void
.end method

.method private E()V
    .locals 1

    iget-boolean v0, p0, Ld7/l;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld7/l;->i:Ld7/f;

    invoke-virtual {v0}, Ld7/f;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld7/l;->e:Z

    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Ld7/l;->j:Lb7/b;

    sget v1, La7/a;->a:F

    invoke-virtual {v0, v1}, Lb7/b;->i(F)V

    invoke-direct {p0}, Ld7/l;->I()V

    return-void
.end method

.method private I()V
    .locals 5

    invoke-static {}, La7/b;->a()Z

    move-result v0

    const-string v1, "PhysicsWorld-Frame"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncMoverChanging start ===========> mCurrentRunningBehaviors =:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v2}, Landroidx/collection/b;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La7/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld7/d;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ld7/d;->n()V

    invoke-virtual {p0, v2}, Ld7/l;->J(Ld7/d;)V

    invoke-direct {p0, v2}, Ld7/l;->z(Ld7/d;)V

    invoke-static {}, La7/b;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBehavior : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, La7/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Ld7/d;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, La7/b;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "syncMoverChanging : behavior is steady"

    invoke-static {v3}, La7/b;->c(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Ld7/d;->D()Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Ld7/l;->d:Z

    invoke-static {}, La7/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncMoverChanging end ===========> mCurrentRunningBehaviors =:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v2}, Landroidx/collection/b;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La7/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Ld7/l;->d:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Ld7/l;->A()V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Ld7/l;->i:Ld7/f;

    invoke-virtual {p0}, Ld7/f;->d()V

    :goto_1
    return-void
.end method

.method private e(Ld7/n;I)Lb7/a;
    .locals 10

    iget-object v0, p0, Ld7/l;->j:Lb7/b;

    invoke-virtual {v0}, Lb7/b;->f()La7/e;

    move-result-object v0

    iget-object v1, p1, Ld7/n;->e:La7/e;

    iget v1, v1, La7/e;->a:F

    invoke-static {v1}, La7/a;->d(F)F

    move-result v1

    iget-object v2, p1, Ld7/n;->e:La7/e;

    iget v2, v2, La7/e;->b:F

    invoke-static {v2}, La7/a;->d(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, La7/e;->d(FF)La7/e;

    move-result-object v4

    iget v0, p1, Ld7/n;->a:F

    invoke-static {v0}, La7/a;->d(F)F

    move-result v7

    iget p1, p1, Ld7/n;->b:F

    invoke-static {p1}, La7/a;->d(F)F

    move-result v8

    invoke-static {p2}, Ld7/l;->n(I)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x1

    move-object v3, p0

    move v6, p2

    invoke-virtual/range {v3 .. v9}, Ld7/l;->k(La7/e;IIFFLjava/lang/String;)Lb7/a;

    move-result-object p0

    iget-object p1, p0, Lb7/a;->e:La7/e;

    invoke-virtual {p1}, La7/e;->f()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lb7/a;->l(Z)V

    return-object p0
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {v1}, Landroidx/collection/b;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {v1, v0}, Landroidx/collection/b;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/d;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ld7/l;->C(Ld7/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {p0}, Landroidx/collection/b;->clear()V

    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {v1}, Landroidx/collection/b;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {v1, v0}, Landroidx/collection/b;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ld7/d;->k:Lb7/a;

    invoke-virtual {p0, v1}, Ld7/l;->o(Lb7/a;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Ld7/l;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object p0, p0, Ld7/l;->h:Ljava/util/HashMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public static j(Landroid/content/Context;)Ld7/l;
    .locals 1

    new-instance v0, Ld7/l;

    invoke-direct {v0, p0}, Ld7/l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private m()V
    .locals 8

    new-instance v0, Lb7/b;

    invoke-direct {v0}, Lb7/b;-><init>()V

    iput-object v0, p0, Ld7/l;->j:Lb7/b;

    new-instance v2, La7/e;

    invoke-direct {v2}, La7/e;-><init>()V

    const/4 v6, 0x0

    const-string v7, "Ground"

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Ld7/l;->k(La7/e;IIFFLjava/lang/String;)Lb7/a;

    move-result-object v0

    iput-object v0, p0, Ld7/l;->k:Lb7/a;

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWorld : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static n(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "custom"

    goto :goto_0

    :cond_0
    const-string p0, "alpha"

    goto :goto_0

    :cond_1
    const-string p0, "rotation"

    goto :goto_0

    :cond_2
    const-string p0, "scale"

    goto :goto_0

    :cond_3
    const-string p0, "position"

    :goto_0
    return-object p0
.end method

.method private t()V
    .locals 1

    new-instance v0, Ld7/f;

    invoke-direct {v0}, Ld7/f;-><init>()V

    iput-object v0, p0, Ld7/l;->i:Ld7/f;

    invoke-virtual {v0, p0}, Ld7/f;->e(Ld7/f$a;)V

    invoke-direct {p0}, Ld7/l;->u()V

    invoke-direct {p0}, Ld7/l;->m()V

    return-void
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Ld7/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, La7/a;->e(F)V

    iget-object p0, p0, Ld7/l;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    div-float/2addr v0, p0

    invoke-static {v0}, La7/a;->f(F)V

    :cond_0
    invoke-static {}, La7/b;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initConfig : sPhysicalSizeToPixelsRatio =:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, La7/a;->c:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",sSteadyAccuracy =:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, La7/a;->b:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",sRefreshRate =:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, La7/a;->a:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La7/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private w(Ld7/d;)V
    .locals 0

    iget-object p0, p0, Ld7/l;->g:Ljava/util/HashMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld7/a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ld7/a;->onAnimationCancel(Ld7/d;)V

    :cond_1
    return-void
.end method

.method private x(Ld7/d;)V
    .locals 0

    iget-object p0, p0, Ld7/l;->g:Ljava/util/HashMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld7/a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ld7/a;->onAnimationEnd(Ld7/d;)V

    :cond_1
    return-void
.end method

.method private y(Ld7/d;)V
    .locals 0

    iget-object p0, p0, Ld7/l;->g:Ljava/util/HashMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld7/a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ld7/a;->onAnimationStart(Ld7/d;)V

    :cond_1
    return-void
.end method

.method private z(Ld7/d;)V
    .locals 0

    iget-object p0, p0, Ld7/l;->h:Ljava/util/HashMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld7/b;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ld7/b;->onAnimationUpdate(Ld7/d;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public B()V
    .locals 2

    const-string v0, "release"

    invoke-virtual {p0, v0}, Ld7/l;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Ld7/l;->h()V

    invoke-direct {p0}, Ld7/l;->i()V

    invoke-direct {p0}, Ld7/l;->g()V

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public C(Ld7/d;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {p0, p1}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeBehavior behavior =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",removed =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ld7/d;->A()V

    :cond_2
    return p0
.end method

.method public D()V
    .locals 2

    iget-boolean v0, p0, Ld7/l;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "restart"

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/l;->f:Z

    invoke-direct {p0}, Ld7/l;->E()V

    :goto_0
    iget-object v1, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v1}, Landroidx/collection/b;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v1, v0}, Landroidx/collection/b;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/d;

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Ld7/l;->y(Ld7/d;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method F(Ld7/d;)V
    .locals 5

    iget-boolean v0, p0, Ld7/l;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v0, p1}, Landroidx/collection/b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ld7/l;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBehavior behavior =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v2}, Landroidx/collection/b;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v2, v1}, Landroidx/collection/b;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld7/d;

    if-eqz v2, :cond_2

    iget-object v3, v2, Ld7/d;->n:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v4, p1, Ld7/d;->n:Ljava/lang/Object;

    if-eqz v4, :cond_2

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Ld7/d;->k:Lb7/a;

    if-eqz v3, :cond_2

    iget-object v4, p1, Ld7/d;->k:Lb7/a;

    if-eqz v4, :cond_2

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Ld7/d;->D()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v1, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Ld7/l;->d:Z

    invoke-direct {p0}, Ld7/l;->E()V

    invoke-direct {p0, p1}, Ld7/l;->y(Ld7/d;)V

    :cond_4
    :goto_1
    return-void
.end method

.method H(Ld7/d;)V
    .locals 2

    iget-object v0, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v0, p1}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBehavior behavior =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentRunningBehaviors.size() =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v1}, Landroidx/collection/b;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Ld7/l;->x(Ld7/d;)V

    return-void
.end method

.method J(Ld7/d;)V
    .locals 0

    invoke-virtual {p1}, Ld7/d;->F()V

    return-void
.end method

.method public a(Ld7/d;Ld7/a;)V
    .locals 2

    iget-object v0, p0, Ld7/l;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ld7/l;->g:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Ld7/l;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs b(Ld7/b;[Ld7/d;)V
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p0, v2, p1}, Ld7/l;->c(Ld7/d;Ld7/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ld7/d;Ld7/b;)V
    .locals 2

    iget-object v0, p0, Ld7/l;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ld7/l;->h:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Ld7/l;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ld7/d;)Ld7/d;
    .locals 4

    invoke-virtual {p1, p0}, Ld7/d;->d(Ld7/l;)Ld7/d;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {v1}, Landroidx/collection/b;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {v1, v0}, Landroidx/collection/b;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/d;

    if-eqz v1, :cond_0

    iget-object v2, v1, Ld7/d;->n:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v3, p1, Ld7/d;->n:Ljava/lang/Object;

    if-eqz v3, :cond_0

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ld7/d;->s()I

    move-result v2

    invoke-virtual {p1}, Ld7/d;->s()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ld7/l;->C(Ld7/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {v0, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBehavior behavior =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mAllBehaviors.size =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {p0}, Landroidx/collection/b;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La7/b;->c(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public doFrame(J)V
    .locals 0

    iget-boolean p1, p0, Ld7/l;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ld7/l;->G()V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Ld7/l;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel with reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La7/b;->c(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Ld7/l;->b:Landroidx/collection/b;

    invoke-virtual {v0, p1}, Landroidx/collection/b;->k(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld7/d;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Ld7/l;->w(Ld7/d;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Ld7/l;->A()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld7/l;->f:Z

    return-void
.end method

.method k(La7/e;IIFFLjava/lang/String;)Lb7/a;
    .locals 7

    iget-object v0, p0, Ld7/l;->j:Lb7/b;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lb7/b;->a(La7/e;IIFFLjava/lang/String;)Lb7/a;

    move-result-object p0

    return-object p0
.end method

.method l(Lc7/c;)Lc7/b;
    .locals 0

    iget-object p0, p0, Ld7/l;->j:Lb7/b;

    invoke-virtual {p0, p1}, Lb7/b;->b(Lc7/c;)Lc7/b;

    move-result-object p0

    return-object p0
.end method

.method o(Lb7/a;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Ld7/l;->j:Lb7/b;

    invoke-virtual {p0, p1}, Lb7/b;->c(Lb7/a;)V

    const/4 p0, 0x1

    return p0
.end method

.method p(Lc7/b;)Z
    .locals 0

    iget-object p0, p0, Ld7/l;->j:Lb7/b;

    invoke-virtual {p0, p1}, Lb7/b;->d(Lc7/b;)V

    const/4 p0, 0x1

    return p0
.end method

.method q()Lb7/a;
    .locals 0

    iget-object p0, p0, Ld7/l;->k:Lb7/a;

    return-object p0
.end method

.method r(Ld7/n;I)Lb7/a;
    .locals 3

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrCreatePropertyBody : uiItem =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",propertyType =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/d;

    iget-object v2, v1, Ld7/d;->j:Ld7/n;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Ld7/d;->k:Lb7/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lb7/a;->g()I

    move-result v2

    if-ne v2, p2, :cond_1

    iget-object p0, v1, Ld7/d;->k:Lb7/a;

    return-object p0

    :cond_2
    invoke-direct {p0, p1, p2}, Ld7/l;->e(Ld7/n;I)Lb7/a;

    move-result-object p0

    return-object p0
.end method

.method s(Ljava/lang/Object;)Ld7/n;
    .locals 2

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrCreateUIItem : target =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Ld7/l;->c:Landroidx/collection/b;

    invoke-virtual {p0}, Landroidx/collection/b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld7/d;

    iget-object v0, v0, Ld7/d;->j:Ld7/n;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ld7/n;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_2
    instance-of p0, p1, Landroid/view/View;

    if-eqz p0, :cond_3

    move-object p0, p1

    check-cast p0, Landroid/view/View;

    new-instance v0, Ld7/n;

    invoke-direct {v0, p1}, Ld7/n;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Ld7/n;->b(FF)Ld7/n;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Ld7/n;->c(FF)Ld7/n;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Ld7/n;->d(FF)Ld7/n;

    return-object p1

    :cond_3
    instance-of p0, p1, Ld7/n;

    if-eqz p0, :cond_4

    check-cast p1, Ld7/n;

    return-object p1

    :cond_4
    new-instance p0, Ld7/n;

    invoke-direct {p0}, Ld7/n;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Ld7/n;->b(FF)Ld7/n;

    move-result-object p0

    return-object p0
.end method

.method public v()Z
    .locals 0

    iget-boolean p0, p0, Ld7/l;->e:Z

    return p0
.end method
