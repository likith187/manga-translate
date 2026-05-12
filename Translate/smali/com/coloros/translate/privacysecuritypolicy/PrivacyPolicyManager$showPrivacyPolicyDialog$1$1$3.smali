.class public final Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;


# direct methods
.method constructor <init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomButtonClick()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "show_privacy_policy_alert_new"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->w(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->v(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Le2/b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Le2/b;->b()V

    :cond_1
    return-void
.end method

.method public onExitButtonClick()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->w(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->u(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->v(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Le2/b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Le2/b;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->t(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v2, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3$a;

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {v2, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3$a;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->T(Landroid/app/Activity;Le2/a;)V

    return-void
.end method
