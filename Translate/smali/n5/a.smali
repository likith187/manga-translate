.class public final synthetic Ln5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/epona/a;


# instance fields
.field public final synthetic a:Lcom/heytap/epona/ITransferCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/epona/ITransferCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/a;->a:Lcom/heytap/epona/ITransferCallback;

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/heytap/epona/Response;)V
    .locals 0

    iget-object p0, p0, Ln5/a;->a:Lcom/heytap/epona/ITransferCallback;

    invoke-static {p0, p1}, Ln5/c;->b(Lcom/heytap/epona/ITransferCallback;Lcom/heytap/epona/Response;)V

    return-void
.end method
