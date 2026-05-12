.class public Ll5/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/heytap/epona/a;

.field final synthetic b:Ll5/e;


# direct methods
.method constructor <init>(Ll5/e;Lcom/heytap/epona/a;)V
    .locals 0

    iput-object p1, p0, Ll5/e$b;->b:Ll5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll5/e$b;->a:Lcom/heytap/epona/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ll5/e$b;->b:Ll5/e;

    iget-object v2, p0, Ll5/e$b;->a:Lcom/heytap/epona/a;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ll5/e;->a(Ll5/e;Lcom/heytap/epona/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ll5/e$b;->b:Ll5/e;

    invoke-static {v0}, Ll5/e;->b(Ll5/e;)Lcom/heytap/epona/h;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/heytap/epona/h;->f(Ll5/e$b;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "RealCall"

    const-string v3, "AsyncCall run failed and exception is %s"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Ll5/e$b;->a:Lcom/heytap/epona/a;

    invoke-static {}, Lcom/heytap/epona/Response;->b()Lcom/heytap/epona/Response;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/heytap/epona/a;->onReceive(Lcom/heytap/epona/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Ll5/e$b;->b:Ll5/e;

    invoke-static {v1}, Ll5/e;->b(Ll5/e;)Lcom/heytap/epona/h;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/heytap/epona/h;->f(Ll5/e$b;Z)V

    :goto_0
    return-void

    :goto_1
    iget-object v2, p0, Ll5/e$b;->b:Ll5/e;

    invoke-static {v2}, Ll5/e;->b(Ll5/e;)Lcom/heytap/epona/h;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/heytap/epona/h;->f(Ll5/e$b;Z)V

    throw v1
.end method
