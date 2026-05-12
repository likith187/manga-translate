.class public final synthetic Lh2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

.field public final synthetic b:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/i;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    iput-object p2, p0, Lh2/i;->b:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lh2/i;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    iget-object p0, p0, Lh2/i;->b:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V

    return-void
.end method
