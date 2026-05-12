.class Lcom/coloros/translate/screen/ScreenTranslationService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/download/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/ScreenTranslationService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/coloros/translate/screen/ScreenTranslationService;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/ScreenTranslationService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/ScreenTranslationService$a;->b:Lcom/coloros/translate/screen/ScreenTranslationService;

    iput-object p2, p0, Lcom/coloros/translate/screen/ScreenTranslationService$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/screen/ScreenTranslationService$a;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/ScreenTranslationService$a;->d(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic d(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService$a;->b:Lcom/coloros/translate/screen/ScreenTranslationService;

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/ScreenTranslationService;->f(Lcom/coloros/translate/screen/ScreenTranslationService;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService$a;->b:Lcom/coloros/translate/screen/ScreenTranslationService;

    invoke-static {v0}, Lcom/coloros/translate/screen/ScreenTranslationService;->e(Lcom/coloros/translate/screen/ScreenTranslationService;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "ScreenTranslationService"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadFail: service is die, ignore"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFail errorMessage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "download_aiunit_scene_data_is_null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Lcom/coloros/translate/screen/R$string;->plugin_down_fail:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u;->b(I)V

    goto :goto_0

    :cond_1
    const-string v0, "download_aiunit_not_support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/coloros/translate/screen/R$string;->plugin_down_fail:I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u;->b(I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService$a;->b:Lcom/coloros/translate/screen/ScreenTranslationService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService$a;->b:Lcom/coloros/translate/screen/ScreenTranslationService;

    invoke-static {v0}, Lcom/coloros/translate/screen/ScreenTranslationService;->e(Lcom/coloros/translate/screen/ScreenTranslationService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "ScreenTranslationService"

    const-string v0, "downloadSuccess: service is die, ignore"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService$a;->b:Lcom/coloros/translate/screen/ScreenTranslationService;

    invoke-static {v0}, Lcom/coloros/translate/screen/ScreenTranslationService;->e(Lcom/coloros/translate/screen/ScreenTranslationService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/ScreenTranslationService$a;->a:Landroid/content/Intent;

    new-instance v2, Lcom/coloros/translate/screen/d;

    invoke-direct {v2, p0, v1}, Lcom/coloros/translate/screen/d;-><init>(Lcom/coloros/translate/screen/ScreenTranslationService$a;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
