.class public final Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;
.super Lcom/coloros/translate/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/texttranslation/EnlargeActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BaseActivity<",
        "Lcom/coloros/translate/ui/texttranslation/p0;",
        ">;"
    }
.end annotation


# static fields
.field public static final u:Lcom/coloros/translate/ui/texttranslation/EnlargeActivity$a;


# instance fields
.field private o:Landroid/widget/TextView;

.field private p:Lcom/coui/appcompat/button/COUIButton;

.field private q:Lcom/airbnb/lottie/LottieAnimationView;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->u:Lcom/coloros/translate/ui/texttranslation/EnlargeActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic D0(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->I0(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->H0(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic F0(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->q:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private final G0()V
    .locals 6

    sget v0, Lcom/coloros/translate/R$id;->textView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->o:Landroid/widget/TextView;

    const-string v2, "enlargeTextView"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->o:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->o:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/a;

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->o:Landroid/widget/TextView;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v3

    :cond_3
    invoke-direct {v4, v5}, Lcom/coloros/translate/ui/texttranslation/a;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    sget v0, Lcom/coloros/translate/R$id;->close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->p:Lcom/coui/appcompat/button/COUIButton;

    if-nez v0, :cond_4

    const-string v0, "closeBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    new-instance v2, Lcom/coloros/translate/ui/texttranslation/b;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/texttranslation/b;-><init>(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/coloros/translate/R$id;->play:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->q:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    const-string v0, "playLAV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, v0

    :goto_0
    new-instance v0, Lcom/coloros/translate/ui/texttranslation/c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/texttranslation/c;-><init>(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final H0(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final I0(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->U()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->B0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->p0()V

    :goto_0
    return-void
.end method

.method private final J0()V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->U()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity$b;-><init>(Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    return-void
.end method

.method private final K0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "EnlargeActivity"

    const-string v2, "enlarge_text"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "enlargeTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->r:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, "enlargeString"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/ui/texttranslation/p0;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->full_screen:I

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "enlarge_text"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, ""

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->r:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "enlarge_language_ori"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->s:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v2, "enlarge_language_result"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, p1

    :goto_3
    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->t:Ljava/lang/String;

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate languageResultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnlargeActivity"

    invoke-virtual {p1, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->Y()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->r:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "enlargeString"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v0

    :cond_6
    invoke-virtual {p1, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->s:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "languageOriCode"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v0

    :cond_7
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->t:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, "languageResultCode"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v0, v2

    :goto_4
    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/ui/texttranslation/p0;->E0(Ljava/lang/String;Ljava/lang/String;)V

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

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->G0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->J0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->K0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/coloros/translate/base/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/texttranslation/p0;->r0(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;->K0()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "EnlargeActivity"

    const-string v2, "onPause and unRegisterListener"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->D0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->q0()V

    return-void
.end method
