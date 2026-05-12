.class public final Lokhttp3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/b0$a;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/z;

.field private final b:Lokhttp3/y;

.field private final c:Ljava/lang/String;

.field private final f:I

.field private final h:Lokhttp3/s;

.field private final i:Lokhttp3/t;

.field private final j:Lokhttp3/c0;

.field private final k:Lokhttp3/b0;

.field private final l:Lokhttp3/b0;

.field private final m:Lokhttp3/b0;

.field private final n:J

.field private final o:J

.field private final p:Lokhttp3/internal/connection/c;

.field private q:Lokhttp3/d;


# direct methods
.method public constructor <init>(Lokhttp3/z;Lokhttp3/y;Ljava/lang/String;ILokhttp3/s;Lokhttp3/t;Lokhttp3/c0;Lokhttp3/b0;Lokhttp3/b0;Lokhttp3/b0;JJLokhttp3/internal/connection/c;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lokhttp3/b0;->a:Lokhttp3/z;

    iput-object v2, v0, Lokhttp3/b0;->b:Lokhttp3/y;

    iput-object v3, v0, Lokhttp3/b0;->c:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lokhttp3/b0;->f:I

    move-object v1, p5

    iput-object v1, v0, Lokhttp3/b0;->h:Lokhttp3/s;

    iput-object v4, v0, Lokhttp3/b0;->i:Lokhttp3/t;

    move-object v1, p7

    iput-object v1, v0, Lokhttp3/b0;->j:Lokhttp3/c0;

    move-object v1, p8

    iput-object v1, v0, Lokhttp3/b0;->k:Lokhttp3/b0;

    move-object v1, p9

    iput-object v1, v0, Lokhttp3/b0;->l:Lokhttp3/b0;

    move-object/from16 v1, p10

    iput-object v1, v0, Lokhttp3/b0;->m:Lokhttp3/b0;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lokhttp3/b0;->n:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lokhttp3/b0;->o:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lokhttp3/b0;->p:Lokhttp3/internal/connection/c;

    return-void
.end method

.method public static synthetic I(Lokhttp3/b0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/b0;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final B()Lokhttp3/internal/connection/c;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->p:Lokhttp3/internal/connection/c;

    return-object p0
.end method

.method public final D()Lokhttp3/s;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->h:Lokhttp3/s;

    return-object p0
.end method

.method public final D0()Lokhttp3/z;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->a:Lokhttp3/z;

    return-object p0
.end method

.method public final E0()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/b0;->n:J

    return-wide v0
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/b0;->i:Lokhttp3/t;

    invoke-virtual {p0, p1}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public final N()Lokhttp3/t;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->i:Lokhttp3/t;

    return-object p0
.end method

.method public final X()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final a0()Lokhttp3/b0;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->k:Lokhttp3/b0;

    return-object p0
.end method

.method public final b0()Lokhttp3/b0$a;
    .locals 1

    new-instance v0, Lokhttp3/b0$a;

    invoke-direct {v0, p0}, Lokhttp3/b0$a;-><init>(Lokhttp3/b0;)V

    return-object v0
.end method

.method public final c()Lokhttp3/c0;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->j:Lokhttp3/c0;

    return-object p0
.end method

.method public close()V
    .locals 1

    iget-object p0, p0, Lokhttp3/b0;->j:Lokhttp3/c0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/c0;->close()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "response is not eligible for a body and must not be closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i()Lokhttp3/d;
    .locals 2

    iget-object v0, p0, Lokhttp3/b0;->q:Lokhttp3/d;

    if-nez v0, :cond_0

    sget-object v0, Lokhttp3/d;->n:Lokhttp3/d$b;

    iget-object v1, p0, Lokhttp3/b0;->i:Lokhttp3/t;

    invoke-virtual {v0, v1}, Lokhttp3/d$b;->b(Lokhttp3/t;)Lokhttp3/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/b0;->q:Lokhttp3/d;

    :cond_0
    return-object v0
.end method

.method public final k()Lokhttp3/b0;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->l:Lokhttp3/b0;

    return-object p0
.end method

.method public final q0()Lokhttp3/b0;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->m:Lokhttp3/b0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/b0;->b:Lokhttp3/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/b0;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/b0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/b0;->a:Lokhttp3/z;

    invoke-virtual {p0}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lokhttp3/b0;->i:Lokhttp3/t;

    iget p0, p0, Lokhttp3/b0;->f:I

    const/16 v1, 0x191

    if-eq p0, v1, :cond_1

    const/16 v1, 0x197

    if-eq p0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string p0, "WWW-Authenticate"

    :goto_0
    invoke-static {v0, p0}, Lm9/e;->a(Lokhttp3/t;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Lokhttp3/y;
    .locals 0

    iget-object p0, p0, Lokhttp3/b0;->b:Lokhttp3/y;

    return-object p0
.end method

.method public final x()I
    .locals 0

    iget p0, p0, Lokhttp3/b0;->f:I

    return p0
.end method

.method public final x0()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/b0;->o:J

    return-wide v0
.end method
