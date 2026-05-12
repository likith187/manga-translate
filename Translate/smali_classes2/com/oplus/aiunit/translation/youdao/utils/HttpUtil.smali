.class public Lcom/oplus/aiunit/translation/youdao/utils/HttpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "HttpUtil"

.field private static final httpClient:Lokhttp3/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/x$a;

    invoke-direct {v0}, Lokhttp3/x$a;-><init>()V

    invoke-virtual {v0}, Lokhttp3/x$a;->a()Lokhttp3/x;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/translation/youdao/utils/HttpUtil;->httpClient:Lokhttp3/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBodyParam(Lokhttp3/z$a;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/z$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lokhttp3/r$a;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lokhttp3/r$a;-><init>(Ljava/nio/charset/Charset;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v0, v2, v6}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lokhttp3/r$a;->b()Lokhttp3/r;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lokhttp3/z$a;->e(Ljava/lang/String;Lokhttp3/a0;)Lokhttp3/z$a;

    return-void
.end method

.method private static addHeader(Lokhttp3/z$a;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/z$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {p0, v1, v5}, Lokhttp3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/z$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static addUrlParam(Lokhttp3/z$a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/z$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lokhttp3/u;->l(Ljava/lang/String;)Lokhttp3/u;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/u;->j()Lokhttp3/u$a;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {p1, v1, v5}, Lokhttp3/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/u$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lokhttp3/u$a;->b()Lokhttp3/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/z$a;->h(Lokhttp3/u;)Lokhttp3/z$a;

    return-void
.end method

.method public static doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/b0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0}, Lokhttp3/z$a;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/z$a;->g(Ljava/lang/String;)Lokhttp3/z$a;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/translation/youdao/utils/HttpUtil;->addHeader(Lokhttp3/z$a;Ljava/util/Map;)V

    const-string p1, "POST"

    invoke-static {p0, p2, p1}, Lcom/oplus/aiunit/translation/youdao/utils/HttpUtil;->addBodyParam(Lokhttp3/z$a;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/z$a;->b()Lokhttp3/z;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/aiunit/translation/youdao/utils/HttpUtil;->requestExec(Lokhttp3/z;)Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method

.method private static requestExec(Lokhttp3/z;)Lokhttp3/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "okHttp request is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/oplus/aiunit/translation/youdao/utils/HttpUtil;->httpClient:Lokhttp3/x;

    invoke-virtual {v0, p0}, Lokhttp3/x;->u(Lokhttp3/z;)Lokhttp3/e;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/e;->c()Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method
