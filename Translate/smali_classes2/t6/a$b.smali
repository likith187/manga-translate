.class Lt6/a$b;
.super Lcom/oplus/epona/ITransferCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/a;->d(Lcom/oplus/epona/f$a;Lcom/oplus/epona/IRemoteTransfer;)V
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

    iput-object p1, p0, Lt6/a$b;->b:Lt6/a;

    iput-object p2, p0, Lt6/a$b;->a:Lcom/oplus/epona/Call$Callback;

    invoke-direct {p0}, Lcom/oplus/epona/ITransferCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .locals 0

    iget-object p0, p0, Lt6/a$b;->a:Lcom/oplus/epona/Call$Callback;

    invoke-interface {p0, p1}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method
