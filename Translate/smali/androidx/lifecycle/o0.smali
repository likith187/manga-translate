.class public final Landroidx/lifecycle/o0;
.super Landroidx/lifecycle/u0$e;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u0$c;


# instance fields
.field private b:Landroid/app/Application;

.field private final c:Landroidx/lifecycle/u0$c;

.field private d:Landroid/os/Bundle;

.field private e:Landroidx/lifecycle/l;

.field private f:Lq0/e;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lq0/h;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/u0$e;-><init>()V

    invoke-interface {p2}, Lq0/h;->getSavedStateRegistry()Lq0/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/o0;->f:Lq0/e;

    invoke-interface {p2}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/o0;->e:Landroidx/lifecycle/l;

    iput-object p3, p0, Landroidx/lifecycle/o0;->d:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/o0;->b:Landroid/app/Application;

    if-eqz p1, :cond_0

    sget-object p2, Landroidx/lifecycle/u0$a;->f:Landroidx/lifecycle/u0$a$a;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/u0$a$a;->a(Landroid/app/Application;)Landroidx/lifecycle/u0$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/lifecycle/u0$a;

    invoke-direct {p1}, Landroidx/lifecycle/u0$a;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/o0;->c:Landroidx/lifecycle/u0$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/o0;->e(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lc9/c;Ll0/a;)Landroidx/lifecycle/s0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/o0;->c(Ljava/lang/Class;Ll0/a;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ll0/a;)Landroidx/lifecycle/s0;
    .locals 3

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/u0;->c:Ll0/a$c;

    invoke-virtual {p2, v0}, Ll0/a;->a(Ll0/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v1, Landroidx/lifecycle/k0;->a:Ll0/a$c;

    invoke-virtual {p2, v1}, Ll0/a;->a(Ll0/a$c;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/lifecycle/k0;->b:Ll0/a$c;

    invoke-virtual {p2, v1}, Ll0/a;->a(Ll0/a$c;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v0, Landroidx/lifecycle/u0$a;->h:Ll0/a$c;

    invoke-virtual {p2, v0}, Ll0/a;->a(Ll0/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/lifecycle/p0;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/lifecycle/p0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/lifecycle/p0;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/lifecycle/p0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/o0;->c:Landroidx/lifecycle/u0$c;

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/u0$c;->c(Ljava/lang/Class;Ll0/a;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/k0;->a(Ll0/a;)Landroidx/lifecycle/h0;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/p0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/k0;->a(Ll0/a;)Landroidx/lifecycle/h0;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/p0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/o0;->e:Landroidx/lifecycle/l;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/o0;->e(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Landroidx/lifecycle/s0;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/o0;->e:Landroidx/lifecycle/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/o0;->f:Lq0/e;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/o0;->e:Landroidx/lifecycle/l;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1, v0, p0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/s0;Lq0/e;Landroidx/lifecycle/l;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/o0;->e:Landroidx/lifecycle/l;

    if-eqz v0, :cond_4

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/o0;->b:Landroid/app/Application;

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/lifecycle/p0;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/lifecycle/p0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/lifecycle/p0;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/lifecycle/p0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    iget-object p1, p0, Landroidx/lifecycle/o0;->b:Landroid/app/Application;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/o0;->c:Landroidx/lifecycle/u0$c;

    invoke-interface {p0, p2}, Landroidx/lifecycle/u0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/lifecycle/u0$d;->b:Landroidx/lifecycle/u0$d$a;

    invoke-virtual {p0}, Landroidx/lifecycle/u0$d$a;->a()Landroidx/lifecycle/u0$d;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/lifecycle/u0$d;->a(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    iget-object v3, p0, Landroidx/lifecycle/o0;->f:Lq0/e;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/lifecycle/o0;->d:Landroid/os/Bundle;

    invoke-static {v3, v0, p1, v4}, Landroidx/lifecycle/k;->b(Lq0/e;Landroidx/lifecycle/l;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/j0;

    move-result-object p1

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroidx/lifecycle/o0;->b:Landroid/app/Application;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/lifecycle/j0;->i()Landroidx/lifecycle/h0;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v2, p0}, Landroidx/lifecycle/p0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/lifecycle/j0;->i()Landroidx/lifecycle/h0;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v2, p0}, Landroidx/lifecycle/p0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    :goto_2
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, p2, p1}, Landroidx/lifecycle/s0;->a(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
