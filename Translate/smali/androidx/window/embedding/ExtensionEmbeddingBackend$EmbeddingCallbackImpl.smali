.class public final Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/ExtensionEmbeddingBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddingCallbackImpl"
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field final synthetic b:Landroidx/window/embedding/ExtensionEmbeddingBackend;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/ExtensionEmbeddingBackend;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->b:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    const-string v0, "splitInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->a:Ljava/util/List;

    iget-object p0, p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$EmbeddingCallbackImpl;->b:Landroidx/window/embedding/ExtensionEmbeddingBackend;

    invoke-virtual {p0}, Landroidx/window/embedding/ExtensionEmbeddingBackend;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    invoke-virtual {v0, p1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
