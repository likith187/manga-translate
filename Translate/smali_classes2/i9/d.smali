.class public abstract Li9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:Lokhttp3/t;

.field public static final c:Lokhttp3/c0;

.field public static final d:Lokhttp3/a0;

.field private static final e:Lt9/q;

.field public static final f:Ljava/util/TimeZone;

.field private static final g:Lkotlin/text/n;

.field public static final h:Z

.field public static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    new-array v2, v0, [B

    sput-object v2, Li9/d;->a:[B

    sget-object v1, Lokhttp3/t;->b:Lokhttp3/t$b;

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lokhttp3/t$b;->g([Ljava/lang/String;)Lokhttp3/t;

    move-result-object v1

    sput-object v1, Li9/d;->b:Lokhttp3/t;

    sget-object v1, Lokhttp3/c0;->a:Lokhttp3/c0$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v3}, Lokhttp3/c0$a;->c(Lokhttp3/c0$a;[BLokhttp3/w;ILjava/lang/Object;)Lokhttp3/c0;

    move-result-object v1

    sput-object v1, Li9/d;->c:Lokhttp3/c0;

    sget-object v1, Lokhttp3/a0;->a:Lokhttp3/a0$a;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lokhttp3/a0$a;->b(Lokhttp3/a0$a;[BLokhttp3/w;IIILjava/lang/Object;)Lokhttp3/a0;

    move-result-object v1

    sput-object v1, Li9/d;->d:Lokhttp3/a0;

    sget-object v1, Lt9/q;->c:Lt9/q$a;

    sget-object v2, Lt9/g;->Companion:Lt9/g$a;

    const-string v3, "efbbbf"

    invoke-virtual {v2, v3}, Lt9/g$a;->b(Ljava/lang/String;)Lt9/g;

    move-result-object v3

    const-string v4, "feff"

    invoke-virtual {v2, v4}, Lt9/g$a;->b(Ljava/lang/String;)Lt9/g;

    move-result-object v4

    const-string v5, "fffe"

    invoke-virtual {v2, v5}, Lt9/g$a;->b(Ljava/lang/String;)Lt9/g;

    move-result-object v5

    const-string v6, "0000ffff"

    invoke-virtual {v2, v6}, Lt9/g$a;->b(Ljava/lang/String;)Lt9/g;

    move-result-object v6

    const-string v7, "ffff0000"

    invoke-virtual {v2, v7}, Lt9/g$a;->b(Ljava/lang/String;)Lt9/g;

    move-result-object v2

    filled-new-array {v3, v4, v5, v6, v2}, [Lt9/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt9/q$a;->d([Lt9/g;)Lt9/q;

    move-result-object v1

    sput-object v1, Li9/d;->e:Lt9/q;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sput-object v1, Li9/d;->f:Ljava/util/TimeZone;

    new-instance v1, Lkotlin/text/n;

    const-string v2, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-direct {v1, v2}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    sput-object v1, Li9/d;->g:Lkotlin/text/n;

    sput-boolean v0, Li9/d;->h:Z

    const-class v0, Lokhttp3/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkHttpClient::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "okhttp3."

    invoke-static {v0, v1}, Lkotlin/text/r;->n0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client"

    invoke-static {v0, v1}, Lkotlin/text/r;->o0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li9/d;->i:Ljava/lang/String;

    return-void
.end method

.method public static final A(Ljava/lang/String;II)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    if-gt p1, p2, :cond_5

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    :goto_1
    if-eq p2, p1, :cond_5

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_5
    return p1
.end method

.method public static synthetic B(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Li9/d;->A(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final C(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static final D([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    invoke-interface {p2, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static final E(Ljava/net/Socket;Lt9/f;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {p1}, Lt9/f;->S()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr p1, v0

    :try_start_2
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    return v0
.end method

.method public static final F(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Authorization"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Cookie"

    invoke-static {p0, v0, v1}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Proxy-Authorization"

    invoke-static {p0, v0, v1}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Set-Cookie"

    invoke-static {p0, v0, v1}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static final G(C)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x67

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x47

    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static final H(Lt9/f;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lt9/f;->C0()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Li9/d;->d(BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lt9/f;->C0()B

    move-result v2

    invoke-static {v2, v1}, Li9/d;->d(BI)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    invoke-interface {p0}, Lt9/f;->C0()B

    move-result p0

    invoke-static {p0, v1}, Li9/d;->d(BI)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static final I(Lt9/d;B)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lt9/d;->S()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lt9/d;->D(J)B

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lt9/d;->C0()B

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final J(Lt9/a0;ILjava/util/concurrent/TimeUnit;)Z
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object v2

    invoke-virtual {v2}, Lt9/b0;->e()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object v2

    invoke-virtual {v2}, Lt9/b0;->c()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lt9/b0;->d(J)Lt9/b0;

    :try_start_0
    new-instance p1, Lt9/d;

    invoke-direct {p1}, Lt9/d;-><init>()V

    :goto_1
    const-wide/16 v7, 0x2000

    invoke-interface {p0, p1, v7, v8}, Lt9/a0;->i0(Lt9/d;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lt9/d;->i()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    cmp-long p1, v5, v3

    if-nez p1, :cond_2

    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object p0

    invoke-virtual {p0}, Lt9/b0;->a()Lt9/b0;

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lt9/b0;->d(J)Lt9/b0;

    :goto_2
    const/4 p0, 0x1

    goto :goto_6

    :goto_3
    cmp-long p2, v5, v3

    if-nez p2, :cond_3

    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object p0

    invoke-virtual {p0}, Lt9/b0;->a()Lt9/b0;

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lt9/b0;->d(J)Lt9/b0;

    :goto_4
    throw p1

    :catch_0
    cmp-long p1, v5, v3

    if-nez p1, :cond_4

    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object p0

    invoke-virtual {p0}, Lt9/b0;->a()Lt9/b0;

    goto :goto_5

    :cond_4
    invoke-interface {p0}, Lt9/a0;->f()Lt9/b0;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lt9/b0;->d(J)Lt9/b0;

    :goto_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static final K(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Li9/c;

    invoke-direct {v0, p0, p1}, Li9/c;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static final L(Ljava/lang/String;ZLjava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    const-string v0, "$name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method public static final M(Lokhttp3/t;)Ljava/util/List;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/t;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lb9/d;->l(II)Lb9/c;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/h0;

    invoke-virtual {v2}, Lkotlin/collections/h0;->a()I

    move-result v2

    new-instance v3, Lo9/c;

    invoke-virtual {p0, v2}, Lokhttp3/t;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lokhttp3/t;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lo9/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final N(Ljava/util/List;)Lokhttp3/t;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo9/c;

    invoke-virtual {v1}, Lo9/c;->a()Lt9/g;

    move-result-object v2

    invoke-virtual {v1}, Lo9/c;->b()Lt9/g;

    move-result-object v1

    invoke-virtual {v2}, Lt9/g;->utf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lt9/g;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/t$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/t$a;->d()Lokhttp3/t;

    move-result-object p0

    return-object p0
.end method

.method public static final O(Lokhttp3/u;Z)Ljava/lang/String;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ":"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/r;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lokhttp3/u;->m()I

    move-result p1

    sget-object v1, Lokhttp3/u;->k:Lokhttp3/u$b;

    invoke-virtual {p0}, Lokhttp3/u;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/u$b;->c(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/u;->m()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static synthetic P(Lokhttp3/u;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Li9/d;->O(Lokhttp3/u;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final Q(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "unmodifiableList(toMutableList())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final R(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/j0;->h()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "{\n    Collections.unmodi\u2026(LinkedHashMap(this))\n  }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static final S(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p1
.end method

.method public static final T(Ljava/lang/String;I)I
    .locals 2

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    :goto_0
    return p0

    :catch_0
    :cond_2
    return p1
.end method

.method public static final U(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Li9/d;->y(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p0, p1, p2}, Li9/d;->A(Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic V(Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Li9/d;->U(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final W(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suppressed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-static {p0, v0}, Ln8/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static final X(Lt9/e;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lt9/e;->T(I)Lt9/e;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lt9/e;->T(I)Lt9/e;

    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Lt9/e;->T(I)Lt9/e;

    return-void
.end method

.method public static synthetic a(Lokhttp3/q;Lokhttp3/e;)Lokhttp3/q;
    .locals 0

    invoke-static {p0, p1}, Li9/d;->h(Lokhttp3/q;Lokhttp3/e;)Lokhttp3/q;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;ZLjava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1, p2}, Li9/d;->L(Ljava/lang/String;ZLjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final d(BI)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method public static final e(SI)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method public static final f(IJ)J
    .locals 2

    int-to-long v0, p0

    and-long p0, v0, p1

    return-wide p0
.end method

.method public static final g(Lokhttp3/q;)Lokhttp3/q$c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Li9/b;

    invoke-direct {v0, p0}, Li9/b;-><init>(Lokhttp3/q;)V

    return-object v0
.end method

.method private static final h(Lokhttp3/q;Lokhttp3/e;)Lokhttp3/q;
    .locals 1

    const-string v0, "$this_asFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final i(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li9/d;->g:Lkotlin/text/n;

    invoke-virtual {v0, p0}, Lkotlin/text/n;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final j(Lokhttp3/u;Lokhttp3/u;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/u;->m()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/u;->m()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lokhttp3/u;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lokhttp3/u;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final k(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long/2addr p0, p2

    cmp-long p0, p0, p4

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final l(Ljava/io/Closeable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final m(Ljava/net/Socket;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bio == null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    throw p0

    :catch_2
    move-exception p0

    throw p0
.end method

.method public static final n([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lkotlin/collections/i;->G([Ljava/lang/Object;)I

    move-result v0

    aput-object p1, p0, v0

    return-object p0
.end method

.method public static final o(Ljava/lang/String;CII)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public static final p(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lkotlin/text/r;->J(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public static synthetic q(Ljava/lang/String;CIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Li9/d;->o(Ljava/lang/String;CII)I

    move-result p0

    return p0
.end method

.method public static final r(Lt9/a0;ILjava/util/concurrent/TimeUnit;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Li9/d;->J(Lt9/a0;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final varargs s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "format"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/jvm/internal/h0;->INSTANCE:Lkotlin/jvm/internal/h0;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(locale, format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final t([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    invoke-static {p1}, Lkotlin/jvm/internal/b;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public static final u(Lokhttp3/b0;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/b0;->N()Lokhttp3/t;

    move-result-object p0

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    invoke-static {p0, v0, v1}, Li9/d;->S(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static final varargs v([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/o;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "unmodifiableList(listOf(*elements.clone()))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final w([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p2, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public static final x(Ljava/lang/String;)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->f(II)I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x7f

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->f(II)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static final y(Ljava/lang/String;II)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p1, p2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return p1

    :cond_5
    return p2
.end method

.method public static synthetic z(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Li9/d;->y(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method
