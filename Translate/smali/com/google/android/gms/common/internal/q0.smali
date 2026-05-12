.class public final Lcom/google/android/gms/common/internal/q0;
.super Lcom/google/android/gms/common/internal/zzac;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/common/internal/d;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/q0;->a:Lcom/google/android/gms/common/internal/d;

    iput p2, p0, Lcom/google/android/gms/common/internal/q0;->b:I

    return-void
.end method


# virtual methods
.method public final onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/q0;->a:Lcom/google/android/gms/common/internal/d;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/q0;->a:Lcom/google/android/gms/common/internal/d;

    iget v1, p0, Lcom/google/android/gms/common/internal/q0;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/d;->L(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/q0;->a:Lcom/google/android/gms/common/internal/d;

    return-void
.end method

.method public final zzb(ILandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "GmsClient"

    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzc(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/q0;->a:Lcom/google/android/gms/common/internal/d;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/d;->Z(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/zzk;)V

    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzk;->a:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/q0;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
