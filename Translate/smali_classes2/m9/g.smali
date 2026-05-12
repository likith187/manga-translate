.class public final Lm9/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v$a;


# instance fields
.field private final a:Lokhttp3/internal/connection/e;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Lokhttp3/internal/connection/c;

.field private final e:Lokhttp3/z;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/e;Ljava/util/List;ILokhttp3/internal/connection/c;Lokhttp3/z;III)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm9/g;->a:Lokhttp3/internal/connection/e;

    iput-object p2, p0, Lm9/g;->b:Ljava/util/List;

    iput p3, p0, Lm9/g;->c:I

    iput-object p4, p0, Lm9/g;->d:Lokhttp3/internal/connection/c;

    iput-object p5, p0, Lm9/g;->e:Lokhttp3/z;

    iput p6, p0, Lm9/g;->f:I

    iput p7, p0, Lm9/g;->g:I

    iput p8, p0, Lm9/g;->h:I

    return-void
.end method

.method public static synthetic d(Lm9/g;ILokhttp3/internal/connection/c;Lokhttp3/z;IIIILjava/lang/Object;)Lm9/g;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lm9/g;->c:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lm9/g;->d:Lokhttp3/internal/connection/c;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lm9/g;->e:Lokhttp3/z;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lm9/g;->f:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lm9/g;->g:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lm9/g;->h:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lm9/g;->c(ILokhttp3/internal/connection/c;Lokhttp3/z;III)Lm9/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lokhttp3/z;
    .locals 0

    iget-object p0, p0, Lm9/g;->e:Lokhttp3/z;

    return-object p0
.end method

.method public b(Lokhttp3/z;)Lokhttp3/b0;
    .locals 13

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lm9/g;->c:I

    iget-object v1, p0, Lm9/g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget v0, p0, Lm9/g;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lm9/g;->i:I

    iget-object v0, p0, Lm9/g;->d:Lokhttp3/internal/connection/c;

    const-string v2, " must call proceed() exactly once"

    const-string v3, "network interceptor "

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->j()Lokhttp3/internal/connection/d;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokhttp3/internal/connection/d;->g(Lokhttp3/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lm9/g;->i:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lm9/g;->b:Ljava/util/List;

    iget p0, p0, Lm9/g;->c:I

    sub-int/2addr p0, v1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lm9/g;->b:Ljava/util/List;

    iget p0, p0, Lm9/g;->c:I

    sub-int/2addr p0, v1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " must retain the same host and port"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget v0, p0, Lm9/g;->c:I

    add-int/lit8 v5, v0, 0x1

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v7, p1

    invoke-static/range {v4 .. v12}, Lm9/g;->d(Lm9/g;ILokhttp3/internal/connection/c;Lokhttp3/z;IIIILjava/lang/Object;)Lm9/g;

    move-result-object p1

    iget-object v0, p0, Lm9/g;->b:Ljava/util/List;

    iget v4, p0, Lm9/g;->c:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/v;

    invoke-interface {v0, p1}, Lokhttp3/v;->a(Lokhttp3/v$a;)Lokhttp3/b0;

    move-result-object v4

    const-string v5, "interceptor "

    if-eqz v4, :cond_6

    iget-object v6, p0, Lm9/g;->d:Lokhttp3/internal/connection/c;

    if-eqz v6, :cond_4

    iget v6, p0, Lm9/g;->c:I

    add-int/2addr v6, v1

    iget-object p0, p0, Lm9/g;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v6, p0, :cond_4

    iget p0, p1, Lm9/g;->i:I

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {v4}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object v4

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned a response with no body"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(ILokhttp3/internal/connection/c;Lokhttp3/z;III)Lm9/g;
    .locals 11

    move-object v0, p0

    const-string v1, "request"

    move-object v7, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lm9/g;

    iget-object v3, v0, Lm9/g;->a:Lokhttp3/internal/connection/e;

    iget-object v4, v0, Lm9/g;->b:Ljava/util/List;

    move-object v2, v1

    move v5, p1

    move-object v6, p2

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lm9/g;-><init>(Lokhttp3/internal/connection/e;Ljava/util/List;ILokhttp3/internal/connection/c;Lokhttp3/z;III)V

    return-object v1
.end method

.method public call()Lokhttp3/e;
    .locals 0

    iget-object p0, p0, Lm9/g;->a:Lokhttp3/internal/connection/e;

    return-object p0
.end method

.method public final e()Lokhttp3/internal/connection/e;
    .locals 0

    iget-object p0, p0, Lm9/g;->a:Lokhttp3/internal/connection/e;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lm9/g;->f:I

    return p0
.end method

.method public final g()Lokhttp3/internal/connection/c;
    .locals 0

    iget-object p0, p0, Lm9/g;->d:Lokhttp3/internal/connection/c;

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lm9/g;->g:I

    return p0
.end method

.method public final i()Lokhttp3/z;
    .locals 0

    iget-object p0, p0, Lm9/g;->e:Lokhttp3/z;

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lm9/g;->h:I

    return p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lm9/g;->g:I

    return p0
.end method
