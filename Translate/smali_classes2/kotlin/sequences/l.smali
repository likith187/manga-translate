.class abstract Lkotlin/sequences/l;
.super Lkotlin/sequences/k;
.source "SourceFile"


# direct methods
.method public static c(Ljava/util/Iterator;)Lkotlin/sequences/f;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/l$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/l$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lkotlin/sequences/i;->d(Lkotlin/sequences/f;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lkotlin/sequences/f;)Lkotlin/sequences/f;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/sequences/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/sequences/a;

    invoke-direct {v0, p0}, Lkotlin/sequences/a;-><init>(Lkotlin/sequences/f;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static e(Lw8/a;)Lkotlin/sequences/f;
    .locals 2

    const-string v0, "nextFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/e;

    new-instance v1, Lkotlin/sequences/l$b;

    invoke-direct {v1, p0}, Lkotlin/sequences/l$b;-><init>(Lw8/a;)V

    invoke-direct {v0, p0, v1}, Lkotlin/sequences/e;-><init>(Lw8/a;Lw8/l;)V

    invoke-static {v0}, Lkotlin/sequences/i;->d(Lkotlin/sequences/f;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lw8/a;Lw8/l;)Lkotlin/sequences/f;
    .locals 1

    const-string v0, "seedFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/e;

    invoke-direct {v0, p0, p1}, Lkotlin/sequences/e;-><init>(Lw8/a;Lw8/l;)V

    return-object v0
.end method
