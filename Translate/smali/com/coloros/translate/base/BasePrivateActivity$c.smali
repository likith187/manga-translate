.class public final Lcom/coloros/translate/base/BasePrivateActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/base/BasePrivateActivity;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/base/BasePrivateActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/base/BasePrivateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/base/BasePrivateActivity$c;->a:Lcom/coloros/translate/base/BasePrivateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BasePrivateActivity$c;->a:Lcom/coloros/translate/base/BasePrivateActivity;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->finish()V

    return-void
.end method

.method public b()V
    .locals 9

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BasePrivateActivity"

    const-string v2, "doAfterGranted"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/base/BasePrivateActivity$c;->a:Lcom/coloros/translate/base/BasePrivateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/base/BasePrivateActivity;->F0(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/coloros/translate/base/BasePrivateActivity$c;->a:Lcom/coloros/translate/base/BasePrivateActivity;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->A0()V

    sget-object v0, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    sget-object p0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const-string v2, "event_start_translate_app"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/base/BasePrivateActivity$c;->a:Lcom/coloros/translate/base/BasePrivateActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
