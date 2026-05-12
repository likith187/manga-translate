.class public abstract Lcom/coloros/translate/base/BasePrivateActivity;
.super Lcom/coloros/translate/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/base/BasePrivateActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coloros/translate/base/q;",
        ">",
        "Lcom/coloros/translate/base/BaseActivity<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final s:Lcom/coloros/translate/base/BasePrivateActivity$a;


# instance fields
.field private final o:Ln8/j;

.field private p:Z

.field private q:Z

.field private r:Lcom/coloros/translate/base/BasePrivateActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/base/BasePrivateActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/base/BasePrivateActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/base/BasePrivateActivity;->s:Lcom/coloros/translate/base/BasePrivateActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;-><init>()V

    sget-object v0, Lcom/coloros/translate/base/BasePrivateActivity$e;->INSTANCE:Lcom/coloros/translate/base/BasePrivateActivity$e;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->o:Ln8/j;

    return-void
.end method

.method private final D0()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BasePrivateActivity"

    const-string v2, "checkAndShowDialogueSimultaneousFunctionInstruction"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->r:Lcom/coloros/translate/base/BasePrivateActivity;

    const/4 v1, 0x0

    const-string v2, "activity"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    instance-of v0, v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->r:Lcom/coloros/translate/base/BasePrivateActivity;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    instance-of v0, v0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->r:Lcom/coloros/translate/base/BasePrivateActivity;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    instance-of v0, v0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/translate/base/BasePrivateActivity;->r:Lcom/coloros/translate/base/BasePrivateActivity;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    instance-of v1, v1, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/coloros/translate/base/BasePrivateActivity$b;

    invoke-direct {v2, p0}, Lcom/coloros/translate/base/BasePrivateActivity$b;-><init>(Lcom/coloros/translate/base/BasePrivateActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->E(Landroid/app/Activity;ZLe2/a;)V

    :cond_5
    return-void
.end method

.method private final I0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "coloros.intent.action.SIMULTANEOUS_TRANS_SHORTCUT"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string v2, "coloros.intent.action.DIALOGUE_TRANSLATION_SHORTCUT"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v0, "coloros.intent.action.TEXT_TRANS_SHORTCUT"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->p:Z

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/BasePrivateActivity;->F0(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/base/BasePrivateActivity$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/base/BasePrivateActivity$c;-><init>(Lcom/coloros/translate/base/BasePrivateActivity;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->H0()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->K(Landroid/app/Activity;Le2/b;I)V

    return-void
.end method

.method public F0(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIntentActions :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BasePrivateActivity"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/coloros/translate/base/BasePrivateActivity$d;

    invoke-direct {p1, p0}, Lcom/coloros/translate/base/BasePrivateActivity$d;-><init>(Lcom/coloros/translate/base/BasePrivateActivity;)V

    const/4 p0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p0, v1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method protected final G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->o:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    return-object p0
.end method

.method protected H0()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final J0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->q:Z

    return p0
.end method

.method public finish()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-boolean v0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->p:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromSecondPage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "fromSecondAction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BasePrivateActivity"

    const-string v1, "onCreate"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->r:Lcom/coloros/translate/base/BasePrivateActivity;

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {v0, p1, v0}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->I0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->E0()V

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->D0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/coloros/translate/base/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->D()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onNewIntent"

    const-string v2, "BasePrivateActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->r:Lcom/coloros/translate/base/BasePrivateActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->I0()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->E0()V

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->D0()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->q:Z

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BasePrivateActivity"

    const-string v1, "onRestart false"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/base/BasePrivateActivity;->q:Z

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BasePrivateActivity"

    const-string v1, "onStop true"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
