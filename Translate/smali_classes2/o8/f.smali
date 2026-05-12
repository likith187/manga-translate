.class public final Lo8/f;
.super Lkotlin/collections/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Lx8/b;


# instance fields
.field private final a:Lo8/c;


# direct methods
.method public constructor <init>(Lo8/c;)V
    .locals 1

    const-string v0, "backing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/collections/d;-><init>()V

    iput-object p1, p0, Lo8/f;->a:Lo8/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lo8/f;->a:Lo8/c;

    invoke-virtual {p0}, Lo8/c;->size()I

    move-result p0

    return p0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    const-string p0, "elements"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lo8/f;->a:Lo8/c;

    invoke-virtual {p0}, Lo8/c;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lo8/f;->a:Lo8/c;

    invoke-virtual {p0, p1}, Lo8/c;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lo8/f;->a:Lo8/c;

    invoke-virtual {p0}, Lo8/c;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lo8/f;->a:Lo8/c;

    invoke-virtual {p0}, Lo8/c;->valuesIterator$kotlin_stdlib()Lo8/c$f;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lo8/f;->a:Lo8/c;

    invoke-virtual {p0, p1}, Lo8/c;->removeValue$kotlin_stdlib(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo8/f;->a:Lo8/c;

    invoke-virtual {v0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo8/f;->a:Lo8/c;

    invoke-virtual {v0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
