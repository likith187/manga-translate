.class public final Landroidx/window/layout/SidecarWindowBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/WindowBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/SidecarWindowBackend$ExtensionListenerImpl;,
        Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;,
        Landroidx/window/layout/SidecarWindowBackend$Companion;
    }
.end annotation


# static fields
.field public static final c:Landroidx/window/layout/SidecarWindowBackend$Companion;

.field private static volatile d:Landroidx/window/layout/SidecarWindowBackend;

.field private static final e:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private a:Landroidx/window/layout/ExtensionInterfaceCompat;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/SidecarWindowBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/SidecarWindowBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/SidecarWindowBackend;->c:Landroidx/window/layout/SidecarWindowBackend$Companion;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/layout/SidecarWindowBackend;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/ExtensionInterfaceCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/SidecarWindowBackend;->a:Landroidx/window/layout/ExtensionInterfaceCompat;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/SidecarWindowBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p0, Landroidx/window/layout/SidecarWindowBackend;->a:Landroidx/window/layout/ExtensionInterfaceCompat;

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/window/layout/SidecarWindowBackend$ExtensionListenerImpl;

    invoke-direct {v0, p0}, Landroidx/window/layout/SidecarWindowBackend$ExtensionListenerImpl;-><init>(Landroidx/window/layout/SidecarWindowBackend;)V

    invoke-interface {p1, v0}, Landroidx/window/layout/ExtensionInterfaceCompat;->b(Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V

    :cond_0
    return-void
.end method

.method public static final synthetic c()Landroidx/window/layout/SidecarWindowBackend;
    .locals 1

    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->d:Landroidx/window/layout/SidecarWindowBackend;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic e(Landroidx/window/layout/SidecarWindowBackend;)V
    .locals 0

    sput-object p0, Landroidx/window/layout/SidecarWindowBackend;->d:Landroidx/window/layout/SidecarWindowBackend;

    return-void
.end method

.method private final f(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/SidecarWindowBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-virtual {v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend;->a:Landroidx/window/layout/ExtensionInterfaceCompat;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Landroidx/window/layout/ExtensionInterfaceCompat;->c(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method private final h(Landroid/app/Activity;)Z
    .locals 2

    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-virtual {v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lc0/a;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/SidecarWindowBackend;->a:Landroidx/window/layout/ExtensionInterfaceCompat;

    if-nez v1, :cond_0

    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    invoke-interface {p3, p0}, Lc0/a;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/window/layout/SidecarWindowBackend;->h(Landroid/app/Activity;)Z

    move-result v2

    new-instance v3, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-direct {v3, p1, p2, p3}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;-><init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lc0/a;)V

    iget-object p2, p0, Landroidx/window/layout/SidecarWindowBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Landroidx/window/layout/ExtensionInterfaceCompat;->a(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-virtual {v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_3
    move-object p2, p3

    :goto_0
    check-cast p2, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->f()Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p3

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v3, p3}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->b(Landroidx/window/layout/WindowLayoutInfo;)V

    :cond_5
    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public b(Lc0/a;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/SidecarWindowBackend;->e:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/SidecarWindowBackend;->a:Landroidx/window/layout/ExtensionInterfaceCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/window/layout/SidecarWindowBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-virtual {v3}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->e()Lc0/a;

    move-result-object v4

    if-ne v4, p1, :cond_1

    const-string v4, "callbackWrapper"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/window/layout/SidecarWindowBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-virtual {v1}, Landroidx/window/layout/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/window/layout/SidecarWindowBackend;->f(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final g()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/SidecarWindowBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method
