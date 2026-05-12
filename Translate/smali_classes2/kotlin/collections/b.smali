.class public abstract Lkotlin/collections/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lx8/a;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e()Z
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/collections/b;->a:I

    invoke-virtual {p0}, Lkotlin/collections/b;->a()V

    iget p0, p0, Lkotlin/collections/b;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final c()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/collections/b;->a:I

    return-void
.end method

.method protected final d(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/b;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lkotlin/collections/b;->a:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lkotlin/collections/b;->a:I

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    if-eq v0, p0, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasNext called when the iterator is in the FAILED state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0}, Lkotlin/collections/b;->e()Z

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/b;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lkotlin/collections/b;->a:I

    iget-object p0, p0, Lkotlin/collections/b;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lkotlin/collections/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lkotlin/collections/b;->a:I

    iget-object p0, p0, Lkotlin/collections/b;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
