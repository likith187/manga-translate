.class final Lcom/google/android/gms/common/api/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/b0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/b0;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/a0;->b:Lcom/google/android/gms/common/api/internal/b0;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/a0;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/a0;->b:Lcom/google/android/gms/common/api/internal/b0;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/b0;->f:Lcom/google/android/gms/common/api/internal/e;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/e;->w(Lcom/google/android/gms/common/api/internal/e;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b0;->f(Lcom/google/android/gms/common/api/internal/b0;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/x;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/a0;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->H0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/a0;->b:Lcom/google/android/gms/common/api/internal/b0;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/google/android/gms/common/api/internal/b0;->g(Lcom/google/android/gms/common/api/internal/b0;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/a0;->b:Lcom/google/android/gms/common/api/internal/b0;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b0;->e(Lcom/google/android/gms/common/api/internal/b0;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/a0;->b:Lcom/google/android/gms/common/api/internal/b0;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/b0;->h(Lcom/google/android/gms/common/api/internal/b0;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/a0;->b:Lcom/google/android/gms/common/api/internal/b0;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b0;->e(Lcom/google/android/gms/common/api/internal/b0;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b0;->e(Lcom/google/android/gms/common/api/internal/b0;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/common/api/a$f;->c(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/a0;->b:Lcom/google/android/gms/common/api/internal/b0;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/b0;->e(Lcom/google/android/gms/common/api/internal/b0;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p0

    const-string v1, "Failed to get service from broker."

    invoke-interface {p0, v1}, Lcom/google/android/gms/common/api/a$f;->d(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/common/api/internal/x;->H(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/a0;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/common/api/internal/x;->H(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method
