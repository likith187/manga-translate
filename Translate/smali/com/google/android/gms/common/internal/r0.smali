.class public final Lcom/google/android/gms/common/internal/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/gms/common/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/r0;->b:Lcom/google/android/gms/common/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/r0;->a:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/r0;->b:Lcom/google/android/gms/common/internal/d;

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/d;->a0(Lcom/google/android/gms/common/internal/d;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/r0;->b:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->T(Lcom/google/android/gms/common/internal/d;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r0;->b:Lcom/google/android/gms/common/internal/d;

    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/i0;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/internal/i0;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->X(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/r0;->b:Lcom/google/android/gms/common/internal/d;

    const/4 p2, 0x0

    iget p0, p0, Lcom/google/android/gms/common/internal/r0;->a:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p0}, Lcom/google/android/gms/common/internal/d;->b0(ILandroid/os/Bundle;I)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/common/internal/r0;->b:Lcom/google/android/gms/common/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d;->T(Lcom/google/android/gms/common/internal/d;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r0;->b:Lcom/google/android/gms/common/internal/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/d;->X(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/r0;->b:Lcom/google/android/gms/common/internal/d;

    iget p0, p0, Lcom/google/android/gms/common/internal/r0;->a:I

    iget-object p1, p1, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
