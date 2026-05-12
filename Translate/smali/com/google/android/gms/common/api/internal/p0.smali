.class abstract Lcom/google/android/gms/common/api/internal/p0;
.super Lcom/google/android/gms/common/api/internal/f0;
.source "SourceFile"


# instance fields
.field protected final b:Lw3/j;


# direct methods
.method public constructor <init>(ILw3/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/f0;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/p0;->b:Lw3/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/p0;->b:Lw3/j;

    invoke-virtual {p0, v0}, Lw3/j;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/p0;->b:Lw3/j;

    invoke-virtual {p0, p1}, Lw3/j;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/x;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/p0;->h(Lcom/google/android/gms/common/api/internal/x;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/p0;->b:Lw3/j;

    invoke-virtual {p0, p1}, Lw3/j;->d(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/s0;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/p0;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/s0;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/p0;->a(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method protected abstract h(Lcom/google/android/gms/common/api/internal/x;)V
.end method
