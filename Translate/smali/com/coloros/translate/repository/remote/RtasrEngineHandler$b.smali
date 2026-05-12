.class final Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->l(Ljava/lang/String;Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $rtasrListener:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

.field final synthetic $tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    iput-object p2, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->$rtasrListener:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    iput-object p3, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->$tag:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->d(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->b(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v1, v2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->f(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 5
    :cond_0
    :goto_0
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    monitor-exit v0

    .line 7
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->b(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    .line 8
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->e(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Lcom/coloros/translate/engine/IRtasrEngine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->c(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ln8/q;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->c(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Ln8/q;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->$rtasrListener:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    if-eq v0, v1, :cond_2

    .line 10
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "RtasrEngineHandler"

    const-string v1, "registerRtasrListener reject"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "RtasrEngineHandler"

    const-string v2, "registerRtasrListener"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->e(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;)Lcom/coloros/translate/engine/IRtasrEngine;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->$rtasrListener:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    invoke-interface {v0, v1, v2}, Lcom/coloros/translate/engine/IRtasrEngine;->registerRtasrListener(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V

    .line 13
    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->g(Lcom/coloros/translate/repository/remote/RtasrEngineHandler;Ln8/q;)V

    goto :goto_4

    .line 14
    :cond_4
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "RtasrEngineHandler"

    const-string v1, "registerRtasrListener mRtasrEngine == null"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 15
    :goto_2
    monitor-exit v0

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    :goto_3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "RtasrEngineHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRtasrListener e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
