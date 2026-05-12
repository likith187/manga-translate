.class public final Lcom/coloros/translate/ui/setting/SettingFragment;
.super Lcom/coloros/translate/base/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/setting/SettingFragment$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/coloros/translate/ui/setting/SettingFragment$a;


# instance fields
.field private a:Lcom/coloros/translate/ui/setting/CustomTTsPreference;

.field private b:Lcom/coui/appcompat/preference/COUIPreference;

.field private c:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

.field private f:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

.field private h:Ljava/lang/String;

.field private final i:Ln8/j;

.field private j:Z

.field private k:Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/setting/SettingFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/setting/SettingFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/setting/SettingFragment;->l:Lcom/coloros/translate/ui/setting/SettingFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePreferenceFragment;-><init>()V

    const-string v0, "female"

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    sget-object v0, Lcom/coloros/translate/ui/setting/SettingFragment$d;->INSTANCE:Lcom/coloros/translate/ui/setting/SettingFragment$d;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->i:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/setting/SettingFragment$e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/SettingFragment$e;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->k:Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/ui/setting/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->N()V

    return-void
.end method

.method public static final synthetic B(Lcom/coloros/translate/ui/setting/SettingFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->j:Z

    return-void
.end method

.method private final C()Lcom/coloros/translate/repository/remote/TtsEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->i:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    return-object p0
.end method

.method private final D()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "broadcast_timbre"

    const-string v2, "female"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    const-string v0, "broadcast_timbre"

    invoke-virtual {p0, v0}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreference;

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->b:Lcom/coui/appcompat/preference/COUIPreference;

    const-string v0, "timbre_female"

    invoke-virtual {p0, v0}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->f:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMarkPreference;->setBorderRectRadius(I)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->f:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/coloros/translate/ui/setting/g;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/setting/g;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->f:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/coloros/translate/ui/setting/h;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/setting/h;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_2
    const-string v0, "timbre_male"

    invoke-virtual {p0, v0}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->c:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUIMarkPreference;->setBorderRectRadius(I)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->c:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/coloros/translate/ui/setting/i;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/setting/i;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->c:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/coloros/translate/ui/setting/j;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/setting/j;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->f:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    const-string v2, "female"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->c:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    const-string v2, "male"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->P()V

    return-void
.end method

.method private static final E(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    const-string p2, "female"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "male"

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->f:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->P()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->N()V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->j:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->O()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->N()V

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static final F(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->c:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    const/4 p1, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return p1
.end method

.method private static final G(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    const-string p2, "male"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "female"

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->c:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->P()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->N()V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->j:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->O()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->N()V

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static final H(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->f:Lcom/coloros/translate/ui/setting/CustomMarkPreference;

    const/4 p1, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return p1
.end method

.method private static final I(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->r()V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "oplus.intent.action.TRANSLATE_DOWNLOADS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "extra_from_package"

    const-string v1, "com.coloros.translate"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

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

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingFragment"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v3
.end method

.method private static final J(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/coloros/translate/ui/setting/about/AboutUsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v3
.end method

.method private static final K(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "requireContext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/utils/r;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final L(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "requireContext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/utils/r;->b(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final M(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/coloros/translate/ui/setting/privacy/PrivacyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v3
.end method

.method private final N()V
    .locals 13

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->j:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play text : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingFragment"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->O()V

    new-instance v0, Lcom/coloros/translate/ui/setting/SettingFragment$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/SettingFragment$b;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    const-wide/16 v1, 0x64

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->c(JLw8/a;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->C()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    new-instance v12, Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v2, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    sget-object v1, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/coloros/translate/ui/setting/SettingFragment$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/setting/SettingFragment$c;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Thank you for using Translate! Enjoy the robust translation services we offer."

    invoke-virtual {v0, v2, v12, v1, p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final O()V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->C()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    :cond_0
    return-void
.end method

.method private final P()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->b:Lcom/coui/appcompat/preference/COUIPreference;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    const-string v2, "male"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$string;->broadcast_timbre_tip_new:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public static synthetic q(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/setting/SettingFragment;->G(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingFragment;->K(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingFragment;->I(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingFragment;->J(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingFragment;->H(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/setting/SettingFragment;->E(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingFragment;->M(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingFragment;->L(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingFragment;->F(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic z(Lcom/coloros/translate/ui/setting/SettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->j:Z

    return p0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/R$string;->ai_btn:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    sget p1, Lcom/coloros/translate/R$xml;->setting_main:I

    invoke-virtual {p0, p1}, Landroidx/preference/g;->addPreferencesFromResource(I)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "SettingFragment"

    const-string v0, "onCreatePreferences"

    invoke-virtual {p1, p2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version_code"

    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIPreference;

    if-eqz p1, :cond_0

    const-string p2, "16.0.26"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p1, "abouts_us"

    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIPreference;

    const-string p2, "collect_personal_info_list"

    invoke-virtual {p0, p2}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/preference/COUIPreference;

    const-string v0, "third_party_info_list"

    invoke-virtual {p0, v0}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIPreference;

    const-string v1, "download_offline_package"

    invoke-virtual {p0, v1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/preference/COUIPreference;

    const-string v2, "privacy"

    invoke-virtual {p0, v2}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/preference/COUIPreference;

    const-string v3, "play_speed"

    invoke-virtual {p0, v3}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/setting/CustomTTsPreference;

    iput-object v3, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->a:Lcom/coloros/translate/ui/setting/CustomTTsPreference;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->k:Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;

    invoke-virtual {v3, v4}, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->k(Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;)V

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->D()V

    if-eqz v1, :cond_2

    new-instance v3, Lcom/coloros/translate/ui/setting/b;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/setting/b;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Lcom/coloros/translate/ui/setting/c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/setting/c;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_3
    sget-object p1, Lcom/coloros/translate/utils/p;->INSTANCE:Lcom/coloros/translate/utils/p;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/p;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    if-eqz p2, :cond_6

    new-instance p1, Lcom/coloros/translate/ui/setting/d;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/setting/d;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_6
    if-eqz v0, :cond_7

    new-instance p1, Lcom/coloros/translate/ui/setting/e;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/setting/e;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_7
    if-eqz v2, :cond_8

    new-instance p1, Lcom/coloros/translate/ui/setting/f;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/setting/f;-><init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_8
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-object p0
.end method

.method public onStop()V
    .locals 10

    invoke-super {p0}, Landroidx/preference/g;->onStop()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SettingFragment"

    const-string v2, "onStop save chosenTimbre and stopTTS"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    iget-object v5, p0, Lcom/coloros/translate/ui/setting/SettingFragment;->h:Ljava/lang/String;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v4, "broadcast_timbre"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingFragment;->O()V

    return-void
.end method
