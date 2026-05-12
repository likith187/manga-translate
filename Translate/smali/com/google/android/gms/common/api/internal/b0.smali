.class final Lcom/google/android/gms/common/api/internal/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$c;
.implements Lcom/google/android/gms/common/api/internal/l0;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/a$f;

.field private final b:Lcom/google/android/gms/common/api/internal/b;

.field private c:Lcom/google/android/gms/common/internal/IAccountAccessor;

.field private d:Ljava/util/Set;

.field private e:Z

.field final synthetic f:Lcom/google/android/gms/common/api/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b0;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b0;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b0;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/b0;->e:Z

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b0;->a:Lcom/google/android/gms/common/api/a$f;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/b0;->b:Lcom/google/android/gms/common/api/internal/b;

    return-void
.end method

.method static bridge synthetic e(Lcom/google/android/gms/common/api/internal/b0;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b0;->a:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/common/api/internal/b0;)Lcom/google/android/gms/common/api/internal/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b0;->b:Lcom/google/android/gms/common/api/internal/b;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/common/api/internal/b0;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/b0;->e:Z

    return-void
.end method

.method static bridge synthetic h(Lcom/google/android/gms/common/api/internal/b0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b0;->i()V

    return-void
.end method

.method private final i()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b0;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b0;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b0;->a:Lcom/google/android/gms/common/api/a$f;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b0;->d:Ljava/util/Set;

    invoke-interface {v1, v0, p0}, Lcom/google/android/gms/common/api/a$f;->c(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b0;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e;->n(Lcom/google/android/gms/common/api/internal/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/a0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/a0;-><init>(Lcom/google/android/gms/common/api/internal/b0;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b0;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b0;->d:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b0;->i()V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/b0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b0;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e;->w(Lcom/google/android/gms/common/api/internal/e;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b0;->b:Lcom/google/android/gms/common/api/internal/b;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/x;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/x;->I(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b0;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e;->w(Lcom/google/android/gms/common/api/internal/e;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b0;->b:Lcom/google/android/gms/common/api/internal/b;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/x;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/x;->M(Lcom/google/android/gms/common/api/internal/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/x;->I(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/x;->a(I)V

    :cond_1
    return-void
.end method
