.class public final Lcom/coloros/translate/EarPhoneTranslateService$c;
.super Lcom/coloros/translate/engine/IEarControlBtnCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/EarPhoneTranslateService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/EarPhoneTranslateService;


# direct methods
.method constructor <init>(Lcom/coloros/translate/EarPhoneTranslateService;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/EarPhoneTranslateService$c;->a:Lcom/coloros/translate/EarPhoneTranslateService;

    invoke-direct {p0}, Lcom/coloros/translate/engine/IEarControlBtnCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/EarPhoneTranslateService$c;->a:Lcom/coloros/translate/EarPhoneTranslateService;

    sget-object v1, Lm2/a;->INSTANCE:Lm2/a;

    invoke-virtual {v1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/coloros/translate/EarPhoneTranslateService;->d(Lcom/coloros/translate/EarPhoneTranslateService;I)V

    iget-object v0, p0, Lcom/coloros/translate/EarPhoneTranslateService$c;->a:Lcom/coloros/translate/EarPhoneTranslateService;

    invoke-virtual {v1}, Lm2/a;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/translate/EarPhoneTranslateService;->e(Lcom/coloros/translate/EarPhoneTranslateService;I)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/EarPhoneTranslateService$c;->a:Lcom/coloros/translate/EarPhoneTranslateService;

    invoke-static {v0}, Lcom/coloros/translate/EarPhoneTranslateService;->b(Lcom/coloros/translate/EarPhoneTranslateService;)I

    move-result v0

    iget-object p0, p0, Lcom/coloros/translate/EarPhoneTranslateService$c;->a:Lcom/coloros/translate/EarPhoneTranslateService;

    invoke-static {p0}, Lcom/coloros/translate/EarPhoneTranslateService;->c(Lcom/coloros/translate/EarPhoneTranslateService;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "earBtnCallback playBtnStatusResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " playBtnStatusResultCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EarPhoneTranslateService"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
