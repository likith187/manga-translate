.class abstract Lcom/google/gson/internal/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation


# instance fields
.field a:Lcom/google/gson/internal/h$e;

.field b:Lcom/google/gson/internal/h$e;

.field c:I

.field final synthetic f:Lcom/google/gson/internal/h;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/h;)V
    .locals 1

    iput-object p1, p0, Lcom/google/gson/internal/h$d;->f:Lcom/google/gson/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/gson/internal/h;->header:Lcom/google/gson/internal/h$e;

    iget-object v0, v0, Lcom/google/gson/internal/h$e;->f:Lcom/google/gson/internal/h$e;

    iput-object v0, p0, Lcom/google/gson/internal/h$d;->a:Lcom/google/gson/internal/h$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/h$d;->b:Lcom/google/gson/internal/h$e;

    iget p1, p1, Lcom/google/gson/internal/h;->modCount:I

    iput p1, p0, Lcom/google/gson/internal/h$d;->c:I

    return-void
.end method


# virtual methods
.method final a()Lcom/google/gson/internal/h$e;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/h$d;->a:Lcom/google/gson/internal/h$e;

    iget-object v1, p0, Lcom/google/gson/internal/h$d;->f:Lcom/google/gson/internal/h;

    iget-object v2, v1, Lcom/google/gson/internal/h;->header:Lcom/google/gson/internal/h$e;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/google/gson/internal/h;->modCount:I

    iget v2, p0, Lcom/google/gson/internal/h$d;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/h$e;->f:Lcom/google/gson/internal/h$e;

    iput-object v1, p0, Lcom/google/gson/internal/h$d;->a:Lcom/google/gson/internal/h$e;

    iput-object v0, p0, Lcom/google/gson/internal/h$d;->b:Lcom/google/gson/internal/h$e;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/gson/internal/h$d;->a:Lcom/google/gson/internal/h$e;

    iget-object p0, p0, Lcom/google/gson/internal/h$d;->f:Lcom/google/gson/internal/h;

    iget-object p0, p0, Lcom/google/gson/internal/h;->header:Lcom/google/gson/internal/h$e;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/h$d;->b:Lcom/google/gson/internal/h$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/gson/internal/h$d;->f:Lcom/google/gson/internal/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/internal/h;->removeInternal(Lcom/google/gson/internal/h$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/h$d;->b:Lcom/google/gson/internal/h$e;

    iget-object v0, p0, Lcom/google/gson/internal/h$d;->f:Lcom/google/gson/internal/h;

    iget v0, v0, Lcom/google/gson/internal/h;->modCount:I

    iput v0, p0, Lcom/google/gson/internal/h$d;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
