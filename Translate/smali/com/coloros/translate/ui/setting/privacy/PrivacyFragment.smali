.class public final Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;
.super Lcom/coloros/translate/base/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$a;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private final c:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->f:Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePreferenceFragment;-><init>()V

    new-instance v0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment$b;-><init>(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->c:Ln8/j;

    return-void
.end method

.method private static final A(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->d(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final B(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->y()Lcom/coloros/translate/widget/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/widget/f;->a()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final C(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    new-instance p0, Landroid/content/Intent;

    const-string v0, "oplus.intent.action.GLOBAL_TRANSLATION"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_exit"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryExitScreenTranslate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivacyFragment"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->A(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->B(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->z(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic t(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->x(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic u(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)Lcom/coui/appcompat/preference/COUIJumpPreference;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->b:Lcom/coui/appcompat/preference/COUIJumpPreference;

    return-object p0
.end method

.method public static final synthetic v(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic w(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->C(Landroid/content/Context;)V

    return-void
.end method

.method private final x(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/coloros/translate/TranslationApplication;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coloros/translate/TranslationApplication;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication;->b()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_1
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishCurrentAppActivities failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PrivacyFragment"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method private final y()Lcom/coloros/translate/widget/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/widget/f;

    return-object p0
.end method

.method private static final z(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->c(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/R$string;->privacy:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    sget p1, Lcom/coloros/translate/R$xml;->privacy:I

    invoke-virtual {p0, p1}, Landroidx/preference/g;->addPreferencesFromResource(I)V

    const-string p1, "personal_info_protection_policy"

    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string p2, "trans_user_protocol"

    invoke-virtual {p0, p2}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/preference/COUIJumpPreference;

    const-string v0, "cancel_personal_info_protection_policy"

    invoke-virtual {p0, v0}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->b:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/coloros/translate/ui/setting/privacy/a;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/privacy/a;-><init>(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/coloros/translate/ui/setting/privacy/b;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/setting/privacy/b;-><init>(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_1
    sget-object p1, Lcom/coloros/translate/utils/p;->INSTANCE:Lcom/coloros/translate/utils/p;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/p;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->b:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "show_privacy_policy_alert_new"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->b:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->b:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;->a:Ljava/lang/Integer;

    sget p2, Lcom/support/preference/R$layout;->coui_preference_red:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p2, Lcom/coloros/translate/ui/setting/privacy/c;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/setting/privacy/c;-><init>(Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_5
    :goto_1
    return-void
.end method
