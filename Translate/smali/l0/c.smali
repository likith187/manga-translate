.class public final Ll0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/lifecycle/w0;

.field private final b:Landroidx/lifecycle/u0$c;

.field private final c:Ll0/a;

.field private final d:Lm0/f;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;Ll0/a;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/c;->a:Landroidx/lifecycle/w0;

    iput-object p2, p0, Ll0/c;->b:Landroidx/lifecycle/u0$c;

    iput-object p3, p0, Ll0/c;->c:Ll0/a;

    new-instance p1, Lm0/f;

    invoke-direct {p1}, Lm0/f;-><init>()V

    iput-object p1, p0, Ll0/c;->d:Lm0/f;

    return-void
.end method

.method public static final synthetic a(Ll0/c;)Ll0/a;
    .locals 0

    iget-object p0, p0, Ll0/c;->c:Ll0/a;

    return-object p0
.end method

.method public static final synthetic b(Ll0/c;)Landroidx/lifecycle/u0$c;
    .locals 0

    iget-object p0, p0, Ll0/c;->b:Landroidx/lifecycle/u0$c;

    return-object p0
.end method

.method public static final synthetic c(Ll0/c;)Landroidx/lifecycle/w0;
    .locals 0

    iget-object p0, p0, Ll0/c;->a:Landroidx/lifecycle/w0;

    return-object p0
.end method

.method public static synthetic e(Ll0/c;Lc9/c;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/s0;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lm0/h;->INSTANCE:Lm0/h;

    invoke-virtual {p2, p1}, Lm0/h;->c(Lc9/c;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Ll0/c;->d(Lc9/c;Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lc9/c;Ljava/lang/String;)Landroidx/lifecycle/s0;
    .locals 3

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll0/c;->d:Lm0/f;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ll0/c;->c(Ll0/c;)Landroidx/lifecycle/w0;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/lifecycle/w0;->b(Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object v1

    invoke-interface {p1, v1}, Lc9/c;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Ll0/c;->b(Ll0/c;)Landroidx/lifecycle/u0$c;

    move-result-object p1

    instance-of p1, p1, Landroidx/lifecycle/u0$e;

    if-eqz p1, :cond_0

    invoke-static {p0}, Ll0/c;->b(Ll0/c;)Landroidx/lifecycle/u0$c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/u0$e;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/u0$e;->d(Landroidx/lifecycle/s0;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const-string p0, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ll0/b;

    invoke-static {p0}, Ll0/c;->a(Ll0/c;)Ll0/a;

    move-result-object v2

    invoke-direct {v1, v2}, Ll0/b;-><init>(Ll0/a;)V

    sget-object v2, Landroidx/lifecycle/u0;->c:Ll0/a$c;

    invoke-virtual {v1, v2, p2}, Ll0/b;->c(Ll0/a$c;Ljava/lang/Object;)V

    invoke-static {p0}, Ll0/c;->b(Ll0/c;)Landroidx/lifecycle/u0$c;

    move-result-object v2

    invoke-static {v2, p1, v1}, Ll0/d;->a(Landroidx/lifecycle/u0$c;Lc9/c;Ll0/a;)Landroidx/lifecycle/s0;

    move-result-object v1

    invoke-static {p0}, Ll0/c;->c(Ll0/c;)Landroidx/lifecycle/w0;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Landroidx/lifecycle/w0;->d(Ljava/lang/String;Landroidx/lifecycle/s0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p0
.end method
