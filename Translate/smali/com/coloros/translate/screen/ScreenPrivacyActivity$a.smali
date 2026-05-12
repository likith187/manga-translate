.class Lcom/coloros/translate/screen/ScreenPrivacyActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/ScreenPrivacyActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/ScreenPrivacyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/ScreenPrivacyActivity$a;->a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ScreenPrivacyActivity"

    const-string v1, "showPrivacyPolicyDialog: doAfterRejected"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenPrivacyActivity$a;->a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v0}, Lcom/coloros/translate/base/a;->c()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPrivacyPolicyDialog: doAfterGranted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenPrivacyActivity"

    invoke-static {v2, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenPrivacyActivity$a;->a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenPrivacyActivity;->h0()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenPrivacyActivity$a;->a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;

    invoke-static {p0}, Lcom/coloros/translate/screen/ScreenPrivacyActivity;->e0(Lcom/coloros/translate/screen/ScreenPrivacyActivity;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
