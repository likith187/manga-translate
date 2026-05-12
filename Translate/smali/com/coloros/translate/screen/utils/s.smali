.class public abstract Lcom/coloros/translate/screen/utils/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lw8/a;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/s;->c(Lw8/a;)V

    return-void
.end method

.method public static final b(Lw8/a;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/utils/q;->INSTANCE:Lcom/coloros/translate/screen/utils/q;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/utils/q;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/screen/utils/r;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/utils/r;-><init>(Lw8/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final c(Lw8/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method
