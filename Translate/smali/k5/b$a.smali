.class Lk5/b$a;
.super Lcom/heytap/epona/ITransferCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/b;->a(Lcom/heytap/epona/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heytap/epona/Request;

.field final synthetic b:Lcom/heytap/epona/a;

.field final synthetic c:Lk5/b;


# direct methods
.method constructor <init>(Lk5/b;Lcom/heytap/epona/Request;Lcom/heytap/epona/a;)V
    .locals 0

    iput-object p1, p0, Lk5/b$a;->c:Lk5/b;

    iput-object p2, p0, Lk5/b$a;->a:Lcom/heytap/epona/Request;

    iput-object p3, p0, Lk5/b$a;->b:Lcom/heytap/epona/a;

    invoke-direct {p0}, Lcom/heytap/epona/ITransferCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 3

    iget-object v0, p0, Lk5/b$a;->a:Lcom/heytap/epona/Request;

    invoke-virtual {v0}, Lcom/heytap/epona/Request;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk5/b$a;->a:Lcom/heytap/epona/Request;

    invoke-virtual {v1}, Lcom/heytap/epona/Request;->a()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CallIPCComponentInterceptor"

    const-string v2, "Component(%s).Action(%s) response : %s"

    invoke-static {v1, v2, v0}, Lq5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lk5/b$a;->b:Lcom/heytap/epona/a;

    invoke-interface {p0, p1}, Lcom/heytap/epona/a;->onReceive(Lcom/heytap/epona/Response;)V

    return-void
.end method
