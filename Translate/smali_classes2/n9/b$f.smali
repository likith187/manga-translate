.class final Ln9/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:Lt9/j;

.field private b:Z

.field final synthetic c:Ln9/b;


# direct methods
.method public constructor <init>(Ln9/b;)V
    .locals 1

    iput-object p1, p0, Ln9/b$f;->c:Ln9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt9/j;

    invoke-static {p1}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object p1

    invoke-interface {p1}, Lt9/y;->f()Lt9/b0;

    move-result-object p1

    invoke-direct {v0, p1}, Lt9/j;-><init>(Lt9/b0;)V

    iput-object v0, p0, Ln9/b$f;->a:Lt9/j;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Ln9/b$f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ln9/b$f;->b:Z

    iget-object v0, p0, Ln9/b$f;->c:Ln9/b;

    iget-object v1, p0, Ln9/b$f;->a:Lt9/j;

    invoke-static {v0, v1}, Ln9/b;->i(Ln9/b;Lt9/j;)V

    iget-object p0, p0, Ln9/b$f;->c:Ln9/b;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ln9/b;->p(Ln9/b;I)V

    return-void
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Ln9/b$f;->a:Lt9/j;

    return-object p0
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Ln9/b$f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ln9/b$f;->c:Ln9/b;

    invoke-static {p0}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object p0

    invoke-interface {p0}, Lt9/e;->flush()V

    return-void
.end method

.method public p(Lt9/d;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ln9/b$f;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Li9/d;->k(JJJ)V

    iget-object p0, p0, Ln9/b$f;->c:Ln9/b;

    invoke-static {p0}, Ln9/b;->l(Ln9/b;)Lt9/e;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lt9/y;->p(Lt9/d;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
