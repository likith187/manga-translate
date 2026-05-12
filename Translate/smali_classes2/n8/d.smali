.class final Ln8/d;
.super Ln8/c;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;


# instance fields
.field private a:Lw8/q;

.field private b:Ljava/lang/Object;

.field private c:Lkotlin/coroutines/d;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lw8/q;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ln8/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ln8/d;->a:Lw8/q;

    iput-object p2, p0, Ln8/d;->b:Ljava/lang/Object;

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p0, Ln8/d;->c:Lkotlin/coroutines/d;

    invoke-static {}, Ln8/b;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ln8/d;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ln8/d;->c:Lkotlin/coroutines/d;

    iput-object p1, p0, Ln8/d;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_0
    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Ln8/d;->f:Ljava/lang/Object;

    iget-object v1, p0, Ln8/d;->c:Lkotlin/coroutines/d;

    if-nez v1, :cond_1

    invoke-static {v0}, Ln8/s;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-static {}, Ln8/b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Ln8/r;->equals-impl0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v0, p0, Ln8/d;->a:Lw8/q;

    iget-object v2, p0, Ln8/d;->b:Ljava/lang/Object;

    instance-of v3, v0, Lkotlin/coroutines/jvm/internal/a;

    if-nez v3, :cond_2

    invoke-static {v0, p0, v2, v1}, Lkotlin/coroutines/intrinsics/b;->e(Lw8/q;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw8/q;

    invoke-interface {v0, p0, v2, v1}, Lw8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ln8/b;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ln8/d;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getContext()Lkotlin/coroutines/g;
    .locals 0

    sget-object p0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ln8/d;->c:Lkotlin/coroutines/d;

    iput-object p1, p0, Ln8/d;->f:Ljava/lang/Object;

    return-void
.end method
