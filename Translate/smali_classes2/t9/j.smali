.class public Lt9/j;
.super Lt9/b0;
.source "SourceFile"


# instance fields
.field private f:Lt9/b0;


# direct methods
.method public constructor <init>(Lt9/b0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lt9/b0;-><init>()V

    iput-object p1, p0, Lt9/j;->f:Lt9/b0;

    return-void
.end method


# virtual methods
.method public a()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/j;->f:Lt9/b0;

    invoke-virtual {p0}, Lt9/b0;->a()Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public b()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/j;->f:Lt9/b0;

    invoke-virtual {p0}, Lt9/b0;->b()Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public c()J
    .locals 2

    iget-object p0, p0, Lt9/j;->f:Lt9/b0;

    invoke-virtual {p0}, Lt9/b0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/j;->f:Lt9/b0;

    invoke-virtual {p0, p1, p2}, Lt9/b0;->d(J)Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lt9/j;->f:Lt9/b0;

    invoke-virtual {p0}, Lt9/b0;->e()Z

    move-result p0

    return p0
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lt9/j;->f:Lt9/b0;

    invoke-virtual {p0}, Lt9/b0;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt9/j;->f:Lt9/b0;

    invoke-virtual {p0, p1, p2, p3}, Lt9/b0;->g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/j;->f:Lt9/b0;

    return-object p0
.end method

.method public final j(Lt9/b0;)Lt9/j;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt9/j;->f:Lt9/b0;

    return-object p0
.end method
