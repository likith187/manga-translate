.class public Lokhttp3/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/u;

.field private b:Ljava/lang/String;

.field private c:Lokhttp3/t$a;

.field private d:Lokhttp3/a0;

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/z$a;->e:Ljava/util/Map;

    .line 3
    const-string v0, "GET"

    iput-object v0, p0, Lokhttp3/z$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lokhttp3/t$a;

    invoke-direct {v0}, Lokhttp3/t$a;-><init>()V

    iput-object v0, p0, Lokhttp3/z$a;->c:Lokhttp3/t$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/z;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/z$a;->e:Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Lokhttp3/z;->i()Lokhttp3/u;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->a:Lokhttp3/u;

    .line 8
    invoke-virtual {p1}, Lokhttp3/z;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lokhttp3/z;->a()Lokhttp3/a0;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/z$a;->d:Lokhttp3/a0;

    .line 10
    invoke-virtual {p1}, Lokhttp3/z;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lokhttp3/z;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/j0;->s(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 13
    :goto_0
    iput-object v0, p0, Lokhttp3/z$a;->e:Ljava/util/Map;

    .line 14
    invoke-virtual {p1}, Lokhttp3/z;->e()Lokhttp3/t;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/t;->d()Lokhttp3/t$a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z$a;->c:Lokhttp3/t$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/z$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/z$a;->c:Lokhttp3/t$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    return-object p0
.end method

.method public b()Lokhttp3/z;
    .locals 6

    iget-object v1, p0, Lokhttp3/z$a;->a:Lokhttp3/u;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lokhttp3/z$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/z$a;->c:Lokhttp3/t$a;

    invoke-virtual {v0}, Lokhttp3/t$a;->d()Lokhttp3/t;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/z$a;->d:Lokhttp3/a0;

    iget-object p0, p0, Lokhttp3/z$a;->e:Ljava/util/Map;

    invoke-static {p0}, Li9/d;->R(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    new-instance p0, Lokhttp3/z;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lokhttp3/z;-><init>(Lokhttp3/u;Ljava/lang/String;Lokhttp3/t;Lokhttp3/a0;Ljava/util/Map;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/z$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/z$a;->c:Lokhttp3/t$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/t$a;->g(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    return-object p0
.end method

.method public d(Lokhttp3/t;)Lokhttp3/z$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/t;->d()Lokhttp3/t$a;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/z$a;->c:Lokhttp3/t$a;

    return-object p0
.end method

.method public e(Ljava/lang/String;Lokhttp3/a0;)Lokhttp3/z$a;
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "method "

    if-nez p2, :cond_1

    invoke-static {p1}, Lm9/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lm9/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-object p1, p0, Lokhttp3/z$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/z$a;->d:Lokhttp3/a0;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method.isEmpty() == true"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Ljava/lang/String;)Lokhttp3/z$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/z$a;->c:Lokhttp3/t$a;

    invoke-virtual {v0, p1}, Lokhttp3/t$a;->f(Ljava/lang/String;)Lokhttp3/t$a;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lokhttp3/z$a;
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/r;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "this as java.lang.String).substring(startIndex)"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    invoke-static {p1, v0, v1}, Lkotlin/text/r;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    sget-object v0, Lokhttp3/u;->k:Lokhttp3/u$b;

    invoke-virtual {v0, p1}, Lokhttp3/u$b;->d(Ljava/lang/String;)Lokhttp3/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/z$a;->h(Lokhttp3/u;)Lokhttp3/z$a;

    move-result-object p0

    return-object p0
.end method

.method public h(Lokhttp3/u;)Lokhttp3/z$a;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/z$a;->a:Lokhttp3/u;

    return-object p0
.end method
