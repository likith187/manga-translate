.class public final Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/utils/StatementHelperUtil$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->A()Landroid/text/SpannableStringBuilder;
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

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$d;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$d;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->t(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
