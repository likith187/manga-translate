.class public abstract La0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La0/g$b;,
        La0/g$a;,
        La0/g$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[La0/g$b;)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lu/h;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[La0/g$b;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/os/CancellationSignal;La0/e;)La0/g$a;
    .locals 0

    invoke-static {p2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p2, p1}, La0/d;->e(Landroid/content/Context;Ljava/util/List;Landroid/os/CancellationSignal;)La0/g$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;IZILandroid/os/Handler;La0/g$c;)Landroid/graphics/Typeface;
    .locals 1

    new-instance v0, La0/a;

    invoke-static {p5}, La0/h;->b(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p5

    invoke-direct {v0, p6, p5}, La0/a;-><init>(La0/g$c;Ljava/util/concurrent/Executor;)V

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 p5, 0x1

    if-gt p3, p5, :cond_0

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/e;

    invoke-static {p0, p1, v0, p2, p4}, La0/f;->e(Landroid/content/Context;La0/e;La0/a;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fallbacks with blocking fetches are not supported for performance reasons"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, La0/f;->d(Landroid/content/Context;Ljava/util/List;ILjava/util/concurrent/Executor;La0/a;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
