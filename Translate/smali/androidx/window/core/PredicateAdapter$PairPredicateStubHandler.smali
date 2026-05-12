.class final Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;
.super Landroidx/window/core/PredicateAdapter$BaseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/PredicateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PairPredicateStubHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/window/core/PredicateAdapter$BaseHandler<",
        "Landroid/util/Pair<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private final b:Lc9/c;

.field private final c:Lc9/c;

.field private final d:Lw8/p;


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->f(Ljava/lang/Object;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public f(Ljava/lang/Object;Landroid/util/Pair;)Z
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parameter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->b:Lc9/c;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p1, v0}, Lc9/d;->a(Lc9/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->c:Lc9/c;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, p2}, Lc9/d;->a(Lc9/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->d:Lw8/p;

    invoke-interface {p0, p1, p2}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->d:Lw8/p;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;->d:Lw8/p;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
