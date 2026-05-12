.class final Lcom/coloros/translate/repository/remote/RtasrEngineHandler$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->p(Lcom/coloros/translate/engine/IRtasrEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $rtasrEngine:Lcom/coloros/translate/engine/IRtasrEngine;

.field final synthetic this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;Lcom/coloros/translate/engine/IRtasrEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$c;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    iput-object p2, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$c;->$rtasrEngine:Lcom/coloros/translate/engine/IRtasrEngine;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$c;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$c;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->d(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$c;->$rtasrEngine:Lcom/coloros/translate/engine/IRtasrEngine;

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$c;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    monitor-enter v0

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->b(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {p0, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->f(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 5
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->b(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->c(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ln8/q;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->c(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ln8/q;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->c(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ln8/q;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->l(Ljava/lang/String;Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->f(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;Ljava/util/concurrent/CountDownLatch;)V

    .line 11
    :cond_3
    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
