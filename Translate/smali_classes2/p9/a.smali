.class public final Lp9/a;
.super Lp9/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/a$a;
    }
.end annotation


# static fields
.field public static final e:Lp9/a$a;

.field private static final f:Z


# instance fields
.field private final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp9/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp9/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lp9/a;->e:Lp9/a$a;

    sget-object v0, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {v0}, Lp9/h$a;->h()Z

    move-result v0

    sput-boolean v0, Lp9/a;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lp9/h;-><init>()V

    sget-object v0, Lq9/a;->a:Lq9/a$a;

    invoke-virtual {v0}, Lq9/a$a;->a()Lq9/k;

    move-result-object v0

    new-instance v1, Lq9/j;

    sget-object v2, Lq9/f;->f:Lq9/f$a;

    invoke-virtual {v2}, Lq9/f$a;->d()Lq9/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lq9/j;-><init>(Lq9/j$a;)V

    new-instance v2, Lq9/j;

    sget-object v3, Lq9/i;->a:Lq9/i$b;

    invoke-virtual {v3}, Lq9/i$b;->a()Lq9/j$a;

    move-result-object v3

    invoke-direct {v2, v3}, Lq9/j;-><init>(Lq9/j$a;)V

    new-instance v3, Lq9/j;

    sget-object v4, Lq9/g;->a:Lq9/g$b;

    invoke-virtual {v4}, Lq9/g$b;->a()Lq9/j$a;

    move-result-object v4

    invoke-direct {v3, v4}, Lq9/j;-><init>(Lq9/j$a;)V

    const/4 v4, 0x4

    new-array v4, v4, [Lq9/k;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/o;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lq9/k;

    invoke-interface {v3}, Lq9/k;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lp9/a;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic p()Z
    .locals 1

    sget-boolean v0, Lp9/a;->f:Z

    return v0
.end method


# virtual methods
.method public c(Ljavax/net/ssl/X509TrustManager;)Ls9/c;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq9/b;->d:Lq9/b$a;

    invoke-virtual {v0, p1}, Lq9/b$a;->a(Ljavax/net/ssl/X509TrustManager;)Lq9/b;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lp9/h;->c(Ljavax/net/ssl/X509TrustManager;)Ls9/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lp9/a;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lq9/k;

    invoke-interface {v1, p1}, Lq9/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lq9/k;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lq9/k;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lp9/a;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lq9/k;

    invoke-interface {v2, p1}, Lq9/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lq9/k;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lq9/k;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "hostname"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
