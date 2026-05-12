.class public final Lx1/j0;
.super Lx1/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lx1/j0;->f([S)I

    move-result p0

    return p0
.end method

.method public bridge synthetic d(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lx1/j0;->g(I)[S

    move-result-object p0

    return-object p0
.end method

.method protected f([S)I
    .locals 0

    const-string p0, "array"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method protected g(I)[S
    .locals 0

    new-array p0, p1, [S

    return-object p0
.end method
