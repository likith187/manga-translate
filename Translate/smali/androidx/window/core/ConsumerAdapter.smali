.class public final Landroidx/window/core/ConsumerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanUncheckedReflection"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/ConsumerAdapter$Subscription;,
        Landroidx/window/core/ConsumerAdapter$ConsumerHandler;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/core/ConsumerAdapter;->a:Ljava/lang/ClassLoader;

    return-void
.end method

.method private final b(Lc9/c;Lw8/l;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;

    invoke-direct {v0, p1, p2}, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;-><init>(Lc9/c;Lw8/l;)V

    iget-object p1, p0, Landroidx/window/core/ConsumerAdapter;->a:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->e()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p0, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newProxyInstance(loader,\u2026onsumerClass()), handler)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final e()Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter;->a:Ljava/lang/ClassLoader;

    const-string v0, "java.util.function.Consumer"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"java.util.function.Consumer\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lc9/c;Ljava/lang/String;Lw8/l;)V
    .locals 2

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->e()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-direct {p0, p2, p4}, Landroidx/window/core/ConsumerAdapter;->b(Lc9/c;Lw8/l;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Ljava/lang/Class;
    .locals 0

    :try_start_0
    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->e()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d(Ljava/lang/Object;Lc9/c;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lw8/l;)Landroidx/window/core/ConsumerAdapter$Subscription;
    .locals 2

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addMethodName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeMethodName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p6}, Landroidx/window/core/ConsumerAdapter;->b(Lc9/c;Lw8/l;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    const-class v0, Landroid/app/Activity;

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->e()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p6, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    filled-new-array {p5, p2}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->e()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-instance p3, Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    invoke-direct {p3, p0, p1, p2}, Landroidx/window/core/ConsumerAdapter$createSubscription$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method
