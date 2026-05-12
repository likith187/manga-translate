.class public Lr6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr6/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/oplus/epona/Request;

    invoke-virtual {p0, p1}, Lr6/c;->b(Lcom/oplus/epona/Request;)Lcom/heytap/epona/Request;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/oplus/epona/Request;)Lcom/heytap/epona/Request;
    .locals 1

    new-instance p0, Lcom/heytap/epona/Request$b;

    invoke-direct {p0}, Lcom/heytap/epona/Request$b;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heytap/epona/Request$b;->c(Ljava/lang/String;)Lcom/heytap/epona/Request$b;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heytap/epona/Request$b;->b(Ljava/lang/String;)Lcom/heytap/epona/Request$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/heytap/epona/Request$b;->a()Lcom/heytap/epona/Request;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/heytap/epona/Request;->c(Landroid/os/Bundle;)V

    return-object p0
.end method
