.class public final synthetic Lh2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

.field public final synthetic b:Le2/a;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/t;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    iput-object p2, p0, Lh2/t;->b:Le2/a;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lh2/t;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    iget-object p0, p0, Lh2/t;->b:Le2/a;

    invoke-static {v0, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->h(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    return-void
.end method
