.class abstract Lkotlin/collections/s0;
.super Lkotlin/collections/r0;
.source "SourceFile"


# direct methods
.method public static b()Ljava/util/Set;
    .locals 1

    sget-object v0, Lkotlin/collections/c0;->INSTANCE:Lkotlin/collections/c0;

    return-object v0
.end method

.method public static final c(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/r0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/q0;->b()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static varargs d([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/m;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
