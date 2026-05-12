.class public final Lk9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk9/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lk9/a$a;Lokhttp3/t;Lokhttp3/t;)Lokhttp3/t;
    .locals 0

    invoke-direct {p0, p1, p2}, Lk9/a$a;->c(Lokhttp3/t;Lokhttp3/t;)Lokhttp3/t;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lk9/a$a;Lokhttp3/b0;)Lokhttp3/b0;
    .locals 0

    invoke-direct {p0, p1}, Lk9/a$a;->f(Lokhttp3/b0;)Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lokhttp3/t;Lokhttp3/t;)Lokhttp3/t;
    .locals 9

    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    invoke-virtual {p1}, Lokhttp3/t;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Lokhttp3/t;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Lokhttp3/t;->e(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    const/4 v7, 0x1

    invoke-static {v6, v4, v7}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-static {v5, v8, v2, v6, v7}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4}, Lk9/a$a;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lk9/a$a;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2, v4}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v0, v4, v5}, Lokhttp3/t$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lokhttp3/t;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Lokhttp3/t;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lk9/a$a;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v1}, Lk9/a$a;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v2}, Lokhttp3/t;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lokhttp3/t$a;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lokhttp3/t$a;->d()Lokhttp3/t;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "Content-Length"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Content-Encoding"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Content-Type"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final e(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "Connection"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Keep-Alive"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Proxy-Authenticate"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Proxy-Authorization"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TE"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Trailers"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Transfer-Encoding"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Upgrade"

    invoke-static {p0, p1, v0}, Lkotlin/text/r;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final f(Lokhttp3/b0;)Lokhttp3/b0;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/b0;->c()Lokhttp3/c0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/b0;->b0()Lokhttp3/b0$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/b0$a;->b(Lokhttp3/c0;)Lokhttp3/b0$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/b0$a;->c()Lokhttp3/b0;

    move-result-object p1

    :cond_1
    return-object p1
.end method
