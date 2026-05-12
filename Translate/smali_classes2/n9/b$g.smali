.class final Ln9/b$g;
.super Ln9/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field private f:Z

.field final synthetic h:Ln9/b;


# direct methods
.method public constructor <init>(Ln9/b;)V
    .locals 0

    iput-object p1, p0, Ln9/b$g;->h:Ln9/b;

    invoke-direct {p0, p1}, Ln9/b$a;-><init>(Ln9/b;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Ln9/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ln9/b$g;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ln9/b$a;->i()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ln9/b$a;->k(Z)V

    return-void
.end method

.method public i0(Lt9/d;J)J
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Ln9/b$a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ln9/b$g;->f:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ln9/b$a;->i0(Lt9/d;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln9/b$g;->f:Z

    invoke-virtual {p0}, Ln9/b$a;->i()V

    return-wide v1

    :cond_1
    return-wide p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
