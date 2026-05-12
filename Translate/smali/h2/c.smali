.class public final synthetic Lh2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/c;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lh2/c;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0, p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/content/DialogInterface;)V

    return-void
.end method
