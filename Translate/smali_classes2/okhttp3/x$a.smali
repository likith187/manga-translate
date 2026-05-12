.class public final Lokhttp3/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:Lokhttp3/internal/connection/h;

.field private a:Lokhttp3/o;

.field private b:Lokhttp3/j;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private e:Lokhttp3/q$c;

.field private f:Z

.field private g:Lokhttp3/b;

.field private h:Z

.field private i:Z

.field private j:Lokhttp3/m;

.field private k:Lokhttp3/p;

.field private l:Ljava/net/Proxy;

.field private m:Ljava/net/ProxySelector;

.field private n:Lokhttp3/b;

.field private o:Ljavax/net/SocketFactory;

.field private p:Ljavax/net/ssl/SSLSocketFactory;

.field private q:Ljavax/net/ssl/X509TrustManager;

.field private r:Ljava/util/List;

.field private s:Ljava/util/List;

.field private t:Ljavax/net/ssl/HostnameVerifier;

.field private u:Lokhttp3/f;

.field private v:Ls9/c;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/o;

    invoke-direct {v0}, Lokhttp3/o;-><init>()V

    iput-object v0, p0, Lokhttp3/x$a;->a:Lokhttp3/o;

    new-instance v0, Lokhttp3/j;

    invoke-direct {v0}, Lokhttp3/j;-><init>()V

    iput-object v0, p0, Lokhttp3/x$a;->b:Lokhttp3/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/x$a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/x$a;->d:Ljava/util/List;

    sget-object v0, Lokhttp3/q;->b:Lokhttp3/q;

    invoke-static {v0}, Li9/d;->g(Lokhttp3/q;)Lokhttp3/q$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x$a;->e:Lokhttp3/q$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/x$a;->f:Z

    sget-object v1, Lokhttp3/b;->b:Lokhttp3/b;

    iput-object v1, p0, Lokhttp3/x$a;->g:Lokhttp3/b;

    iput-boolean v0, p0, Lokhttp3/x$a;->h:Z

    iput-boolean v0, p0, Lokhttp3/x$a;->i:Z

    sget-object v0, Lokhttp3/m;->b:Lokhttp3/m;

    iput-object v0, p0, Lokhttp3/x$a;->j:Lokhttp3/m;

    sget-object v0, Lokhttp3/p;->b:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/x$a;->k:Lokhttp3/p;

    iput-object v1, p0, Lokhttp3/x$a;->n:Lokhttp3/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/x$a;->o:Ljavax/net/SocketFactory;

    sget-object v0, Lokhttp3/x;->G:Lokhttp3/x$b;

    invoke-virtual {v0}, Lokhttp3/x$b;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/x$a;->r:Ljava/util/List;

    invoke-virtual {v0}, Lokhttp3/x$b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x$a;->s:Ljava/util/List;

    sget-object v0, Ls9/d;->INSTANCE:Ls9/d;

    iput-object v0, p0, Lokhttp3/x$a;->t:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lokhttp3/f;->d:Lokhttp3/f;

    iput-object v0, p0, Lokhttp3/x$a;->u:Lokhttp3/f;

    const/16 v0, 0x2710

    iput v0, p0, Lokhttp3/x$a;->x:I

    iput v0, p0, Lokhttp3/x$a;->y:I

    iput v0, p0, Lokhttp3/x$a;->z:I

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lokhttp3/x$a;->B:J

    return-void
.end method


# virtual methods
.method public final A()Lokhttp3/internal/connection/h;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->C:Lokhttp3/internal/connection/h;

    return-object p0
.end method

.method public final B()Ljavax/net/SocketFactory;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->o:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public final C()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final D()I
    .locals 0

    iget p0, p0, Lokhttp3/x$a;->z:I

    return p0
.end method

.method public final E()Ljavax/net/ssl/X509TrustManager;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->q:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method

.method public final a()Lokhttp3/x;
    .locals 1

    new-instance v0, Lokhttp3/x;

    invoke-direct {v0, p0}, Lokhttp3/x;-><init>(Lokhttp3/x$a;)V

    return-object v0
.end method

.method public final b()Lokhttp3/b;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->g:Lokhttp3/b;

    return-object p0
.end method

.method public final c()Lokhttp3/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lokhttp3/x$a;->w:I

    return p0
.end method

.method public final e()Ls9/c;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->v:Ls9/c;

    return-object p0
.end method

.method public final f()Lokhttp3/f;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->u:Lokhttp3/f;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lokhttp3/x$a;->x:I

    return p0
.end method

.method public final h()Lokhttp3/j;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->b:Lokhttp3/j;

    return-object p0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->r:Ljava/util/List;

    return-object p0
.end method

.method public final j()Lokhttp3/m;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->j:Lokhttp3/m;

    return-object p0
.end method

.method public final k()Lokhttp3/o;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->a:Lokhttp3/o;

    return-object p0
.end method

.method public final l()Lokhttp3/p;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->k:Lokhttp3/p;

    return-object p0
.end method

.method public final m()Lokhttp3/q$c;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->e:Lokhttp3/q$c;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/x$a;->h:Z

    return p0
.end method

.method public final o()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/x$a;->i:Z

    return p0
.end method

.method public final p()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->t:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public final r()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/x$a;->B:J

    return-wide v0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->d:Ljava/util/List;

    return-object p0
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Lokhttp3/x$a;->A:I

    return p0
.end method

.method public final u()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->s:Ljava/util/List;

    return-object p0
.end method

.method public final v()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->l:Ljava/net/Proxy;

    return-object p0
.end method

.method public final w()Lokhttp3/b;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->n:Lokhttp3/b;

    return-object p0
.end method

.method public final x()Ljava/net/ProxySelector;
    .locals 0

    iget-object p0, p0, Lokhttp3/x$a;->m:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public final y()I
    .locals 0

    iget p0, p0, Lokhttp3/x$a;->y:I

    return p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/x$a;->f:Z

    return p0
.end method
