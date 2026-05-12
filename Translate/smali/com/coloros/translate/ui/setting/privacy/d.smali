.class public final synthetic Lcom/coloros/translate/ui/setting/privacy/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/privacy/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/translate/ui/setting/privacy/d;->b:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/setting/privacy/d;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/privacy/d;->b:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;->a(Landroid/content/Context;Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
