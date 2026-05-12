.class public Lcom/oplus/vfxsdk/naive/coe/engine/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/ThreadLocal;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->c:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)Z
    .locals 1

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->d:I

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()V
    .locals 1

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->c:Ljava/lang/ThreadLocal;

    const-string v0, "StartLoading"

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "StartLoading"

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;

    iget v3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->d:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->d:I

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/b;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method
