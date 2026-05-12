.class public final Lcom/coloros/translate/utils/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/t0;

.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/t0;

    invoke-direct {v0}, Lcom/coloros/translate/utils/t0;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/t0;->INSTANCE:Lcom/coloros/translate/utils/t0;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/t0;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Z)Lcom/coloros/translate/utils/s0;
    .locals 1

    const-string v0, "threadName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/utils/s0;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/utils/s0;-><init>(Ljava/lang/String;Z)V

    sget-object p0, Lcom/coloros/translate/utils/t0;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/s0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;ZILjava/lang/Object;)Lcom/coloros/translate/utils/s0;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/utils/t0;->a(Ljava/lang/String;Z)Lcom/coloros/translate/utils/s0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "threadName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/coloros/translate/utils/t0;->d(Ljava/lang/String;ZLjava/lang/Runnable;J)V

    return-void
.end method

.method private static final d(Ljava/lang/String;ZLjava/lang/Runnable;J)V
    .locals 3

    const-string v0, "ThreadPoolUtil"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/t0;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/utils/s0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/coloros/translate/utils/s0;->c()Landroid/os/Handler;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "post but handler is null, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "execute, error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static final e(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asr_callback"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/t0;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final f()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "asr_callback"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/coloros/translate/utils/t0;->b(Ljava/lang/String;ZILjava/lang/Object;)Lcom/coloros/translate/utils/s0;

    const-string v0, "asr_request"

    invoke-static {v0, v3}, Lcom/coloros/translate/utils/t0;->a(Ljava/lang/String;Z)Lcom/coloros/translate/utils/s0;

    return-void
.end method

.method public static final g()V
    .locals 9

    const-string v0, "ThreadPoolUtil"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/t0;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_4

    :try_start_1
    sget-object v4, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/coloros/translate/utils/s0;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/coloros/translate/utils/s0;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/coloros/translate/utils/s0;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/coloros/translate/utils/s0;->f()V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v4}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    sget-object v5, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v4}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_3
    invoke-static {v4}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    move-object v6, v3

    check-cast v6, Lcom/coloros/translate/utils/s0;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/coloros/translate/utils/s0;->e()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    :cond_3
    move-object v6, v2

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeAndStopThreadInfo, thread "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " stop error: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :goto_5
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAndStopThreadInfo, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
