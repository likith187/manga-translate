.class public Lr6/b;
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

    check-cast p1, Lcom/heytap/epona/Response;

    invoke-virtual {p0, p1}, Lr6/b;->b(Lcom/heytap/epona/Response;)Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/heytap/epona/Response;)Lcom/oplus/epona/Response;
    .locals 0

    invoke-virtual {p1}, Lcom/heytap/epona/Response;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/heytap/epona/Response;->d()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Response;->f(Landroid/os/Bundle;)Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    const-class p0, Ljava/lang/Exception;

    invoke-virtual {p1, p0}, Lcom/heytap/epona/Response;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/heytap/epona/Response;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Response;->c(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/oplus/epona/Response;->b(Ljava/lang/Exception;)Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0
.end method
