.class Lt6/a$a;
.super Lcom/heytap/epona/ITransferCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/a;->c(Lcom/oplus/epona/f$a;Lcom/heytap/epona/IRemoteTransfer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/epona/Call$Callback;

.field final synthetic b:Lt6/a;


# direct methods
.method constructor <init>(Lt6/a;Lcom/oplus/epona/Call$Callback;)V
    .locals 0

    iput-object p1, p0, Lt6/a$a;->b:Lt6/a;

    iput-object p2, p0, Lt6/a$a;->a:Lcom/oplus/epona/Call$Callback;

    invoke-direct {p0}, Lcom/heytap/epona/ITransferCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 1

    iget-object v0, p0, Lt6/a$a;->a:Lcom/oplus/epona/Call$Callback;

    iget-object p0, p0, Lt6/a$a;->b:Lt6/a;

    invoke-static {p0}, Lt6/a;->b(Lt6/a;)Lr6/a;

    move-result-object p0

    invoke-interface {p0, p1}, Lr6/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/Response;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method
