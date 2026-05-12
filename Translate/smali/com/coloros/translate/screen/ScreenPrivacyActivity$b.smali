.class Lcom/coloros/translate/screen/ScreenPrivacyActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/ScreenPrivacyActivity;->h0()V
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

    iput-object p1, p0, Lcom/coloros/translate/screen/ScreenPrivacyActivity$b;->a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ScreenPrivacyActivity"

    const-string v1, "showScreenTranslationFunctionInstruction:doAfterRejected"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenPrivacyActivity$b;->a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ScreenPrivacyActivity"

    const-string v1, "showScreenTranslationFunctionInstruction:doAfterGranted"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenPrivacyActivity$b;->a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;

    invoke-static {p0}, Lcom/coloros/translate/screen/ScreenPrivacyActivity;->e0(Lcom/coloros/translate/screen/ScreenPrivacyActivity;)V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "ScreenPrivacyActivity"

    const-string v1, "showScreenTranslationFunctionInstruction:doAfterReturn"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenPrivacyActivity$b;->a:Lcom/coloros/translate/screen/ScreenPrivacyActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
