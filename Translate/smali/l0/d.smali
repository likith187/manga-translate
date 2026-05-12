.class public abstract Ll0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/u0$c;Lc9/c;Ll0/a;)Landroidx/lifecycle/s0;
    .locals 1

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/u0$c;->b(Lc9/c;Ll0/a;)Landroidx/lifecycle/s0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {p1}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroidx/lifecycle/u0$c;->c(Ljava/lang/Class;Ll0/a;)Landroidx/lifecycle/s0;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {p1}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/lifecycle/u0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    :goto_0
    return-object p0
.end method
