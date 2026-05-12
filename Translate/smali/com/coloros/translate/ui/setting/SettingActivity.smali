.class public final Lcom/coloros/translate/ui/setting/SettingActivity;
.super Lcom/coloros/translate/base/BasePrivateActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/setting/SettingActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BasePrivateActivity<",
        "Lcom/coloros/translate/base/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final u:Lcom/coloros/translate/ui/setting/SettingActivity$a;


# instance fields
.field private t:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/setting/SettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/setting/SettingActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/setting/SettingActivity;->u:Lcom/coloros/translate/ui/setting/SettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePrivateActivity;-><init>()V

    return-void
.end method

.method public static synthetic K0(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingActivity;->M0(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method private final L0()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingActivity;->t:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const-string p0, "containerView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance v0, Lcom/coloros/translate/ui/setting/a;

    invoke-direct {v0}, Lcom/coloros/translate/ui/setting/a;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    return-void
.end method

.method private static final M0(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 4

    invoke-static {}, Landroidx/core/view/a1$m;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object v0

    iget v0, v0, Lu/e;->d:I

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupWindowInsets navigationBarHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingActivity"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private final N0()V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/ui/setting/SettingActivity;->t:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const-string v2, "containerView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/coloros/translate/ui/setting/SettingActivity;->t:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/translate/ui/setting/SettingActivity;->t:Landroid/widget/FrameLayout;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/coloros/translate/ui/setting/SettingActivity;->t:Landroid/widget/FrameLayout;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v1

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sget-object v6, Lcom/coloros/translate/utils/i1;->a:Lcom/coloros/translate/utils/i1$a;

    invoke-virtual {v6, p0}, Lcom/coloros/translate/utils/i1$a;->b(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingActivity;->t:Landroid/widget/FrameLayout;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected H0()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/base/q;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_setting_main:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SettingActivity"

    const-string v1, "onConfigurationChanged updateContainerView"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingActivity;->N0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$id;->fragment_container:I

    new-instance v1, Lcom/coloros/translate/ui/setting/SettingFragment;

    invoke-direct {v1}, Lcom/coloros/translate/ui/setting/SettingFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/z;->q(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/z;->h()I

    sget p1, Lcom/coloros/translate/R$id;->fragment_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/SettingActivity;->t:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingActivity;->L0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/SettingActivity;->N0()V

    return-void
.end method
