.class public abstract Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;
.super Lcom/oplus/aisubsystem/sdk/api/callback/ProcessCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oplus/aisubsystem/sdk/api/callback/ProcessCallback;"
    }
.end annotation


# instance fields
.field private final lock$delegate:Ln8/j;

.field private volatile task:Lx5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx5/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ProcessCallback;-><init>()V

    sget-object v0, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack$a;->INSTANCE:Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->lock$delegate:Ln8/j;

    return-void
.end method

.method private final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->lock$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method


# virtual methods
.method public final onFailure$aiunit_sdk_aisubsystem_release(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->task:Lx5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lx5/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->task:Lx5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final onSuccess$aiunit_sdk_aisubsystem_release(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->task:Lx5/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lx5/a;->b(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->task:Lx5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final setTask$aiunit_sdk_aisubsystem_release(Lx5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx5/a;",
            ")V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->task:Lx5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/oplus/aisubsystem/sdk/api/callback/ApiCallBack;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
