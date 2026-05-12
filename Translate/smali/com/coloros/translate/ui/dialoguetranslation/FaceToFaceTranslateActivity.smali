.class public final Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;
.super Lcom/coloros/translate/base/BaseEarPhoneActivity;
.source "SourceFile"


# annotations
.annotation runtime Lcom/coloros/translate/ui/earphone/ConfigAudioChange;
.end annotation

.annotation runtime Lcom/coloros/translate/ui/earphone/ConfigEarControl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BaseEarPhoneActivity<",
        "Lcom/coloros/translate/base/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final B:Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity$a;


# instance fields
.field private A:Lcom/coloros/translate/ui/dialoguetranslation/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;->B:Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public F0(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->F0(Landroid/content/Intent;)V

    sget-object p1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/observer/e;->l(Lcom/coloros/translate/observer/e$a;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->Q0()V

    return-void
.end method

.method public R0(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onBluetoothDevice"

    const-string v2, "FaceToFaceTranslateActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;->A:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->P(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothDevice error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b1()V
    .locals 4

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->b1()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "updateEarControl"

    const-string v2, "FaceToFaceTranslateActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;->A:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->R()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEarControl error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslateActivity"

    const-string v2, "finish"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->finish()V

    return-void
.end method

.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/base/q;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_face_to_face_translate_layout:I

    return p0
.end method

.method public onBackPressed()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslateActivity"

    const-string v2, "onBackPressed"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->U0()V

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$id;->fragment_container_view:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/coloros/translate/ui/dialoguetranslation/z0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/z0;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-direct {p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->n()Landroidx/fragment/app/z;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$id;->fragment_container_view:I

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/z;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/z;->h()I

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;->A:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/y0;->a(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/c1;

    move-result-object p1

    invoke-static {}, Landroidx/core/view/a1$m;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/c1;->a(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string p1, "getWindow(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/utils/f0;->b(Landroid/view/Window;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onDestroy()V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->q0()Lcom/coloros/translate/utils/n$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/n;->O(Lcom/coloros/translate/utils/n$a;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/observer/e;->n(Lcom/coloros/translate/observer/e$a;)V

    return-void
.end method

.method public u0()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;->A:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->O()V

    :cond_0
    return-void
.end method

.method public x0()V
    .locals 0

    invoke-super {p0}, Lcom/coloros/translate/base/BaseActivity;->x0()V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;->A:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->S()V

    :cond_0
    return-void
.end method
