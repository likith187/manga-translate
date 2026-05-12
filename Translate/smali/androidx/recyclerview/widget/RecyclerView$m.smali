.class public abstract Landroidx/recyclerview/widget/RecyclerView$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$m$b;,
        Landroidx/recyclerview/widget/RecyclerView$m$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$m$a;

.field private b:Ljava/util/ArrayList;

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->a:Landroidx/recyclerview/widget/RecyclerView$m$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->c:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->d:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->e:J

    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->f:J

    return-void
.end method

.method static e(Landroidx/recyclerview/widget/RecyclerView$d0;)I
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->mFlags:I

    and-int/lit8 v1, v0, 0xe

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->isInvalid()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    return v3

    :cond_0
    and-int/2addr v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getOldPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAbsoluteAdapterPosition()I

    move-result p0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v0, p0, :cond_1

    or-int/lit16 v1, v1, 0x800

    :cond_1
    return v1
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$d0;Landroidx/recyclerview/widget/RecyclerView$m$b;Landroidx/recyclerview/widget/RecyclerView$m$b;)Z
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$d0;Landroidx/recyclerview/widget/RecyclerView$d0;Landroidx/recyclerview/widget/RecyclerView$m$b;Landroidx/recyclerview/widget/RecyclerView$m$b;)Z
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$d0;Landroidx/recyclerview/widget/RecyclerView$m$b;Landroidx/recyclerview/widget/RecyclerView$m$b;)Z
.end method

.method public abstract d(Landroidx/recyclerview/widget/RecyclerView$d0;Landroidx/recyclerview/widget/RecyclerView$m$b;Landroidx/recyclerview/widget/RecyclerView$m$b;)Z
.end method

.method public abstract f(Landroidx/recyclerview/widget/RecyclerView$d0;)Z
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$d0;Ljava/util/List;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->f(Landroidx/recyclerview/widget/RecyclerView$d0;)Z

    move-result p0

    return p0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->r(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->a:Landroidx/recyclerview/widget/RecyclerView$m$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m$a;->a(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract j(Landroidx/recyclerview/widget/RecyclerView$d0;)V
.end method

.method public abstract k()V
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->c:J

    return-wide v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->f:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->e:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$m;->d:J

    return-wide v0
.end method

.method public abstract p()Z
.end method

.method public q()Landroidx/recyclerview/widget/RecyclerView$m$b;
    .locals 0

    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$m$b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m$b;-><init>()V

    return-object p0
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    return-void
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$d0;)Landroidx/recyclerview/widget/RecyclerView$m$b;
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->q()Landroidx/recyclerview/widget/RecyclerView$m$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$m$b;->a(Landroidx/recyclerview/widget/RecyclerView$d0;)Landroidx/recyclerview/widget/RecyclerView$m$b;

    move-result-object p0

    return-object p0
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$d0;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$m$b;
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->q()Landroidx/recyclerview/widget/RecyclerView$m$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$m$b;->a(Landroidx/recyclerview/widget/RecyclerView$d0;)Landroidx/recyclerview/widget/RecyclerView$m$b;

    move-result-object p0

    return-object p0
.end method

.method public abstract u()V
.end method

.method public v(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/recyclerview/widget/RecyclerView$m;->f:J

    return-void
.end method

.method w(Landroidx/recyclerview/widget/RecyclerView$m$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$m;->a:Landroidx/recyclerview/widget/RecyclerView$m$a;

    return-void
.end method
