.class abstract Ln9/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field private final a:Lt9/j;

.field private b:Z

.field final synthetic c:Ln9/b;


# direct methods
.method public constructor <init>(Ln9/b;)V
    .locals 1

    iput-object p1, p0, Ln9/b$a;->c:Ln9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt9/j;

    invoke-static {p1}, Ln9/b;->m(Ln9/b;)Lt9/f;

    move-result-object p1

    invoke-interface {p1}, Lt9/a0;->f()Lt9/b0;

    move-result-object p1

    invoke-direct {v0, p1}, Lt9/j;-><init>(Lt9/b0;)V

    iput-object v0, p0, Ln9/b$a;->a:Lt9/j;

    return-void
.end method


# virtual methods
.method protected final c()Z
    .locals 0

    iget-boolean p0, p0, Ln9/b$a;->b:Z

    return p0
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Ln9/b$a;->a:Lt9/j;

    return-object p0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Ln9/b$a;->c:Ln9/b;

    invoke-static {v0}, Ln9/b;->n(Ln9/b;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln9/b$a;->c:Ln9/b;

    invoke-static {v0}, Ln9/b;->n(Ln9/b;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ln9/b$a;->c:Ln9/b;

    iget-object v2, p0, Ln9/b$a;->a:Lt9/j;

    invoke-static {v0, v2}, Ln9/b;->i(Ln9/b;Lt9/j;)V

    iget-object p0, p0, Ln9/b$a;->c:Ln9/b;

    invoke-static {p0, v1}, Ln9/b;->p(Ln9/b;I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln9/b$a;->c:Ln9/b;

    invoke-static {p0}, Ln9/b;->n(Ln9/b;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i0(Lt9/d;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ln9/b$a;->c:Ln9/b;

    invoke-static {v0}, Ln9/b;->m(Ln9/b;)Lt9/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Ln9/b$a;->c:Ln9/b;

    invoke-virtual {p2}, Ln9/b;->h()Lokhttp3/internal/connection/f;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/internal/connection/f;->y()V

    invoke-virtual {p0}, Ln9/b$a;->i()V

    throw p1
.end method

.method protected final k(Z)V
    .locals 0

    iput-boolean p1, p0, Ln9/b$a;->b:Z

    return-void
.end method
