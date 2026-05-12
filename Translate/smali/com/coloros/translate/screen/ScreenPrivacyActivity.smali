.class public Lcom/coloros/translate/screen/ScreenPrivacyActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic e0(Lcom/coloros/translate/screen/ScreenPrivacyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/ScreenPrivacyActivity;->f0()V

    return-void
.end method

.method private f0()V
    .locals 3

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/utils/c;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/screen/ScreenTranslationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error on start service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenPrivacyActivity"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public g0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    new-instance v1, Lcom/coloros/translate/screen/ScreenPrivacyActivity$a;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/ScreenPrivacyActivity$a;-><init>(Lcom/coloros/translate/screen/ScreenPrivacyActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/coloros/translate/base/a;->a(Landroid/app/Activity;ILe2/b;)V

    return-void
.end method

.method public h0()V
    .locals 2

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    new-instance v1, Lcom/coloros/translate/screen/ScreenPrivacyActivity$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/ScreenPrivacyActivity$b;-><init>(Lcom/coloros/translate/screen/ScreenPrivacyActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/base/a;->d(Landroid/app/Activity;Le2/a;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    sget-object p1, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {p1}, Lcom/coloros/translate/base/a;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/base/a;->c()Z

    move-result p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenPrivacyActivity;->g0()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/screen/ScreenPrivacyActivity;->h0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "ScreenPrivacyActivity"

    const-string v1, "ScreenPrivacyActivity onDestroy"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/a0;->s(Landroid/content/Context;)V

    return-void
.end method
