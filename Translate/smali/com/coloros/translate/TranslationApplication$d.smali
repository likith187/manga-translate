.class public final Lcom/coloros/translate/TranslationApplication$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/base/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/TranslationApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;ILe2/b;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;-><init>()V

    invoke-virtual {p0, p1, p3, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->K(Landroid/app/Activity;Le2/b;I)V

    return-void
.end method

.method public b()Z
    .locals 0

    sget-object p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->a()Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    sget-object p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->b()Z

    move-result p0

    return p0
.end method

.method public d(Landroid/app/Activity;Le2/a;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "functionInstructionCallback"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->O(Landroid/app/Activity;Le2/a;)V

    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/p;->INSTANCE:Lcom/coloros/translate/utils/p;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/p;->e()Z

    move-result p0

    return p0
.end method
