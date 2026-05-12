.class public final Lcom/google/android/gms/common/internal/s0;
.super Lcom/google/android/gms/common/internal/g0;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;

.field final synthetic h:Lcom/google/android/gms/common/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/g0;-><init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/s0;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final f(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->S(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->S(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/d$b;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/d;->J(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final g()Z
    .locals 5

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/s0;->g:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/d;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->C()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service descriptor mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/s0;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/d;->q(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/gms/common/internal/d;->d0(Lcom/google/android/gms/common/internal/d;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    const/4 v3, 0x3

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/gms/common/internal/d;->d0(Lcom/google/android/gms/common/internal/d;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->W(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->v()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->R(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/common/internal/s0;->h:Lcom/google/android/gms/common/internal/d;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/d;->R(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$a;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/google/android/gms/common/internal/d$a;->c(Landroid/os/Bundle;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1

    :catch_0
    const-string p0, "service probably died"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
