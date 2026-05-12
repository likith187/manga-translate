.class public final Landroidx/lifecycle/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/k$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/lifecycle/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0}, Landroidx/lifecycle/k;-><init>()V

    sput-object v0, Landroidx/lifecycle/k;->INSTANCE:Landroidx/lifecycle/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroidx/lifecycle/s0;Lq0/e;Landroidx/lifecycle/l;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s0;->c(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/j0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/j0;->c(Lq0/e;Landroidx/lifecycle/l;)V

    sget-object p0, Landroidx/lifecycle/k;->INSTANCE:Landroidx/lifecycle/k;

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/k;->c(Lq0/e;Landroidx/lifecycle/l;)V

    :cond_0
    return-void
.end method

.method public static final b(Lq0/e;Landroidx/lifecycle/l;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/j0;
    .locals 2

    const-string v0, "registry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lq0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/h0;->c:Landroidx/lifecycle/h0$a;

    invoke-virtual {v1, v0, p3}, Landroidx/lifecycle/h0$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/h0;

    move-result-object p3

    new-instance v0, Landroidx/lifecycle/j0;

    invoke-direct {v0, p2, p3}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/String;Landroidx/lifecycle/h0;)V

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/j0;->c(Lq0/e;Landroidx/lifecycle/l;)V

    sget-object p2, Landroidx/lifecycle/k;->INSTANCE:Landroidx/lifecycle/k;

    invoke-direct {p2, p0, p1}, Landroidx/lifecycle/k;->c(Lq0/e;Landroidx/lifecycle/l;)V

    return-object v0
.end method

.method private final c(Lq0/e;Landroidx/lifecycle/l;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/lifecycle/l$b;->STARTED:Landroidx/lifecycle/l$b;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/l$b;->isAtLeast(Landroidx/lifecycle/l$b;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/lifecycle/k$b;

    invoke-direct {p0, p2, p1}, Landroidx/lifecycle/k$b;-><init>(Landroidx/lifecycle/l;Lq0/e;)V

    invoke-virtual {p2, p0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-class p0, Landroidx/lifecycle/k$a;

    invoke-virtual {p1, p0}, Lq0/e;->d(Ljava/lang/Class;)V

    :goto_1
    return-void
.end method
