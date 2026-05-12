.class public final Lcom/coloros/translate/ui/setting/privacy/PrivacyActivity;
.super Lcom/coloros/translate/base/BaseSettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/setting/privacy/PrivacyActivity$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/coloros/translate/ui/setting/privacy/PrivacyActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/setting/privacy/PrivacyActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/setting/privacy/PrivacyActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/setting/privacy/PrivacyActivity;->b:Lcom/coloros/translate/ui/setting/privacy/PrivacyActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseSettingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/coloros/translate/R$layout;->activity_setting_privacy:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object p0

    sget p1, Lcom/coloros/translate/R$id;->privacy_content_view:I

    new-instance v0, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;

    invoke-direct {v0}, Lcom/coloros/translate/ui/setting/privacy/PrivacyFragment;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/z;->q(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/z;->h()I

    return-void
.end method
