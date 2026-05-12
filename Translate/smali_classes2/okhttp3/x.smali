.class public Lokhttp3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/x$a;,
        Lokhttp3/x$b;
    }
.end annotation


# static fields
.field public static final G:Lokhttp3/x$b;

.field private static final H:Ljava/util/List;

.field private static final I:Ljava/util/List;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:J

.field private final F:Lokhttp3/internal/connection/h;

.field private final a:Lokhttp3/o;

.field private final b:Lokhttp3/j;

.field private final c:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final h:Lokhttp3/q$c;

.field private final i:Z

.field private final j:Lokhttp3/b;

.field private final k:Z

.field private final l:Z

.field private final m:Lokhttp3/m;

.field private final n:Lokhttp3/p;

.field private final o:Ljava/net/Proxy;

.field private final p:Ljava/net/ProxySelector;

.field private final q:Lokhttp3/b;

.field private final r:Ljavax/net/SocketFactory;

.field private final s:Ljavax/net/ssl/SSLSocketFactory;

.field private final t:Ljavax/net/ssl/X509TrustManager;

.field private final u:Ljava/util/List;

.field private final v:Ljava/util/List;

.field private final w:Ljavax/net/ssl/HostnameVerifier;

.field private final x:Lokhttp3/f;

.field private final y:Ls9/c;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/x$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/x;->G:Lokhttp3/x$b;

    sget-object v0, Lokhttp3/y;->HTTP_2:Lokhttp3/y;

    sget-object v1, Lokhttp3/y;->HTTP_1_1:Lokhttp3/y;

    filled-new-array {v0, v1}, [Lokhttp3/y;

    move-result-object v0

    invoke-static {v0}, Li9/d;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/x;->H:Ljava/util/List;

    sget-object v0, Lokhttp3/k;->i:Lokhttp3/k;

    sget-object v1, Lokhttp3/k;->k:Lokhttp3/k;

    filled-new-array {v0, v1}, [Lokhttp3/k;

    move-result-object v0

    invoke-static {v0}, Li9/d;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/x;->I:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/x$a;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lokhttp3/x$a;->k()Lokhttp3/o;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->a:Lokhttp3/o;

    invoke-virtual {p1}, Lokhttp3/x$a;->h()Lokhttp3/j;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->b:Lokhttp3/j;

    invoke-virtual {p1}, Lokhttp3/x$a;->q()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li9/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->c:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/x$a;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li9/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->f:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/x$a;->m()Lokhttp3/q$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->h:Lokhttp3/q$c;

    invoke-virtual {p1}, Lokhttp3/x$a;->z()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/x;->i:Z

    invoke-virtual {p1}, Lokhttp3/x$a;->b()Lokhttp3/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->j:Lokhttp3/b;

    invoke-virtual {p1}, Lokhttp3/x$a;->n()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/x;->k:Z

    invoke-virtual {p1}, Lokhttp3/x$a;->o()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/x;->l:Z

    invoke-virtual {p1}, Lokhttp3/x$a;->j()Lokhttp3/m;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->m:Lokhttp3/m;

    invoke-virtual {p1}, Lokhttp3/x$a;->c()Lokhttp3/c;

    invoke-virtual {p1}, Lokhttp3/x$a;->l()Lokhttp3/p;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->n:Lokhttp3/p;

    invoke-virtual {p1}, Lokhttp3/x$a;->v()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->o:Ljava/net/Proxy;

    invoke-virtual {p1}, Lokhttp3/x$a;->v()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lr9/a;->INSTANCE:Lr9/a;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lokhttp3/x$a;->x()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lr9/a;->INSTANCE:Lr9/a;

    :cond_2
    :goto_0
    iput-object v0, p0, Lokhttp3/x;->p:Ljava/net/ProxySelector;

    invoke-virtual {p1}, Lokhttp3/x$a;->w()Lokhttp3/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->q:Lokhttp3/b;

    invoke-virtual {p1}, Lokhttp3/x$a;->B()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->r:Ljavax/net/SocketFactory;

    invoke-virtual {p1}, Lokhttp3/x$a;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->u:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/x$a;->u()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/x;->v:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/x$a;->p()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/x;->w:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1}, Lokhttp3/x$a;->d()I

    move-result v1

    iput v1, p0, Lokhttp3/x;->z:I

    invoke-virtual {p1}, Lokhttp3/x$a;->g()I

    move-result v1

    iput v1, p0, Lokhttp3/x;->A:I

    invoke-virtual {p1}, Lokhttp3/x$a;->y()I

    move-result v1

    iput v1, p0, Lokhttp3/x;->B:I

    invoke-virtual {p1}, Lokhttp3/x$a;->D()I

    move-result v1

    iput v1, p0, Lokhttp3/x;->C:I

    invoke-virtual {p1}, Lokhttp3/x$a;->t()I

    move-result v1

    iput v1, p0, Lokhttp3/x;->D:I

    invoke-virtual {p1}, Lokhttp3/x$a;->r()J

    move-result-wide v1

    iput-wide v1, p0, Lokhttp3/x;->E:J

    invoke-virtual {p1}, Lokhttp3/x$a;->A()Lokhttp3/internal/connection/h;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lokhttp3/internal/connection/h;

    invoke-direct {v1}, Lokhttp3/internal/connection/h;-><init>()V

    :cond_3
    iput-object v1, p0, Lokhttp3/x;->F:Lokhttp3/internal/connection/h;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/k;

    invoke-virtual {v1}, Lokhttp3/k;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lokhttp3/x$a;->C()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lokhttp3/x$a;->C()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->s:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Lokhttp3/x$a;->e()Ls9/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iput-object v0, p0, Lokhttp3/x;->y:Ls9/c;

    invoke-virtual {p1}, Lokhttp3/x$a;->E()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iput-object v1, p0, Lokhttp3/x;->t:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1}, Lokhttp3/x$a;->f()Lokhttp3/f;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokhttp3/f;->e(Ls9/c;)Lokhttp3/f;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/x;->x:Lokhttp3/f;

    goto :goto_2

    :cond_6
    sget-object v0, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {v0}, Lp9/h$a;->g()Lp9/h;

    move-result-object v1

    invoke-virtual {v1}, Lp9/h;->o()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/x;->t:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Lp9/h$a;->g()Lp9/h;

    move-result-object v0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lp9/h;->n(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->s:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v0, Ls9/c;->a:Ls9/c$a;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ls9/c$a;->a(Ljavax/net/ssl/X509TrustManager;)Ls9/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->y:Ls9/c;

    invoke-virtual {p1}, Lokhttp3/x$a;->f()Lokhttp3/f;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokhttp3/f;->e(Ls9/c;)Lokhttp3/f;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/x;->x:Lokhttp3/f;

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp3/x;->s:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p1, p0, Lokhttp3/x;->y:Ls9/c;

    iput-object p1, p0, Lokhttp3/x;->t:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lokhttp3/f;->d:Lokhttp3/f;

    iput-object p1, p0, Lokhttp3/x;->x:Lokhttp3/f;

    :goto_2
    invoke-direct {p0}, Lokhttp3/x;->E()V

    return-void
.end method

.method private final E()V
    .locals 3

    iget-object v0, p0, Lokhttp3/x;->c:Ljava/util/List;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lokhttp3/x;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lokhttp3/x;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/k;

    invoke-virtual {v1}, Lokhttp3/k;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lokhttp3/x;->s:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lokhttp3/x;->y:Ls9/c;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lokhttp3/x;->t:Ljavax/net/ssl/X509TrustManager;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    iget-object v0, p0, Lokhttp3/x;->s:Ljavax/net/ssl/SSLSocketFactory;

    const-string v1, "Check failed."

    if-nez v0, :cond_9

    iget-object v0, p0, Lokhttp3/x;->y:Ls9/c;

    if-nez v0, :cond_8

    iget-object v0, p0, Lokhttp3/x;->t:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_7

    iget-object p0, p0, Lokhttp3/x;->x:Lokhttp3/f;

    sget-object v0, Lokhttp3/f;->d:Lokhttp3/f;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_1
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/x;->f:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/x;->c:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lokhttp3/x;->I:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lokhttp3/x;->H:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 0

    iget p0, p0, Lokhttp3/x;->B:I

    return p0
.end method

.method public final B()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/x;->i:Z

    return p0
.end method

.method public final C()Ljavax/net/SocketFactory;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->r:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public final D()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object p0, p0, Lokhttp3/x;->s:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CLEARTEXT-only client"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final F()I
    .locals 0

    iget p0, p0, Lokhttp3/x;->C:I

    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lokhttp3/b;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->j:Lokhttp3/b;

    return-object p0
.end method

.method public final e()Lokhttp3/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lokhttp3/x;->z:I

    return p0
.end method

.method public final g()Lokhttp3/f;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->x:Lokhttp3/f;

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lokhttp3/x;->A:I

    return p0
.end method

.method public final i()Lokhttp3/j;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->b:Lokhttp3/j;

    return-object p0
.end method

.method public final j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->u:Ljava/util/List;

    return-object p0
.end method

.method public final k()Lokhttp3/m;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->m:Lokhttp3/m;

    return-object p0
.end method

.method public final l()Lokhttp3/o;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->a:Lokhttp3/o;

    return-object p0
.end method

.method public final m()Lokhttp3/p;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->n:Lokhttp3/p;

    return-object p0
.end method

.method public final n()Lokhttp3/q$c;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->h:Lokhttp3/q$c;

    return-object p0
.end method

.method public final o()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/x;->k:Z

    return p0
.end method

.method public final p()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/x;->l:Z

    return p0
.end method

.method public final q()Lokhttp3/internal/connection/h;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->F:Lokhttp3/internal/connection/h;

    return-object p0
.end method

.method public final r()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->w:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->c:Ljava/util/List;

    return-object p0
.end method

.method public final t()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->f:Ljava/util/List;

    return-object p0
.end method

.method public u(Lokhttp3/z;)Lokhttp3/e;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/internal/connection/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/internal/connection/e;-><init>(Lokhttp3/x;Lokhttp3/z;Z)V

    return-object v0
.end method

.method public final v()I
    .locals 0

    iget p0, p0, Lokhttp3/x;->D:I

    return p0
.end method

.method public final w()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->v:Ljava/util/List;

    return-object p0
.end method

.method public final x()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->o:Ljava/net/Proxy;

    return-object p0
.end method

.method public final y()Lokhttp3/b;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->q:Lokhttp3/b;

    return-object p0
.end method

.method public final z()Ljava/net/ProxySelector;
    .locals 0

    iget-object p0, p0, Lokhttp3/x;->p:Ljava/net/ProxySelector;

    return-object p0
.end method
