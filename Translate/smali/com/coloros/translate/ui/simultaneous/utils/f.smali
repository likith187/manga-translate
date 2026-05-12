.class public final Lcom/coloros/translate/ui/simultaneous/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/utils/f$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/translate/ui/simultaneous/utils/f$a;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private final c:Ljava/util/Map;

.field private d:Z

.field private e:Lw8/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/utils/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/f;->f:Lcom/coloros/translate/ui/simultaneous/utils/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->c:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/simultaneous/utils/f;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->e(Lcom/coloros/translate/ui/simultaneous/utils/f;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/ui/simultaneous/utils/f;)Lw8/p;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->e:Lw8/p;

    return-object p0
.end method

.method public static final synthetic c(Lcom/coloros/translate/ui/simultaneous/utils/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->c:Ljava/util/Map;

    return-object p0
.end method

.method private final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->a:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "translateThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->a:Landroid/os/HandlerThread;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/utils/e;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/utils/e;-><init>(Lcom/coloros/translate/ui/simultaneous/utils/f;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->b:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static final e(Lcom/coloros/translate/ui/simultaneous/utils/f;Landroid/os/Message;)Z
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->c:Ljava/util/Map;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/a;

    const-string v1, "currentTranslate id:"

    const-string v2, "TranslateQueueManager"

    if-eqz v0, :cond_0

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/utils/f;->k(Lo2/a;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reject"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final k(Lo2/a;)V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->e:Lw8/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->w()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object v0

    invoke-virtual {p1}, Lo2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo2/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo2/a;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coloros/translate/ui/simultaneous/utils/f$b;

    invoke-direct {v4, p0, p1}, Lcom/coloros/translate/ui/simultaneous/utils/f$b;-><init>(Lcom/coloros/translate/ui/simultaneous/utils/f;Lo2/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->d:Z

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->e:Lw8/p;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "destroyOnViewModel"

    const-string v3, "TranslateQueueManager"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "destroyOnViewModel "

    if-eqz v1, :cond_1

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->a:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_2
    move-object v1, v0

    :goto_3
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v4, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->b:Landroid/os/Handler;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->a:Landroid/os/HandlerThread;

    return-void
.end method

.method public final g(Lo2/a;)V
    .locals 6

    const-string v0, "translateResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->d:Z

    const-string v1, "TranslateQueueManager"

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "dispose onDestroy reject "

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->e:Lw8/p;

    if-nez v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "dispose resultCallBack=null reject "

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispose id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->b:Landroid/os/Handler;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "disposeAll"

    const-string v2, "TranslateQueueManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disposeAll "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final i(Lo2/a;)V
    .locals 6

    const-string v0, "translateResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->d:Z

    const-string v1, "TranslateQueueManager"

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "executeTranslate onDestroy reject "

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->e:Lw8/p;

    if-nez v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "executeTranslate resultCallBack=null reject "

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/utils/f;->d()V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "executeTranslate id exist reject id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeTranslate id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->b:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lo2/a;->d()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->b:Landroid/os/Handler;

    if-eqz p0, :cond_4

    const-wide/16 v0, 0x1f40

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    return-void
.end method

.method public final j(Lw8/p;)V
    .locals 1

    const-string v0, "callBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f;->e:Lw8/p;

    return-void
.end method
