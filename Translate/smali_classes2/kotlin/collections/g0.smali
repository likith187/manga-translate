.class public final Lkotlin/collections/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lx8/a;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/g0;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/collections/e0;
    .locals 3

    new-instance v0, Lkotlin/collections/e0;

    iget v1, p0, Lkotlin/collections/g0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/collections/g0;->b:I

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/o;->q()V

    :cond_0
    iget-object p0, p0, Lkotlin/collections/g0;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/collections/e0;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lkotlin/collections/g0;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/g0;->a()Lkotlin/collections/e0;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
