.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/embedding/EmbeddingBackend;


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;,
        Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;,
        Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;
    }
.end annotation


# static fields
.field public static final e:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

.field private static volatile f:Landroidx/window/embedding/ExtensionEmbeddingBackend;

.field private static final g:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private a:Landroidx/window/embedding/EmbeddingInterfaceCompat;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final c:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->e:Landroidx/window/embedding/ExtensionEmbeddingBackend$Companion;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->g:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroidx/window/embedding/EmbeddingInterfaceCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->a:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    new-instance p1, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    invoke-direct {p1, p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;-><init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->c:Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->a:Landroidx/window/embedding/EmbeddingInterfaceCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/window/embedding/EmbeddingInterfaceCompat;->a(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V

    :cond_0
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public static final synthetic a()Landroidx/window/embedding/ExtensionEmbeddingBackend;
    .locals 1

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->f:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->g:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic c(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V
    .locals 0

    sput-object p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->f:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    return-void
.end method


# virtual methods
.method public final d()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method
