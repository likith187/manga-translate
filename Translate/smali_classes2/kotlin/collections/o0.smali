.class abstract Lkotlin/collections/o0;
.super Lkotlin/collections/n0;
.source "SourceFile"


# direct methods
.method public static t(Ljava/util/Map;)Lkotlin/sequences/f;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/o;->L(Ljava/lang/Iterable;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method
