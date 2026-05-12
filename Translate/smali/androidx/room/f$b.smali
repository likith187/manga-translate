.class Landroidx/room/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/f;


# direct methods
.method constructor <init>(Landroidx/room/f;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/f$b;->a:Landroidx/room/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Landroidx/room/f$b;->a:Landroidx/room/f;

    invoke-static {p2}, Landroidx/room/IMultiInstanceInvalidationService$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/room/IMultiInstanceInvalidationService;

    move-result-object p2

    iput-object p2, p1, Landroidx/room/f;->f:Landroidx/room/IMultiInstanceInvalidationService;

    iget-object p0, p0, Landroidx/room/f$b;->a:Landroidx/room/f;

    iget-object p1, p0, Landroidx/room/f;->g:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/f;->k:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Landroidx/room/f$b;->a:Landroidx/room/f;

    iget-object v0, p1, Landroidx/room/f;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/f;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/room/f$b;->a:Landroidx/room/f;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/f;->f:Landroidx/room/IMultiInstanceInvalidationService;

    return-void
.end method
