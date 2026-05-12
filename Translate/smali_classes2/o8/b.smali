.class public abstract Lo8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)[Ljava/lang/Object;
    .locals 1

    if-ltz p0, :cond_0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be non-negative."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c([Ljava/lang/Object;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

.method public static final d([Ljava/lang/Object;II)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-static {p0, p1}, Lo8/b;->c([Ljava/lang/Object;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
