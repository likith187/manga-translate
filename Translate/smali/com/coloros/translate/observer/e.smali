.class public final Lcom/coloros/translate/observer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/observer/e$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/observer/e;

.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Ljava/util/List;

.field private static e:Z

.field private static final f:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/observer/e;

    invoke-direct {v0}, Lcom/coloros/translate/observer/e;-><init>()V

    sput-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coloros/translate/observer/e;->a:Z

    sput-boolean v0, Lcom/coloros/translate/observer/e;->b:Z

    sput-boolean v0, Lcom/coloros/translate/observer/e;->c:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/coloros/translate/observer/e;->d:Ljava/util/List;

    sget-object v0, Lcom/coloros/translate/observer/e$b;->INSTANCE:Lcom/coloros/translate/observer/e$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/observer/e;->f:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/observer/e;->j()V

    return-void
.end method

.method public static final synthetic b(Lcom/coloros/translate/observer/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/observer/e;->f()V

    return-void
.end method

.method public static final synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/coloros/translate/observer/e;->a:Z

    return v0
.end method

.method public static final synthetic d(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/observer/e;->c:Z

    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/observer/e;->b:Z

    return-void
.end method

.method private final f()V
    .locals 4

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sget-boolean v0, Lcom/coloros/translate/observer/e;->b:Z

    sget-boolean v1, Lcom/coloros/translate/observer/e;->c:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNetwork , mIsConnectedWIFI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsConnectedCellular = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetConnectionStateMonitor"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/observer/e;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    sget-boolean v0, Lcom/coloros/translate/observer/e;->c:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coloros/translate/observer/e;->b:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/coloros/translate/observer/e;->a:Z

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/observer/e$a;

    invoke-interface {v0}, Lcom/coloros/translate/observer/e$a;->b()V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/coloros/translate/observer/e;->a:Z

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/observer/e$a;

    invoke-interface {v0}, Lcom/coloros/translate/observer/e$a;->a()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final g()Lcom/coloros/translate/utils/v0;
    .locals 0

    sget-object p0, Lcom/coloros/translate/observer/e;->f:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/utils/v0;

    return-object p0
.end method

.method private final i()Z
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "NetConnectionStateMonitor"

    const-string v2, "isNetWorkConnected"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/coloros/translate/observer/e;->e:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coloros/translate/observer/e;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/observer/e;->g()Lcom/coloros/translate/utils/v0;

    move-result-object p0

    new-instance v0, Lcom/coloros/translate/observer/d;

    invoke-direct {v0}, Lcom/coloros/translate/observer/d;-><init>()V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/translate/utils/v0;->d(Ljava/lang/Runnable;J)V

    :cond_0
    sget-boolean p0, Lcom/coloros/translate/observer/e;->a:Z

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/observer/e;->o()V

    sget-boolean p0, Lcom/coloros/translate/observer/e;->a:Z

    return p0
.end method

.method private static final j()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "NetConnectionStateMonitor"

    const-string v2, "isNetWorkConnected: delay to update"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->o()V

    return-void
.end method

.method private final m()V
    .locals 6

    const-string p0, "build(...)"

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "connectivity"

    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    check-cast p0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v4

    :goto_0
    new-instance v1, Lcom/coloros/translate/observer/e$d;

    invoke-direct {v1}, Lcom/coloros/translate/observer/e$d;-><init>()V

    new-instance v5, Lcom/coloros/translate/observer/e$c;

    invoke-direct {v5}, Lcom/coloros/translate/observer/e$c;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, v3, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_2
    invoke-static {v4}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v1

    const-string v2, "NetConnectionStateMonitor"

    if-eqz v1, :cond_3

    sput-boolean v0, Lcom/coloros/translate/observer/e;->e:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetWorkStateCallbacks failure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {p0}, Ln8/r;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p0, Ln8/h0;

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "setNetWorkStateCallbacks success"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/observer/e;->o()V

    invoke-direct {p0}, Lcom/coloros/translate/observer/e;->m()V

    return-void
.end method

.method public final k()Z
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-direct {p0}, Lcom/coloros/translate/observer/e;->i()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkUnAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetConnectionStateMonitor"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/observer/e;->i()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final l(Lcom/coloros/translate/observer/e$a;)V
    .locals 0

    const-string p0, "netStatusCallBack"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/observer/e;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/coloros/translate/observer/e;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final n(Lcom/coloros/translate/observer/e$a;)V
    .locals 0

    sget-object p0, Lcom/coloros/translate/observer/e;->d:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/collections/o;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/observer/e;->d:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/i0;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 8

    sget-object p0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move v1, v0

    :goto_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "NetConnectionStateMonitor"

    if-eqz v3, :cond_0

    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWifiConnected failure:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v2}, Ln8/r;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Ln8/h0;

    sput-boolean v1, Lcom/coloros/translate/observer/e;->b:Z

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected success:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catchall_3
    move-exception v1

    move p0, v0

    :goto_2
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMobileDataConnected failure:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v1}, Ln8/r;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v1, Ln8/h0;

    sput-boolean p0, Lcom/coloros/translate/observer/e;->c:Z

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataConnected success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean p0, Lcom/coloros/translate/observer/e;->b:Z

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/coloros/translate/observer/e;->c:Z

    if-eqz p0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    sput-boolean v0, Lcom/coloros/translate/observer/e;->a:Z

    return-void
.end method
