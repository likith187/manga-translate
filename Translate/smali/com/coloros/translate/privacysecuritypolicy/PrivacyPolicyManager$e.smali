.class public final Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/utils/StatementHelperUtil$a;


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

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->w(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->t(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v2, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {v2, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    invoke-static {v0, v1, v2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->y(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/app/Activity;Le2/a;)V

    return-void
.end method
