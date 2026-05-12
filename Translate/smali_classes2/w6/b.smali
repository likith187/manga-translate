.class public final synthetic Lw6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# instance fields
.field public final synthetic a:Lcom/oplus/epona/ITransferCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/epona/ITransferCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw6/b;->a:Lcom/oplus/epona/ITransferCallback;

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/oplus/epona/Response;)V
    .locals 0

    iget-object p0, p0, Lw6/b;->a:Lcom/oplus/epona/ITransferCallback;

    invoke-static {p0, p1}, Lw6/c;->a(Lcom/oplus/epona/ITransferCallback;Lcom/oplus/epona/Response;)V

    return-void
.end method
