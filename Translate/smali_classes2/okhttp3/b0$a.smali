.class public Lokhttp3/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/z;

.field private b:Lokhttp3/y;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lokhttp3/s;

.field private f:Lokhttp3/t$a;

.field private g:Lokhttp3/c0;

.field private h:Lokhttp3/b0;

.field private i:Lokhttp3/b0;

.field private j:Lokhttp3/b0;

.field private k:J

.field private l:J

.field private m:Lokhttp3/internal/connection/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lokhttp3/b0$a;->c:I

    .line 3
    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    iput-object v0, p0, Lokhttp3/b0$a;->f:Lokhttp3/t$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/b0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lokhttp3/b0$a;->c:I

    .line 6
    invoke-virtual {p1}, Lokhttp3/b0;->D0()Lokhttp3/z;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->a:Lokhttp3/z;

    .line 7
    invoke-virtual {p1}, Lokhttp3/b0;->v0()Lokhttp3/y;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->b:Lokhttp3/y;

    .line 8
    invoke-virtual {p1}, Lokhttp3/b0;->x()I

    move-result v0

    iput v0, p0, Lokhttp3/b0$a;->c:I

    .line 9
    invoke-virtual {p1}, Lokhttp3/b0;->X()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lokhttp3/b0;->D()Lokhttp3/s;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->e:Lokhttp3/s;

    .line 11
    invoke-virtual {p1}, Lokhttp3/b0;->N()Lokhttp3/t;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/t;->d()Lokhttp3/t$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->f:Lokhttp3/t$a;

    .line 12
    invoke-virtual {p1}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->g:Lokhttp3/c0;

    .line 13
    invoke-virtual {p1}, Lokhttp3/b0;->a0()Lokhttp3/b0;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->h:Lokhttp3/b0;

    .line 14
    invoke-virtual {p1}, Lokhttp3/b0;->k()Lokhttp3/b0;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->i:Lokhttp3/b0;

    .line 15
    invoke-virtual {p1}, Lokhttp3/b0;->q0()Lokhttp3/b0;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0$a;->j:Lokhttp3/b0;

    .line 16
    invoke-virtual {p1}, Lokhttp3/b0;->E0()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/b0$a;->k:J

    .line 17
    invoke-virtual {p1}, Lokhttp3/b0;->x0()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/b0$a;->l:J

    .line 18
    invoke-virtual {p1}, Lokhttp3/b0;->B()Lokhttp3/internal/connection/c;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/b0$a;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method private final e(Lokhttp3/b0;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "priorResponse.body != null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private final f(Ljava/lang/String;Lokhttp3/b0;)V
    .locals 0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lokhttp3/b0;->a0()Lokhttp3/b0;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lokhttp3/b0;->k()Lokhttp3/b0;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lokhttp3/b0;->q0()Lokhttp3/b0;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/b0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/b0$a;->f:Lokhttp3/t$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    return-object p0
.end method

.method public b(Lokhttp3/c0;)Lokhttp3/b0$a;
    .locals 0

    iput-object p1, p0, Lokhttp3/b0$a;->g:Lokhttp3/c0;

    return-object p0
.end method

.method public c()Lokhttp3/b0;
    .locals 17

    move-object/from16 v0, p0

    iget v4, v0, Lokhttp3/b0$a;->c:I

    if-ltz v4, :cond_3

    iget-object v1, v0, Lokhttp3/b0$a;->a:Lokhttp3/z;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lokhttp3/b0$a;->b:Lokhttp3/y;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lokhttp3/b0$a;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v5, v0, Lokhttp3/b0$a;->e:Lokhttp3/s;

    iget-object v6, v0, Lokhttp3/b0$a;->f:Lokhttp3/t$a;

    invoke-virtual {v6}, Lokhttp3/t$a;->d()Lokhttp3/t;

    move-result-object v6

    iget-object v7, v0, Lokhttp3/b0$a;->g:Lokhttp3/c0;

    iget-object v8, v0, Lokhttp3/b0$a;->h:Lokhttp3/b0;

    iget-object v9, v0, Lokhttp3/b0$a;->i:Lokhttp3/b0;

    iget-object v10, v0, Lokhttp3/b0$a;->j:Lokhttp3/b0;

    iget-wide v11, v0, Lokhttp3/b0$a;->k:J

    iget-wide v13, v0, Lokhttp3/b0$a;->l:J

    iget-object v15, v0, Lokhttp3/b0$a;->m:Lokhttp3/internal/connection/c;

    new-instance v16, Lokhttp3/b0;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lokhttp3/b0;-><init>(Lokhttp3/z;Lokhttp3/y;Ljava/lang/String;ILokhttp3/s;Lokhttp3/t;Lokhttp3/c0;Lokhttp3/b0;Lokhttp3/b0;Lokhttp3/b0;JJLokhttp3/internal/connection/c;)V

    return-object v16

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lokhttp3/b0$a;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(Lokhttp3/b0;)Lokhttp3/b0$a;
    .locals 1

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/b0$a;->f(Ljava/lang/String;Lokhttp3/b0;)V

    iput-object p1, p0, Lokhttp3/b0$a;->i:Lokhttp3/b0;

    return-object p0
.end method

.method public g(I)Lokhttp3/b0$a;
    .locals 0

    iput p1, p0, Lokhttp3/b0$a;->c:I

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lokhttp3/b0$a;->c:I

    return p0
.end method

.method public i(Lokhttp3/s;)Lokhttp3/b0$a;
    .locals 0

    iput-object p1, p0, Lokhttp3/b0$a;->e:Lokhttp3/s;

    return-object p0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/b0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/b0$a;->f:Lokhttp3/t$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/t$a;->g(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    return-object p0
.end method

.method public k(Lokhttp3/t;)Lokhttp3/b0$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/t;->d()Lokhttp3/t$a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/b0$a;->f:Lokhttp3/t$a;

    return-object p0
.end method

.method public final l(Lokhttp3/internal/connection/c;)V
    .locals 1

    const-string v0, "deferredTrailers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/b0$a;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method public m(Ljava/lang/String;)Lokhttp3/b0$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/b0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public n(Lokhttp3/b0;)Lokhttp3/b0$a;
    .locals 1

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/b0$a;->f(Ljava/lang/String;Lokhttp3/b0;)V

    iput-object p1, p0, Lokhttp3/b0$a;->h:Lokhttp3/b0;

    return-object p0
.end method

.method public o(Lokhttp3/b0;)Lokhttp3/b0$a;
    .locals 0

    invoke-direct {p0, p1}, Lokhttp3/b0$a;->e(Lokhttp3/b0;)V

    iput-object p1, p0, Lokhttp3/b0$a;->j:Lokhttp3/b0;

    return-object p0
.end method

.method public p(Lokhttp3/y;)Lokhttp3/b0$a;
    .locals 1

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/b0$a;->b:Lokhttp3/y;

    return-object p0
.end method

.method public q(J)Lokhttp3/b0$a;
    .locals 0

    iput-wide p1, p0, Lokhttp3/b0$a;->l:J

    return-object p0
.end method

.method public r(Lokhttp3/z;)Lokhttp3/b0$a;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/b0$a;->a:Lokhttp3/z;

    return-object p0
.end method

.method public s(J)Lokhttp3/b0$a;
    .locals 0

    iput-wide p1, p0, Lokhttp3/b0$a;->k:J

    return-object p0
.end method
