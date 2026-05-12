.class final Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;->this$0:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;->invoke$lambda$2$lambda$1(Landroid/content/Context;Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1(Landroid/content/Context;Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "$it"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p3, "PrivacyFragment"

    const-string v0, "mCancelProtectionPolicyDialog, cancel protection policy"

    invoke-virtual {p2, p3, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/x;->o(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/engine/offline/x;->E()V

    invoke-static {p1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->u(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)Lcom/coui/appcompat/preference/COUIJumpPreference;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->v(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    invoke-static {p1, p0}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->w(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroid/content/Context;)V

    invoke-static {p1, p0}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->t(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroid/content/Context;)V

    sget-object p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->e()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/widget/f;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;->this$0:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;->this$0:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;

    .line 3
    new-instance v1, Lcom/coloros/translate/widget/f;

    .line 4
    new-instance v2, Lcom/coloros/translate/ui/setting/privacy/d;

    invoke-direct {v2, v0, p0}, Lcom/coloros/translate/ui/setting/privacy/d;-><init>(Landroid/content/Context;Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)V

    .line 5
    invoke-direct {v1, v0, v2}, Lcom/coloros/translate/widget/f;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;->invoke()Lcom/coloros/translate/widget/f;

    move-result-object p0

    return-object p0
.end method
