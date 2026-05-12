.class Landroidx/transition/j$h;
.super Landroidx/transition/p;
.source "SourceFile"

# interfaces
.implements Landroidx/transition/s;
.implements Landroidx/dynamicanimation/animation/c$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private f:Z

.field private h:Z

.field private i:[Lc0/a;

.field private final j:Landroidx/transition/x;

.field final synthetic k:Landroidx/transition/j;


# direct methods
.method constructor <init>(Landroidx/transition/j;)V
    .locals 2

    iput-object p1, p0, Landroidx/transition/j$h;->k:Landroidx/transition/j;

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/j$h;->a:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/transition/j$h;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/transition/j$h;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/transition/j$h;->i:[Lc0/a;

    new-instance p1, Landroidx/transition/x;

    invoke-direct {p1}, Landroidx/transition/x;-><init>()V

    iput-object p1, p0, Landroidx/transition/j$h;->j:Landroidx/transition/x;

    return-void
.end method

.method private h()V
    .locals 5

    iget-object v0, p0, Landroidx/transition/j$h;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/transition/j$h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/j$h;->i:[Lc0/a;

    if-nez v1, :cond_1

    new-array v1, v0, [Lc0/a;

    iput-object v1, p0, Landroidx/transition/j$h;->i:[Lc0/a;

    :cond_1
    iget-object v1, p0, Landroidx/transition/j$h;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/transition/j$h;->i:[Lc0/a;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc0/a;

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/transition/j$h;->i:[Lc0/a;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v4, p0}, Lc0/a;->accept(Ljava/lang/Object;)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Landroidx/transition/j$h;->i:[Lc0/a;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/j;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/j$h;->h:Z

    return-void
.end method

.method public i()J
    .locals 2

    iget-object p0, p0, Landroidx/transition/j$h;->k:Landroidx/transition/j;

    invoke-virtual {p0}, Landroidx/transition/j;->getTotalDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method j()V
    .locals 6

    invoke-virtual {p0}, Landroidx/transition/j$h;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    iget-object v0, p0, Landroidx/transition/j$h;->k:Landroidx/transition/j;

    iget-wide v4, p0, Landroidx/transition/j$h;->a:J

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/transition/j;->setCurrentPlayTimeMillis(JJ)V

    iput-wide v2, p0, Landroidx/transition/j$h;->a:J

    return-void
.end method

.method public k()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/j$h;->f:Z

    iget-object v0, p0, Landroidx/transition/j$h;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/transition/j$h;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc0/a;

    invoke-interface {v2, p0}, Lc0/a;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/transition/j$h;->h()V

    return-void
.end method

.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/c;FF)V
    .locals 4

    invoke-virtual {p0}, Landroidx/transition/j$h;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/transition/j$h;->k:Landroidx/transition/j;

    iget-wide v0, p0, Landroidx/transition/j$h;->a:J

    invoke-virtual {p3, p1, p2, v0, v1}, Landroidx/transition/j;->setCurrentPlayTimeMillis(JJ)V

    iput-wide p1, p0, Landroidx/transition/j$h;->a:J

    invoke-direct {p0}, Landroidx/transition/j$h;->h()V

    return-void
.end method
