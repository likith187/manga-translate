.class Lcom/airbnb/lottie/p0$a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/p0;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/p0;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/p0$a;->a:Lcom/airbnb/lottie/p0;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/p0$a;->a:Lcom/airbnb/lottie/p0;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/n0;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/p0;->b(Lcom/airbnb/lottie/p0;Lcom/airbnb/lottie/n0;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/airbnb/lottie/p0$a;->a:Lcom/airbnb/lottie/p0;

    new-instance v1, Lcom/airbnb/lottie/n0;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/n0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v1}, Lcom/airbnb/lottie/p0;->b(Lcom/airbnb/lottie/p0;Lcom/airbnb/lottie/n0;)V

    :goto_0
    return-void
.end method
