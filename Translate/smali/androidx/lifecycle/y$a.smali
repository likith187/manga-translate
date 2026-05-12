.class Landroidx/lifecycle/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/y;


# direct methods
.method constructor <init>(Landroidx/lifecycle/y;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/y$a;->a:Landroidx/lifecycle/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/y$a;->a:Landroidx/lifecycle/y;

    iget-object v0, v0, Landroidx/lifecycle/y;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/y$a;->a:Landroidx/lifecycle/y;

    iget-object v1, v1, Landroidx/lifecycle/y;->f:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/y$a;->a:Landroidx/lifecycle/y;

    sget-object v3, Landroidx/lifecycle/y;->k:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/lifecycle/y;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/lifecycle/y$a;->a:Landroidx/lifecycle/y;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/y;->n(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
