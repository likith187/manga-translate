.class public Landroidx/transition/t;
.super Landroidx/transition/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/t$c;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;

.field private b:Z

.field c:I

.field f:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/j;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/t;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/t;->f:Z

    iput v0, p0, Landroidx/transition/t;->h:I

    return-void
.end method

.method private C(J)I
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    iget-wide v2, v2, Landroidx/transition/j;->mSeekOffsetInParent:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method private M()V
    .locals 3

    new-instance v0, Landroidx/transition/t$c;

    invoke-direct {v0, p0}, Landroidx/transition/t$c;-><init>(Landroidx/transition/t;)V

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, v0}, Landroidx/transition/j;->addListener(Landroidx/transition/j$i;)Landroidx/transition/j;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/transition/t;->c:I

    return-void
.end method

.method private z(Landroidx/transition/j;)V
    .locals 1

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Landroidx/transition/j;->mParent:Landroidx/transition/t;

    return-void
.end method


# virtual methods
.method public A(I)Landroidx/transition/j;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/j;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public B()I
    .locals 0

    iget-object p0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public D(Landroidx/transition/j$i;)Landroidx/transition/t;
    .locals 0

    invoke-super {p0, p1}, Landroidx/transition/j;->removeListener(Landroidx/transition/j$i;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public E(I)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->removeTarget(I)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->removeTarget(I)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public F(Landroid/view/View;)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->removeTarget(Landroid/view/View;)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->removeTarget(Landroid/view/View;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public G(Ljava/lang/Class;)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->removeTarget(Ljava/lang/Class;)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->removeTarget(Ljava/lang/Class;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public H(Ljava/lang/String;)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->removeTarget(Ljava/lang/String;)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->removeTarget(Ljava/lang/String;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public I(J)Landroidx/transition/t;
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/transition/j;->setDuration(J)Landroidx/transition/j;

    iget-wide v0, p0, Landroidx/transition/j;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1, p2}, Landroidx/transition/j;->setDuration(J)Landroidx/transition/j;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public J(Landroid/animation/TimeInterpolator;)Landroidx/transition/t;
    .locals 3

    iget v0, p0, Landroidx/transition/t;->h:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/t;->h:I

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1}, Landroidx/transition/j;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/j;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public K(I)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/transition/t;->b:Z

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-boolean v0, p0, Landroidx/transition/t;->b:Z

    :goto_0
    return-object p0
.end method

.method public L(J)Landroidx/transition/t;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/transition/j;->setStartDelay(J)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public bridge synthetic addListener(Landroidx/transition/j$i;)Landroidx/transition/j;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/t;->t(Landroidx/transition/j$i;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(I)Landroidx/transition/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/t;->u(I)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroidx/transition/j;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/transition/t;->v(Landroid/view/View;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroidx/transition/j;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/transition/t;->w(Ljava/lang/Class;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroidx/transition/j;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/transition/t;->x(Ljava/lang/String;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method protected cancel()V
    .locals 3

    invoke-super {p0}, Landroidx/transition/j;->cancel()V

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2}, Landroidx/transition/j;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureEndValues(Landroidx/transition/v;)V
    .locals 2

    iget-object v0, p1, Landroidx/transition/v;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/j;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/j;

    iget-object v1, p1, Landroidx/transition/v;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/transition/j;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/transition/j;->captureEndValues(Landroidx/transition/v;)V

    iget-object v1, p1, Landroidx/transition/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroidx/transition/v;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/j;->capturePropagationValues(Landroidx/transition/v;)V

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1}, Landroidx/transition/j;->capturePropagationValues(Landroidx/transition/v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(Landroidx/transition/v;)V
    .locals 2

    iget-object v0, p1, Landroidx/transition/v;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/j;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/j;

    iget-object v1, p1, Landroidx/transition/v;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/transition/j;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/transition/j;->captureStartValues(Landroidx/transition/v;)V

    iget-object v1, p1, Landroidx/transition/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Landroidx/transition/j;
    .locals 4

    .line 2
    invoke-super {p0}, Landroidx/transition/j;->clone()Landroidx/transition/j;

    move-result-object v0

    check-cast v0, Landroidx/transition/t;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v3, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/j;

    invoke-virtual {v3}, Landroidx/transition/j;->clone()Landroidx/transition/j;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/transition/t;->z(Landroidx/transition/j;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/t;->clone()Landroidx/transition/j;

    move-result-object p0

    return-object p0
.end method

.method createAnimators(Landroid/view/ViewGroup;Landroidx/transition/w;Landroidx/transition/w;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12

    move-object v0, p0

    invoke-virtual {p0}, Landroidx/transition/j;->getStartDelay()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/transition/j;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, Landroidx/transition/t;->b:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v6}, Landroidx/transition/j;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, Landroidx/transition/j;->setStartDelay(J)Landroidx/transition/j;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/transition/j;->setStartDelay(J)Landroidx/transition/j;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Landroidx/transition/j;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/w;Landroidx/transition/w;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Landroidx/transition/j;
    .locals 2

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/j;->excludeTarget(IZ)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/j;->excludeTarget(IZ)Landroidx/transition/j;

    move-result-object p0

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/j;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/j;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/j;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/j;

    move-result-object p0

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/j;
    .locals 2

    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/j;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/j;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/j;

    move-result-object p0

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/j;
    .locals 2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1, p2}, Landroidx/transition/j;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/transition/j;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/j;

    move-result-object p0

    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/j;->forceToEnd(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1}, Landroidx/transition/j;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method hasAnimators()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2}, Landroidx/transition/j;->hasAnimators()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isSeekingSupported()Z
    .locals 4

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/j;

    invoke-virtual {v3}, Landroidx/transition/j;->isSeekingSupported()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/j;->pause(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1}, Landroidx/transition/j;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method prepareAnimatorsForSeeking()V
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/transition/j;->mTotalDuration:J

    new-instance v0, Landroidx/transition/t$b;

    invoke-direct {v0, p0}, Landroidx/transition/t$b;-><init>(Landroidx/transition/t;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, v0}, Landroidx/transition/j;->addListener(Landroidx/transition/j$i;)Landroidx/transition/j;

    invoke-virtual {v2}, Landroidx/transition/j;->prepareAnimatorsForSeeking()V

    invoke-virtual {v2}, Landroidx/transition/j;->getTotalDurationMillis()J

    move-result-wide v3

    iget-boolean v5, p0, Landroidx/transition/t;->b:Z

    if-eqz v5, :cond_0

    iget-wide v5, p0, Landroidx/transition/j;->mTotalDuration:J

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/transition/j;->mTotalDuration:J

    goto :goto_1

    :cond_0
    iget-wide v5, p0, Landroidx/transition/j;->mTotalDuration:J

    iput-wide v5, v2, Landroidx/transition/j;->mSeekOffsetInParent:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/transition/j;->mTotalDuration:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic removeListener(Landroidx/transition/j$i;)Landroidx/transition/j;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/t;->D(Landroidx/transition/j$i;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeTarget(I)Landroidx/transition/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/t;->E(I)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroidx/transition/j;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/transition/t;->F(Landroid/view/View;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroidx/transition/j;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/transition/t;->G(Ljava/lang/Class;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroidx/transition/j;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/transition/t;->H(Ljava/lang/String;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/j;->resume(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1}, Landroidx/transition/j;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/transition/j;->start()V

    invoke-virtual {p0}, Landroidx/transition/j;->end()V

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/transition/t;->M()V

    iget-boolean v0, p0, Landroidx/transition/t;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    new-instance v3, Landroidx/transition/t$a;

    invoke-direct {v3, p0, v2}, Landroidx/transition/t$a;-><init>(Landroidx/transition/t;Landroidx/transition/j;)V

    invoke-virtual {v1, v3}, Landroidx/transition/j;->addListener(Landroidx/transition/j$i;)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/j;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/transition/j;->runAnimators()V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/j;

    invoke-virtual {v0}, Landroidx/transition/j;->runAnimators()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/j;->setCanRemoveViews(Z)V

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1}, Landroidx/transition/j;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setCurrentPlayTimeMillis(JJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->getTotalDurationMillis()J

    move-result-wide v5

    iget-object v7, v0, Landroidx/transition/j;->mParent:Landroidx/transition/t;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2

    cmp-long v7, v1, v8

    if-gez v7, :cond_0

    cmp-long v7, v3, v8

    if-ltz v7, :cond_1

    :cond_0
    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    :cond_1
    return-void

    :cond_2
    cmp-long v7, v1, v3

    const/4 v10, 0x0

    if-gez v7, :cond_3

    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    move v12, v10

    :goto_0
    cmp-long v13, v1, v8

    if-ltz v13, :cond_4

    cmp-long v14, v3, v8

    if-ltz v14, :cond_5

    :cond_4
    cmp-long v14, v1, v5

    if-gtz v14, :cond_6

    cmp-long v14, v3, v5

    if-lez v14, :cond_6

    :cond_5
    iput-boolean v10, v0, Landroidx/transition/j;->mEnded:Z

    sget-object v14, Landroidx/transition/j$j;->a:Landroidx/transition/j$j;

    invoke-virtual {v0, v14, v12}, Landroidx/transition/j;->notifyListeners(Landroidx/transition/j$j;Z)V

    :cond_6
    iget-boolean v14, v0, Landroidx/transition/t;->b:Z

    if-eqz v14, :cond_8

    :goto_1
    iget-object v7, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_7

    iget-object v7, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/transition/j;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroidx/transition/j;->setCurrentPlayTimeMillis(JJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    move/from16 v16, v12

    goto :goto_4

    :cond_8
    invoke-direct {v0, v3, v4}, Landroidx/transition/t;->C(J)I

    move-result v10

    if-ltz v7, :cond_a

    :goto_2
    iget-object v7, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_7

    iget-object v7, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/transition/j;

    iget-wide v14, v7, Landroidx/transition/j;->mSeekOffsetInParent:J

    move/from16 v16, v12

    sub-long v11, v1, v14

    cmp-long v17, v11, v8

    if-gez v17, :cond_9

    goto :goto_4

    :cond_9
    sub-long v14, v3, v14

    invoke-virtual {v7, v11, v12, v14, v15}, Landroidx/transition/j;->setCurrentPlayTimeMillis(JJ)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v16

    goto :goto_2

    :cond_a
    move/from16 v16, v12

    :goto_3
    if-ltz v10, :cond_c

    iget-object v7, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/transition/j;

    iget-wide v11, v7, Landroidx/transition/j;->mSeekOffsetInParent:J

    sub-long v14, v1, v11

    sub-long v11, v3, v11

    invoke-virtual {v7, v14, v15, v11, v12}, Landroidx/transition/j;->setCurrentPlayTimeMillis(JJ)V

    cmp-long v7, v14, v8

    if-ltz v7, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_c
    :goto_4
    iget-object v7, v0, Landroidx/transition/j;->mParent:Landroidx/transition/t;

    if-eqz v7, :cond_10

    cmp-long v1, v1, v5

    if-lez v1, :cond_d

    cmp-long v2, v3, v5

    if-lez v2, :cond_e

    :cond_d
    if-gez v13, :cond_10

    cmp-long v2, v3, v8

    if-ltz v2, :cond_10

    :cond_e
    if-lez v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/transition/j;->mEnded:Z

    :cond_f
    sget-object v1, Landroidx/transition/j$j;->b:Landroidx/transition/j$j;

    move/from16 v11, v16

    invoke-virtual {v0, v1, v11}, Landroidx/transition/j;->notifyListeners(Landroidx/transition/j$j;Z)V

    :cond_10
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroidx/transition/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/transition/t;->I(J)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/j$f;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/j;->setEpicenterCallback(Landroidx/transition/j$f;)V

    iget v0, p0, Landroidx/transition/t;->h:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/transition/t;->h:I

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1}, Landroidx/transition/j;->setEpicenterCallback(Landroidx/transition/j$f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/j;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/t;->J(Landroid/animation/TimeInterpolator;)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public setPathMotion(Landroidx/transition/g;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/transition/j;->setPathMotion(Landroidx/transition/g;)V

    iget v0, p0, Landroidx/transition/t;->h:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/transition/t;->h:I

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->setPathMotion(Landroidx/transition/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagation(Landroidx/transition/r;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/j;->setPropagation(Landroidx/transition/r;)V

    iget v0, p0, Landroidx/transition/t;->h:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/transition/t;->h:I

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/j;

    invoke-virtual {v2, p1}, Landroidx/transition/j;->setPropagation(Landroidx/transition/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setStartDelay(J)Landroidx/transition/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/transition/t;->L(J)Landroidx/transition/t;

    move-result-object p0

    return-object p0
.end method

.method public t(Landroidx/transition/j$i;)Landroidx/transition/t;
    .locals 0

    invoke-super {p0, p1}, Landroidx/transition/j;->addListener(Landroidx/transition/j$i;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Landroidx/transition/j;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/transition/j;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public u(I)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->addTarget(I)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->addTarget(I)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public v(Landroid/view/View;)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->addTarget(Landroid/view/View;)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->addTarget(Landroid/view/View;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public w(Ljava/lang/Class;)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->addTarget(Ljava/lang/Class;)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->addTarget(Ljava/lang/Class;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Landroidx/transition/t;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/j;

    invoke-virtual {v1, p1}, Landroidx/transition/j;->addTarget(Ljava/lang/String;)Landroidx/transition/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/j;->addTarget(Ljava/lang/String;)Landroidx/transition/j;

    move-result-object p0

    check-cast p0, Landroidx/transition/t;

    return-object p0
.end method

.method public y(Landroidx/transition/j;)Landroidx/transition/t;
    .locals 4

    invoke-direct {p0, p1}, Landroidx/transition/t;->z(Landroidx/transition/j;)V

    iget-wide v0, p0, Landroidx/transition/j;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0, v1}, Landroidx/transition/j;->setDuration(J)Landroidx/transition/j;

    :cond_0
    iget v0, p0, Landroidx/transition/t;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/transition/j;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/j;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/j;

    :cond_1
    iget v0, p0, Landroidx/transition/t;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/transition/j;->getPropagation()Landroidx/transition/r;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/transition/j;->setPropagation(Landroidx/transition/r;)V

    :cond_2
    iget v0, p0, Landroidx/transition/t;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/transition/j;->getPathMotion()Landroidx/transition/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/j;->setPathMotion(Landroidx/transition/g;)V

    :cond_3
    iget v0, p0, Landroidx/transition/t;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/transition/j;->getEpicenterCallback()Landroidx/transition/j$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/j;->setEpicenterCallback(Landroidx/transition/j$f;)V

    :cond_4
    return-object p0
.end method
