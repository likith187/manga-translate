.class public final Lcom/coloros/translate/screen/translate/download/a$e;
.super Lcom/coloros/translate/screen/translate/download/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/download/a;->k(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/coloros/translate/screen/translate/download/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/coloros/translate/screen/translate/download/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    const-string p1, "registerListener"

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/download/a$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    const-string v2, "CANCEL"

    const-string v3, "screen_translation"

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/translate/utils/n;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/download/a;->f()Lcom/coloros/translate/screen/translate/download/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "download_aiunit_cancel"

    invoke-interface {v0, v1}, Lcom/coloros/translate/screen/translate/download/a$c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/download/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public onFail(I)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    const-string v2, "SDK_FAIL"

    const-string v3, "screen_translation"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/coloros/translate/utils/n;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/download/a;->f()Lcom/coloros/translate/screen/translate/download/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "download_aiunit_fail"

    invoke-interface {p1, v0}, Lcom/coloros/translate/screen/translate/download/a$c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/screen/translate/download/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public onInstall()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    const-string v2, "screen_translation"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n;->U(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/download/a;->f()Lcom/coloros/translate/screen/translate/download/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/translate/screen/translate/download/a$c;->b()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/download/a;->l(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(JJZ)V
    .locals 0

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object p2, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    const-string p3, "screen_translation"

    invoke-virtual {p1, p2, p3}, Lcom/coloros/translate/utils/n;->U(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/download/a;->f()Lcom/coloros/translate/screen/translate/download/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/coloros/translate/screen/translate/download/a$c;->b()V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$e;->c:Lcom/coloros/translate/screen/translate/download/a;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a$e;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/screen/translate/download/a;->l(Ljava/lang/String;)V

    return-void
.end method
