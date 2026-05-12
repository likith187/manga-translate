.class abstract Lkotlin/io/m;
.super Lkotlin/io/l;
.source "SourceFile"


# direct methods
.method public static final l(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/io/h;

    invoke-direct {v0, p0, p1}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;)V

    return-object v0
.end method

.method public static final m(Ljava/io/File;)Lkotlin/io/h;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/io/i;->BOTTOM_UP:Lkotlin/io/i;

    invoke-static {p0, v0}, Lkotlin/io/m;->l(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ljava/io/File;)Lkotlin/io/h;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/io/i;->TOP_DOWN:Lkotlin/io/i;

    invoke-static {p0, v0}, Lkotlin/io/m;->l(Ljava/io/File;Lkotlin/io/i;)Lkotlin/io/h;

    move-result-object p0

    return-object p0
.end method
