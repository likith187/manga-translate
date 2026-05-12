.class public final Lo9/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm9/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/g$a;
    }
.end annotation


# static fields
.field public static final g:Lo9/g$a;

.field private static final h:Ljava/util/List;

.field private static final i:Ljava/util/List;


# instance fields
.field private final a:Lokhttp3/internal/connection/f;

.field private final b:Lm9/g;

.field private final c:Lo9/f;

.field private volatile d:Lo9/i;

.field private final e:Lokhttp3/y;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lo9/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo9/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo9/g;->g:Lo9/g$a;

    const-string v12, ":scheme"

    const-string v13, ":authority"

    const-string v2, "connection"

    const-string v3, "host"

    const-string v4, "keep-alive"

    const-string v5, "proxy-connection"

    const-string v6, "te"

    const-string v7, "transfer-encoding"

    const-string v8, "encoding"

    const-string v9, "upgrade"

    const-string v10, ":method"

    const-string v11, ":path"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li9/d;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo9/g;->h:Ljava/util/List;

    const-string v7, "encoding"

    const-string v8, "upgrade"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li9/d;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo9/g;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/x;Lokhttp3/internal/connection/f;Lm9/g;Lo9/f;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo9/g;->a:Lokhttp3/internal/connection/f;

    iput-object p3, p0, Lo9/g;->b:Lm9/g;

    iput-object p4, p0, Lo9/g;->c:Lo9/f;

    invoke-virtual {p1}, Lokhttp3/x;->w()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lokhttp3/y;->H2_PRIOR_KNOWLEDGE:Lokhttp3/y;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lokhttp3/y;->HTTP_2:Lokhttp3/y;

    :goto_0
    iput-object p2, p0, Lo9/g;->e:Lokhttp3/y;

    return-void
.end method

.method public static final synthetic i()Ljava/util/List;
    .locals 1

    sget-object v0, Lo9/g;->h:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic j()Ljava/util/List;
    .locals 1

    sget-object v0, Lo9/g;->i:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lo9/g;->d:Lo9/i;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lo9/i;->n()Lt9/y;

    move-result-object p0

    invoke-interface {p0}, Lt9/y;->close()V

    return-void
.end method

.method public b(Lokhttp3/z;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/g;->d:Lo9/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lo9/g;->g:Lo9/g$a;

    invoke-virtual {v1, p1}, Lo9/g$a;->a(Lokhttp3/z;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lo9/g;->c:Lo9/f;

    invoke-virtual {v1, p1, v0}, Lo9/f;->U0(Ljava/util/List;Z)Lo9/i;

    move-result-object p1

    iput-object p1, p0, Lo9/g;->d:Lo9/i;

    iget-boolean p1, p0, Lo9/g;->f:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lo9/g;->d:Lo9/i;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lo9/i;->v()Lt9/b0;

    move-result-object p1

    iget-object v0, p0, Lo9/g;->b:Lm9/g;

    invoke-virtual {v0}, Lm9/g;->h()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lt9/b0;->g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;

    iget-object p1, p0, Lo9/g;->d:Lo9/i;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lo9/i;->E()Lt9/b0;

    move-result-object p1

    iget-object p0, p0, Lo9/g;->b:Lm9/g;

    invoke-virtual {p0}, Lm9/g;->j()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1, v2}, Lt9/b0;->g(JLjava/util/concurrent/TimeUnit;)Lt9/b0;

    return-void

    :cond_2
    iget-object p0, p0, Lo9/g;->d:Lo9/i;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget-object p1, Lo9/b;->CANCEL:Lo9/b;

    invoke-virtual {p0, p1}, Lo9/i;->f(Lo9/b;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lo9/g;->c:Lo9/f;

    invoke-virtual {p0}, Lo9/f;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo9/g;->f:Z

    iget-object p0, p0, Lo9/g;->d:Lo9/i;

    if-eqz p0, :cond_0

    sget-object v0, Lo9/b;->CANCEL:Lo9/b;

    invoke-virtual {p0, v0}, Lo9/i;->f(Lo9/b;)V

    :cond_0
    return-void
.end method

.method public d(Lokhttp3/b0;)J
    .locals 0

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm9/e;->b(Lokhttp3/b0;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Li9/d;->u(Lokhttp3/b0;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public e(Lokhttp3/b0;)Lt9/a0;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo9/g;->d:Lo9/i;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lo9/i;->p()Lo9/i$c;

    move-result-object p0

    return-object p0
.end method

.method public f(Lokhttp3/z;J)Lt9/y;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo9/g;->d:Lo9/i;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lo9/i;->n()Lt9/y;

    move-result-object p0

    return-object p0
.end method

.method public g(Z)Lokhttp3/b0$a;
    .locals 2

    iget-object v0, p0, Lo9/g;->d:Lo9/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo9/i;->C()Lokhttp3/t;

    move-result-object v0

    sget-object v1, Lo9/g;->g:Lo9/g$a;

    iget-object p0, p0, Lo9/g;->e:Lokhttp3/y;

    invoke-virtual {v1, v0, p0}, Lo9/g$a;->b(Lokhttp3/t;Lokhttp3/y;)Lokhttp3/b0$a;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lokhttp3/b0$a;->h()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "stream wasn\'t created"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()Lokhttp3/internal/connection/f;
    .locals 0

    iget-object p0, p0, Lo9/g;->a:Lokhttp3/internal/connection/f;

    return-object p0
.end method
