.class public Lx1/n;
.super Lcom/coloros/translate/engine/IRtasrListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/n$a;
    }
.end annotation


# static fields
.field public static final c:Lx1/n$a;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lx1/n;->c:Lx1/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/engine/IRtasrListener$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lx1/n;)V
    .locals 0

    invoke-static {p0}, Lx1/n;->q(Lx1/n;)V

    return-void
.end method

.method public static synthetic b(Lx1/n;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lx1/n;->k(Lx1/n;J)V

    return-void
.end method

.method public static synthetic c(Lx1/n;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lx1/n;->p(Lx1/n;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lx1/n;D)V
    .locals 0

    invoke-static {p0, p1, p2}, Lx1/n;->t(Lx1/n;D)V

    return-void
.end method

.method public static synthetic e(Lx1/n;Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 0

    invoke-static {p0, p1}, Lx1/n;->r(Lx1/n;Lcom/coloros/translate/engine/info/AsrTranslateResult;)V

    return-void
.end method

.method public static synthetic f(Lx1/n;I)V
    .locals 0

    invoke-static {p0, p1}, Lx1/n;->u(Lx1/n;I)V

    return-void
.end method

.method public static synthetic g(Lx1/n;[B)V
    .locals 0

    invoke-static {p0, p1}, Lx1/n;->s(Lx1/n;[B)V

    return-void
.end method

.method public static synthetic h(Lx1/n;)V
    .locals 0

    invoke-static {p0}, Lx1/n;->o(Lx1/n;)V

    return-void
.end method

.method public static synthetic i(Lx1/n;Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 0

    invoke-static {p0, p1}, Lx1/n;->n(Lx1/n;Lcom/coloros/translate/engine/info/AsrResult;)V

    return-void
.end method

.method public static synthetic j(Lx1/n;IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lx1/n;->l(Lx1/n;IILjava/lang/String;)V

    return-void
.end method

.method private static final k(Lx1/n;J)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/IRtasrListener;

    invoke-interface {v0, p1, p2}, Lcom/coloros/translate/engine/IRtasrListener;->onRecordTime(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRunningType e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BaseRtAsrWrapperListener"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final l(Lx1/n;IILjava/lang/String;)V
    .locals 4

    const-string v0, "BaseRtAsrWrapperListener"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResultStatus from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/IRtasrListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/coloros/translate/engine/IRtasrListener;->onResultStatus(IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onResultStatus e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final n(Lx1/n;Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/IRtasrListener;

    invoke-interface {v0, p1}, Lcom/coloros/translate/engine/IRtasrListener;->onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRtasrResult e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseRtAsrWrapperListener"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final o(Lx1/n;)V
    .locals 4

    const-string v0, "BaseRtAsrWrapperListener"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "onStart"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/IRtasrListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/coloros/translate/engine/IRtasrListener;->onStart()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final p(Lx1/n;ILjava/lang/String;)V
    .locals 4

    const-string v0, "BaseRtAsrWrapperListener"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatus code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/IRtasrListener;

    invoke-interface {v1, p1, p2}, Lcom/coloros/translate/engine/IRtasrListener;->onStatus(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatus e = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final q(Lx1/n;)V
    .locals 4

    const-string v0, "BaseRtAsrWrapperListener"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "onStop"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/IRtasrListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/coloros/translate/engine/IRtasrListener;->onStop()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final r(Lx1/n;Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 3

    const-string v0, "BaseRtAsrWrapperListener"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$asrTranslateResult"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "onTranslateResult"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/IRtasrListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/coloros/translate/engine/IRtasrListener;->onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTranslateResult e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final s(Lx1/n;[B)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/IRtasrListener;

    invoke-interface {v0, p1}, Lcom/coloros/translate/engine/IRtasrListener;->onVoiceData([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoiceData e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseRtAsrWrapperListener"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final t(Lx1/n;D)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/IRtasrListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/coloros/translate/engine/IRtasrListener;->onVoiceVolume(D)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVoiceVolume e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BaseRtAsrWrapperListener"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final u(Lx1/n;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/IRtasrListener;

    invoke-interface {v0, p1}, Lcom/coloros/translate/engine/IRtasrListener;->setRunningType(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRunningType e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseRtAsrWrapperListener"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final m(IILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "BaseRtAsrWrapperListener"

    const-string p2, "onResultStatus, unable is true"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lx1/n;->onStatus(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lx1/n;->onResultStatus(IILjava/lang/String;)V

    return-void
.end method

.method public onRecordTime(J)V
    .locals 1

    new-instance v0, Lx1/g;

    invoke-direct {v0, p0, p1, p2}, Lx1/g;-><init>(Lx1/n;J)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResultStatus(IILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "BaseRtAsrWrapperListener"

    const-string p2, "onResultStatus, unable is true"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lx1/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lx1/j;-><init>(Lx1/n;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 1

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "BaseRtAsrWrapperListener"

    const-string v0, "onRtasrResult, unable is true"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lx1/i;

    invoke-direct {v0, p0, p1}, Lx1/i;-><init>(Lx1/n;Lcom/coloros/translate/engine/info/AsrResult;)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseRtAsrWrapperListener"

    const-string v1, "onStart, unable is true"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lx1/e;

    invoke-direct {v0, p0}, Lx1/e;-><init>(Lx1/n;)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "BaseRtAsrWrapperListener"

    const-string p2, "onStatus, unable is true"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lx1/l;

    invoke-direct {v0, p0, p1, p2}, Lx1/l;-><init>(Lx1/n;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseRtAsrWrapperListener"

    const-string v1, "onStop, unable is true"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lx1/m;

    invoke-direct {v0, p0}, Lx1/m;-><init>(Lx1/n;)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 1

    const-string v0, "asrTranslateResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "BaseRtAsrWrapperListener"

    const-string v0, "onTranslateResult, unable is true"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lx1/h;

    invoke-direct {v0, p0, p1}, Lx1/h;-><init>(Lx1/n;Lcom/coloros/translate/engine/info/AsrTranslateResult;)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVoiceData([B)V
    .locals 1

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "BaseRtAsrWrapperListener"

    const-string v0, "onVoiceData, unable is true"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lx1/k;

    invoke-direct {v0, p0, p1}, Lx1/k;-><init>(Lx1/n;[B)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVoiceVolume(D)V
    .locals 1

    iget-boolean v0, p0, Lx1/n;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "BaseRtAsrWrapperListener"

    const-string p2, "onVoiceVolume, unable is true"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lx1/d;

    invoke-direct {v0, p0, p1, p2}, Lx1/d;-><init>(Lx1/n;D)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerRtasrListener(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setRunningType(I)V
    .locals 1

    new-instance v0, Lx1/f;

    invoke-direct {v0, p0, p1}, Lx1/f;-><init>(Lx1/n;I)V

    invoke-static {v0}, Lcom/coloros/translate/utils/t0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unRegisterRtasrListener(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lx1/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/i0;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
