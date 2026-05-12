.class public final Lcom/coloros/translate/screen/translate/download/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/download/a;->o(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/translate/screen/translate/download/a;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/coloros/translate/screen/translate/download/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/download/a$g;->b:Lcom/coloros/translate/screen/translate/download/a;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/download/a$g;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadAiData: onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiDownloadManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/download/a$g;->a:Ljava/lang/String;

    const-string v2, "PRIVACY_GUIDE_ERROR"

    const-string v3, "screen_translation"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/coloros/translate/utils/n;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$g;->b:Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/download/a;->f()Lcom/coloros/translate/screen/translate/download/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "privacy_aiunit_guide_error"

    invoke-interface {p1, v0}, Lcom/coloros/translate/screen/translate/download/a$c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a$g;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/a0;->q(Landroid/content/Context;)V

    return-void
.end method

.method public onSwitch(I)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiDownloadManager"

    const-string v2, "downloadAiData: onSwitch"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$g;->b:Lcom/coloros/translate/screen/translate/download/a;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a$g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/screen/translate/download/a;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a$g;->a:Ljava/lang/String;

    const-string v1, "SWITCH_CLOSE"

    const-string v2, "screen_translation"

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/translate/utils/n;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$g;->b:Lcom/coloros/translate/screen/translate/download/a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/download/a;->f()Lcom/coloros/translate/screen/translate/download/a$c;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "privacy_aiunit_guide_switch_close"

    invoke-interface {p1, v0}, Lcom/coloros/translate/screen/translate/download/a$c;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a$g;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/a0;->q(Landroid/content/Context;)V

    return-void
.end method

.method public onUI(I)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "AiDownloadManager"

    const-string v0, "downloadAiData: onUI"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
