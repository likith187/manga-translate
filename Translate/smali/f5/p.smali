.class public final synthetic Lf5/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Callable;

.field public final synthetic b:Lw3/j;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Lw3/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/p;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lf5/p;->b:Lw3/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lf5/p;->a:Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lf5/p;->b:Lw3/j;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lb5/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Lw3/j;->c(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lb5/a;

    const-string v2, "Internal error has occurred when executing ML Kit tasks"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v0}, Lb5/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lw3/j;->b(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lw3/j;->b(Ljava/lang/Exception;)V

    return-void
.end method
