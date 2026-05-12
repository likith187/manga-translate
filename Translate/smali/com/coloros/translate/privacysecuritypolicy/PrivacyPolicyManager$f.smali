.class public final Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$f;
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
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$f;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->c(Landroid/content/Context;)V

    return-void
.end method
