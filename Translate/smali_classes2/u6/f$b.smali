.class public Lu6/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/oplus/epona/Call$Callback;

.field final synthetic b:Lu6/f;


# direct methods
.method constructor <init>(Lu6/f;Lcom/oplus/epona/Call$Callback;)V
    .locals 0

    iput-object p1, p0, Lu6/f$b;->b:Lu6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu6/f$b;->a:Lcom/oplus/epona/Call$Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lu6/f$b;->b:Lu6/f;

    iget-object v2, p0, Lu6/f$b;->a:Lcom/oplus/epona/Call$Callback;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lu6/f;->a(Lu6/f;Lcom/oplus/epona/Call$Callback;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lu6/f$b;->b:Lu6/f;

    invoke-static {v0}, Lu6/f;->b(Lu6/f;)Lcom/oplus/epona/k;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/oplus/epona/k;->f(Lu6/f$b;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Epona->RealCall"

    const-string v3, "AsyncCall run failed and exception is %s"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lu6/f$b;->a:Lcom/oplus/epona/Call$Callback;

    invoke-static {}, Lcom/oplus/epona/Response;->a()Lcom/oplus/epona/Response;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lu6/f$b;->b:Lu6/f;

    invoke-static {v1}, Lu6/f;->b(Lu6/f;)Lcom/oplus/epona/k;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/oplus/epona/k;->f(Lu6/f$b;Z)V

    :goto_0
    return-void

    :goto_1
    iget-object v2, p0, Lu6/f$b;->b:Lu6/f;

    invoke-static {v2}, Lu6/f;->b(Lu6/f;)Lcom/oplus/epona/k;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/oplus/epona/k;->f(Lu6/f$b;Z)V

    throw v1
.end method
