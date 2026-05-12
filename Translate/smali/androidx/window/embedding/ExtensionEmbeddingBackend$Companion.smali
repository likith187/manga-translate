.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/ExtensionEmbeddingBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;-><init>()V

    return-void
.end method

.method private final b()Landroidx/window/embedding/EmbeddingInterfaceCompat;
    .locals 6

    const-string v0, "EmbeddingBackend"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroidx/window/embedding/EmbeddingCompat;->d:Landroidx/window/embedding/EmbeddingCompat$Companion;

    invoke-virtual {v2}, Landroidx/window/embedding/EmbeddingCompat$Companion;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;->c(Ljava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Landroidx/window/embedding/EmbeddingCompat$Companion;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Landroidx/window/embedding/EmbeddingBackend;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v3, Landroidx/window/embedding/EmbeddingCompat;

    invoke-virtual {v2}, Landroidx/window/embedding/EmbeddingCompat$Companion;->c()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v2

    new-instance v4, Landroidx/window/embedding/EmbeddingAdapter;

    new-instance v5, Landroidx/window/core/PredicateAdapter;

    invoke-direct {v5, p0}, Landroidx/window/core/PredicateAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v4, v5}, Landroidx/window/embedding/EmbeddingAdapter;-><init>(Landroidx/window/core/PredicateAdapter;)V

    new-instance v5, Landroidx/window/core/ConsumerAdapter;

    invoke-direct {v5, p0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v3, v2, v4, v5}, Landroidx/window/embedding/EmbeddingCompat;-><init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load embedding extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string p0, "No supported embedding extension found"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a()Landroidx/window/embedding/ExtensionEmbeddingBackend;
    .locals 2

    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->a()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->b()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->a()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->e:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    invoke-direct {v0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;->b()Landroidx/window/embedding/EmbeddingInterfaceCompat;

    move-result-object v0

    new-instance v1, Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-direct {v1, v0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;-><init>(Landroidx/window/embedding/EmbeddingInterfaceCompat;)V

    invoke-static {v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->c(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :goto_2
    invoke-static {}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->a()Landroidx/window/embedding/ExtensionEmbeddingBackend;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Ljava/lang/Integer;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method
