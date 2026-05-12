.class public final Lcom/coloros/translate/ui/setting/about/AboutUsFragment;
.super Lcom/coloros/translate/base/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/setting/about/AboutUsFragment$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/translate/ui/setting/about/AboutUsFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/setting/about/AboutUsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/setting/about/AboutUsFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/setting/about/AboutUsFragment;->a:Lcom/coloros/translate/ui/setting/about/AboutUsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method public static synthetic q(Lcom/coloros/translate/ui/setting/about/AboutUsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/about/AboutUsFragment;->r(Lcom/coloros/translate/ui/setting/about/AboutUsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private static final r(Lcom/coloros/translate/ui/setting/about/AboutUsFragment;Landroidx/preference/Preference;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/R$string;->about_translation:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    sget p1, Lcom/coloros/translate/R$xml;->about_us:I

    invoke-virtual {p0, p1}, Landroidx/preference/g;->addPreferencesFromResource(I)V

    const-string p1, "app_info"

    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p2}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/coloros/translate/base/R$drawable;->ic_app_launcher:I

    invoke-static {p2, v0}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/coloros/translate/R$string;->app_name_new:I

    invoke-static {p2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->setAppName(Ljava/lang/String;)V

    sget p2, Lcom/coloros/translate/R$string;->version:I

    invoke-static {p2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "16.0.26"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->setAppVersion(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/preference/COUIPreference;->setShowDivider(Z)V

    :cond_0
    const-string p1, "open_source"

    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz p1, :cond_1

    new-instance p2, Ln2/a;

    invoke-direct {p2, p0}, Ln2/a;-><init>(Lcom/coloros/translate/ui/setting/about/AboutUsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_1
    return-void
.end method
