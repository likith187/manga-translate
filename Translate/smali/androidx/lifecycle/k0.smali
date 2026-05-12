.class public abstract Landroidx/lifecycle/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll0/a$c;

.field public static final b:Ll0/a$c;

.field public static final c:Ll0/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ll0/a;->b:Ll0/a$a;

    new-instance v0, Landroidx/lifecycle/k0$b;

    invoke-direct {v0}, Landroidx/lifecycle/k0$b;-><init>()V

    sput-object v0, Landroidx/lifecycle/k0;->a:Ll0/a$c;

    new-instance v0, Landroidx/lifecycle/k0$c;

    invoke-direct {v0}, Landroidx/lifecycle/k0$c;-><init>()V

    sput-object v0, Landroidx/lifecycle/k0;->b:Ll0/a$c;

    new-instance v0, Landroidx/lifecycle/k0$d;

    invoke-direct {v0}, Landroidx/lifecycle/k0$d;-><init>()V

    sput-object v0, Landroidx/lifecycle/k0;->c:Ll0/a$c;

    return-void
.end method

.method public static final a(Ll0/a;)Landroidx/lifecycle/h0;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/k0;->a:Ll0/a$c;

    invoke-virtual {p0, v0}, Ll0/a;->a(Ll0/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/h;

    if-eqz v0, :cond_2

    sget-object v1, Landroidx/lifecycle/k0;->b:Ll0/a$c;

    invoke-virtual {p0, v1}, Ll0/a;->a(Ll0/a$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/x0;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/lifecycle/k0;->c:Ll0/a$c;

    invoke-virtual {p0, v2}, Ll0/a;->a(Ll0/a$c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/u0;->c:Ll0/a$c;

    invoke-virtual {p0, v3}, Ll0/a;->a(Ll0/a$c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p0, v2}, Landroidx/lifecycle/k0;->b(Lq0/h;Landroidx/lifecycle/x0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/h0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final b(Lq0/h;Landroidx/lifecycle/x0;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/h0;
    .locals 1

    invoke-static {p0}, Landroidx/lifecycle/k0;->d(Lq0/h;)Landroidx/lifecycle/m0;

    move-result-object p0

    invoke-static {p1}, Landroidx/lifecycle/k0;->e(Landroidx/lifecycle/x0;)Landroidx/lifecycle/n0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/n0;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h0;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/lifecycle/h0;->c:Landroidx/lifecycle/h0$a;

    invoke-virtual {p0, p2}, Landroidx/lifecycle/m0;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Landroidx/lifecycle/h0$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/h0;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/lifecycle/n0;->e()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static final c(Lq0/h;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/l$b;->CREATED:Landroidx/lifecycle/l$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lq0/h;->getSavedStateRegistry()Lq0/e;

    move-result-object v0

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Lq0/e;->b(Ljava/lang/String;)Lq0/e$b;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/m0;

    invoke-interface {p0}, Lq0/h;->getSavedStateRegistry()Lq0/e;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/x0;

    invoke-direct {v0, v2, v3}, Landroidx/lifecycle/m0;-><init>(Lq0/e;Landroidx/lifecycle/x0;)V

    invoke-interface {p0}, Lq0/h;->getSavedStateRegistry()Lq0/e;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lq0/e;->c(Ljava/lang/String;Lq0/e$b;)V

    invoke-interface {p0}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/i0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/i0;-><init>(Landroidx/lifecycle/m0;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    :cond_2
    return-void
.end method

.method public static final d(Lq0/h;)Landroidx/lifecycle/m0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lq0/h;->getSavedStateRegistry()Lq0/e;

    move-result-object p0

    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {p0, v0}, Lq0/e;->b(Ljava/lang/String;)Lq0/e$b;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/m0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/m0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Landroidx/lifecycle/x0;)Landroidx/lifecycle/n0;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/u0;->b:Landroidx/lifecycle/u0$b;

    new-instance v3, Landroidx/lifecycle/k0$a;

    invoke-direct {v3}, Landroidx/lifecycle/k0$a;-><init>()V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/u0$b;->b(Landroidx/lifecycle/u0$b;Landroidx/lifecycle/x0;Landroidx/lifecycle/u0$c;Ll0/a;ILjava/lang/Object;)Landroidx/lifecycle/u0;

    move-result-object p0

    const-class v0, Landroidx/lifecycle/n0;

    invoke-static {v0}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v0

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {p0, v1, v0}, Landroidx/lifecycle/u0;->c(Ljava/lang/String;Lc9/c;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/n0;

    return-object p0
.end method
