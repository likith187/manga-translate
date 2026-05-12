.class public Lcom/coloros/translate/ui/MainActivity;
.super Lcom/coloros/translate/base/BasePrivateActivity;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/MainActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BasePrivateActivity<",
        "Lcom/coloros/translate/base/q;",
        ">;",
        "Lcom/coloros/translate/d;"
    }
.end annotation


# static fields
.field public static final a0:Lcom/coloros/translate/ui/MainActivity$a;


# instance fields
.field private A:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private B:Landroidx/constraintlayout/helper/widget/Flow;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/LinearLayout;

.field private final J:Ln8/q;

.field private K:Lcom/coloros/translate/b;

.field private L:Lcom/coloros/translate/b;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Lcom/coloros/translate/o;

.field private Q:Ljava/util/HashMap;

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private final W:Ln8/j;

.field private final X:I

.field private Y:Landroidx/appcompat/app/c;

.field private Z:F

.field private t:Landroid/view/View;

.field private u:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private v:Landroid/widget/LinearLayout;

.field private w:Lcom/coui/appcompat/grid/COUIPercentWidthConstraintLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/MainActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/MainActivity;->a0:Lcom/coloros/translate/ui/MainActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePrivateActivity;-><init>()V

    sget-object v0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/coloros/translate/LanguageManager;->q(Ljava/lang/String;)Ln8/q;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->J:Ln8/q;

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/b;

    iput-object v1, p0, Lcom/coloros/translate/ui/MainActivity;->K:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->L:Lcom/coloros/translate/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    const/4 v0, 0x2

    iput v0, p0, Lcom/coloros/translate/ui/MainActivity;->R:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/MainActivity;->V:Z

    sget-object v0, Lcom/coloros/translate/ui/MainActivity$i;->INSTANCE:Lcom/coloros/translate/ui/MainActivity$i;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->W:Ln8/j;

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/translate/ui/MainActivity;->X:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coloros/translate/ui/MainActivity;->Z:F

    return-void
.end method

.method private static final A1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->P:Lcom/coloros/translate/o;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/o;->G(Z)V

    :cond_1
    return-void
.end method

.method private static final B1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->n1()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->U()V

    return-void
.end method

.method private static final C1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "MainActivity"

    const-string v1, "jump to TextTranslationActivity"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/coloros/translate/ui/MainActivity;->J1(Lcom/coloros/translate/ui/MainActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final D1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "MainActivity"

    const-string v1, "jump to TextTranslationActivity startMic"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->I1(Z)V

    return-void
.end method

.method private static final E1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->o()V

    sget-object p1, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/coloros/translate/ui/MainActivity$f;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/MainActivity$f;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->M1(Lw8/a;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/ui/MainActivity$g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/MainActivity$g;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->O(Landroid/app/Activity;Le2/a;)V

    return-void
.end method

.method private static final F1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/coloros/translate/ui/MainActivity$h;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/MainActivity$h;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->K1(Lw8/a;)V

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/n;->n()V

    return-void
.end method

.method private final G1()Z
    .locals 2

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/utils/j$a;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0, v1, p0}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private final H1()V
    .locals 4

    const-string v0, "MainActivity"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "jump to document translate"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "andes.oplus.documentsreader.translate_select_file_and_history"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "andes.oplus.documentsreader"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget v1, Lcom/coloros/translate/R$anim;->slide_in_right:I

    sget v2, Lcom/coloros/translate/R$anim;->slide_out_left:I

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jump to document err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final I1(Z)V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/n;->q()V

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result v0

    const-string v1, "MainActivity"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "launchTextTranslate ai not download and return"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {v0}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/permission/a;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "launchTextTranslate permission and return"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_from"

    const-string v2, "from_home"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_start_mic"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Landroid/util/Pair;

    iget-object v1, p0, Lcom/coloros/translate/ui/MainActivity;->D:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "frameText"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    const-string v3, "frame_trans"

    invoke-direct {p1, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->C:Landroid/widget/ImageView;

    if-nez v3, :cond_3

    const-string v3, "mic"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    const-string v4, "mic_trans"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->v:Landroid/widget/LinearLayout;

    if-nez v3, :cond_4

    const-string v3, "chooseLanguageView"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {p1, v1}, [Landroid/util/Pair;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic J1(Lcom/coloros/translate/ui/MainActivity;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->I1(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: launchTextTranslate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic K0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->r1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method private final K1(Lw8/a;)V
    .locals 7

    sget-object v6, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "subtitle_translate_guide"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Y:Landroidx/appcompat/app/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Y:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$layout;->dialog_guide_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v2, "inflate(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/coloros/translate/R$string;->caption_translation:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/coloros/translate/R$id;->summary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/coloros/translate/R$string;->caption_translation_guide_context:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/coloros/translate/R$id;->guide_lottie:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    sget v4, Lcom/coloros/translate/R$raw;->subtitle_translate_introduction:I

    invoke-static {v3, v1, v3}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v4, Lcom/coloros/translate/R$raw;->subtitle_translate_introduction_fold_screen:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v4, Lcom/coloros/translate/R$raw;->subtitle_translate_introduction_tablet:I

    :cond_3
    :goto_0
    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    new-instance v3, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    sget v0, Lcom/coloros/translate/R$string;->experience_now:I

    new-instance v4, Lcom/coloros/translate/ui/g;

    invoke-direct {v4, v2, p1}, Lcom/coloros/translate/ui/g;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;)V

    invoke-virtual {v3, v0, v4, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->Y:Landroidx/appcompat/app/c;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 p0, 0x0

    const-string v1, "subtitle_translate_guide"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic L0(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/MainActivity;->L1(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final L1(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "$callback"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic M0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->t1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method private final M1(Lw8/a;)V
    .locals 7

    sget-object v6, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "screen_translate_guide"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Y:Landroidx/appcompat/app/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Y:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$layout;->dialog_guide_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v2, "inflate(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/coloros/translate/R$string;->screen_translation:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/coloros/translate/R$id;->summary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/coloros/translate/R$string;->screen_translate_guide_context:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/coloros/translate/R$raw;->screen_translate_introduction:I

    invoke-static {v3, v1, v3}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v2, Lcom/coloros/translate/R$raw;->screen_translate_introduction_fold_screen:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v2, Lcom/coloros/translate/R$raw;->screen_translate_introduction_tablet:I

    :cond_3
    :goto_0
    sget v3, Lcom/coloros/translate/R$id;->guide_lottie:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    new-instance v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    sget v0, Lcom/coloros/translate/R$string;->experience_now:I

    new-instance v4, Lcom/coloros/translate/ui/f;

    invoke-direct {v4, v3, p1}, Lcom/coloros/translate/ui/f;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;)V

    invoke-virtual {v2, v0, v4, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->Y:Landroidx/appcompat/app/c;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 p0, 0x0

    const-string v1, "screen_translate_guide"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic N0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->B1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final N1(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "$callback"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic O0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->C1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->z1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->s1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R0(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/MainActivity;->v1(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic S0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->x1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->E1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->F1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->D1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->q1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X0(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->A1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y0(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/MainActivity;->N1(Lcom/airbnb/lottie/LottieAnimationView;Lw8/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic Z0(Lcom/coloros/translate/ui/MainActivity;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->k1(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a1(Lcom/coloros/translate/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->l1()V

    return-void
.end method

.method public static final synthetic b1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/LanguageManager;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->n1()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->K:Lcom/coloros/translate/b;

    return-object p0
.end method

.method public static final synthetic d1(Lcom/coloros/translate/ui/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->N:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic e1(Lcom/coloros/translate/ui/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->O:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic f1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->L:Lcom/coloros/translate/b;

    return-object p0
.end method

.method public static final synthetic g1(Lcom/coloros/translate/ui/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/MainActivity;->V:Z

    return p0
.end method

.method public static final synthetic h1(Lcom/coloros/translate/ui/MainActivity;Lcom/coloros/translate/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->K:Lcom/coloros/translate/b;

    return-void
.end method

.method public static final synthetic i1(Lcom/coloros/translate/ui/MainActivity;Lcom/coloros/translate/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->L:Lcom/coloros/translate/b;

    return-void
.end method

.method public static final synthetic j1(Lcom/coloros/translate/ui/MainActivity;Lw8/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/MainActivity;->M1(Lw8/a;)V

    return-void
.end method

.method private final k1(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/coloros/translate/ui/MainActivity$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/coloros/translate/ui/MainActivity$b;

    iget v1, v0, Lcom/coloros/translate/ui/MainActivity$b;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/coloros/translate/ui/MainActivity$b;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/coloros/translate/ui/MainActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/ui/MainActivity$b;-><init>(Lcom/coloros/translate/ui/MainActivity;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p1, v0, Lcom/coloros/translate/ui/MainActivity$b;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/coloros/translate/ui/MainActivity$b;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/coloros/translate/ui/MainActivity$b;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    const/16 p1, 0x3e8

    int-to-float p1, p1

    iget v2, p0, Lcom/coloros/translate/ui/MainActivity;->Z:F

    div-float/2addr p1, v2

    float-to-long v4, p1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateLayout delayDuration : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MainActivity"

    invoke-virtual {p1, v6, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/coloros/translate/ui/MainActivity$b;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/coloros/translate/ui/MainActivity$b;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/k0;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->D:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    const-string p1, "frameText"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/coloros/translate/ui/MainActivity;->X:I

    sub-int/2addr p1, v1

    div-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/coloros/translate/ui/MainActivity;->N:Landroid/widget/TextView;

    const-string v3, "pickerLanguageOri"

    if-nez v2, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v0

    :cond_6
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v4, p0, Lcom/coloros/translate/ui/MainActivity;->N:Landroid/widget/TextView;

    if-nez v4, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v0

    :cond_7
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/coloros/translate/ui/MainActivity;->O:Landroid/widget/TextView;

    const-string v5, "pickerLanguageResult"

    if-nez v4, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v0

    :cond_8
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v6, p0, Lcom/coloros/translate/ui/MainActivity;->O:Landroid/widget/TextView;

    if-nez v6, :cond_9

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v0

    :cond_9
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    if-lt v2, v1, :cond_c

    if-lt v4, v1, :cond_c

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->N:Landroid/widget/TextView;

    if-nez p1, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_a
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->O:Landroid/widget/TextView;

    if-nez p0, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v0, p0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_7

    :cond_c
    if-lt v2, v1, :cond_f

    iget-object v1, p0, Lcom/coloros/translate/ui/MainActivity;->N:Landroid/widget/TextView;

    if-nez v1, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v0

    :cond_d
    sub-int/2addr p1, v4

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->O:Landroid/widget/TextView;

    if-nez p0, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move-object v0, p0

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_7

    :cond_f
    if-lt v4, v1, :cond_12

    iget-object v1, p0, Lcom/coloros/translate/ui/MainActivity;->N:Landroid/widget/TextView;

    if-nez v1, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v0

    :cond_10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->O:Landroid/widget/TextView;

    if-nez p0, :cond_11

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    move-object v0, p0

    :goto_5
    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_7

    :cond_12
    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->N:Landroid/widget/TextView;

    if-nez p1, :cond_13

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_13
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->O:Landroid/widget/TextView;

    if-nez p0, :cond_14

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    move-object v0, p0

    :goto_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_15
    :goto_7
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method private final l1()V
    .locals 4

    const-string v0, "MainActivity"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "start caption translate"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "action.oplus.accessibilityassistant.subtitle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "target"

    const-string v3, "subtitle"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from"

    const-string v3, "translate_app"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.coloros.accessibilityassistant"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start caption err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final m1()V
    .locals 13

    const-string v0, ""

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "request_package"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    :cond_0
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v1, v3

    :cond_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const-string v1, "com.coloros.smartsidebar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v4, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    const/16 v11, 0x30

    const/4 v12, 0x0

    const-string v6, "event_start_translate_from"

    const-string v7, "entrance"

    const-string v8, "sidebar"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v12}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v0, "coloros.intent.action.TRANSLATION.ASSISTANT"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    const/16 v8, 0x30

    const/4 v9, 0x0

    const-string v3, "event_start_translate_from"

    const-string v4, "entrance"

    const-string v5, "assistant_screen"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final n1()Lcom/coloros/translate/LanguageManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->W:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/LanguageManager;

    return-object p0
.end method

.method private final o1()V
    .locals 10

    invoke-static {}, Lcom/coloros/translate/ui/a;->b()Z

    move-result v0

    const-string v1, "MainActivity"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "initEntrance has photo translate"

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/coloros/translate/ui/MainActivity;->S:Z

    iget v0, p0, Lcom/coloros/translate/ui/MainActivity;->R:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/translate/ui/MainActivity;->R:I

    :cond_0
    sget-object v3, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    const-string v0, "isAiDocSupport"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v0, v5, v4, v5}, Lcom/coloros/translate/utils/l0$a;->b(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "isAiDocSupport"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "ai_doc_translate"

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v4, "isAiDocSupport"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    :goto_0
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initEntrance isAiDocSupport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v0, "andes.oplus.documentsreader"

    invoke-static {v0}, Lcom/coloros/translate/utils/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "andes.oplus.documentsreader.translate_select_file_and_history"

    invoke-static {v0, v4}, Lcom/coloros/translate/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "initEntrance has document translate"

    invoke-virtual {v3, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/coloros/translate/ui/MainActivity;->T:Z

    iget v0, p0, Lcom/coloros/translate/ui/MainActivity;->R:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coloros/translate/ui/MainActivity;->R:I

    :cond_2
    iget v0, p0, Lcom/coloros/translate/ui/MainActivity;->R:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initEntrance type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.coloros.accessibilityassistant"

    invoke-static {v0}, Lcom/coloros/translate/utils/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "support_direct_subtitle"

    invoke-static {v0, v4, v2}, Lcom/coloros/translate/utils/c;->e(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/coloros/translate/utils/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "initEntrance has caption"

    invoke-virtual {v3, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/coloros/translate/ui/MainActivity;->U:Z

    :cond_3
    return-void
.end method

.method private final p1()V
    .locals 15

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->G1()Z

    move-result v0

    const-string v1, "entranceFlow"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->B:Landroidx/constraintlayout/helper/widget/Flow;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/helper/widget/Flow;->setMaxElementsWrap(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->B:Landroidx/constraintlayout/helper/widget/Flow;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/helper/widget/Flow;->setMaxElementsWrap(I)V

    :goto_0
    iget v0, p0, Lcom/coloros/translate/ui/MainActivity;->R:I

    const-string v1, "document"

    const/4 v4, 0x0

    const-string v5, "photo"

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41800000    # 16.0f

    const-string v8, "simultaneous"

    const-string v9, "dialog"

    const/16 v10, 0x8

    const-string v11, "mainThreeLayout"

    const-string v12, "null cannot be cast to non-null type android.view.View"

    const-string v13, "mainNormalLayout"

    if-eq v0, v2, :cond_26

    const/4 v14, 0x3

    if-eq v0, v14, :cond_9

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_3

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_4

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_5

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    sget v4, Lcom/coloros/translate/R$id;->translation_1:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_6

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    sget v4, Lcom/coloros/translate/R$id;->translation_2:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_7

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7
    sget v4, Lcom/coloros/translate/R$id;->translation_3:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_8

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v3, v0

    :goto_1
    sget v0, Lcom/coloros/translate/R$id;->translation_4:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->H:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_9
    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->G1()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_a

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_a
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_b

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_b
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_c

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_c
    sget v4, Lcom/coloros/translate/R$id;->translation_1:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_d

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_d
    sget v4, Lcom/coloros/translate/R$id;->translation_2:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_e

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_e
    sget v4, Lcom/coloros/translate/R$id;->translation_3:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_f

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_f
    sget v4, Lcom/coloros/translate/R$id;->translation_4:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->H:Landroid/widget/TextView;

    if-nez v0, :cond_10

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_12

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_12
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_13

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_13
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_14

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_14
    sget v4, Lcom/coloros/translate/R$id;->translation_1:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->I:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    sget v4, Lcom/coloros/translate/R$id;->translation_detail:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_2

    :cond_15
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_17

    iget-boolean v4, p0, Lcom/coloros/translate/ui/MainActivity;->V:Z

    if-eqz v4, :cond_16

    move v4, v7

    goto :goto_3

    :cond_16
    move v4, v6

    :goto_3
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_17
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_18

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_18
    sget v4, Lcom/coloros/translate/R$id;->translation_2:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_19

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_19
    sget v4, Lcom/coloros/translate/R$id;->translation_3:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    :goto_4
    iget-boolean v0, p0, Lcom/coloros/translate/ui/MainActivity;->S:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->G1()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_1a
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->I:Landroid/widget/LinearLayout;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_1b
    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->G1()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    if-nez v0, :cond_1c

    goto :goto_6

    :cond_1c
    sget v4, Lcom/coloros/translate/R$string;->dialog_translation:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    sget v4, Lcom/coloros/translate/R$drawable;->icon_dialog_translation:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1e
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->I:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1f

    sget v4, Lcom/coloros/translate/R$id;->translation_detail:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_7

    :cond_1f
    move-object v0, v3

    :goto_7
    if-nez v0, :cond_20

    goto :goto_8

    :cond_20
    sget v4, Lcom/coloros/translate/R$string;->dialog_translation:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    if-eqz v0, :cond_21

    sget v4, Lcom/coloros/translate/R$drawable;->icon_dialog_translation_40:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_21
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/coloros/translate/ui/MainActivity;->I:Landroid/widget/LinearLayout;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    if-nez v0, :cond_22

    goto :goto_a

    :cond_22
    sget v4, Lcom/coloros/translate/R$string;->simultaneous:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    sget v4, Lcom/coloros/translate/R$drawable;->icon_simultaneous:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_23
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    if-nez v0, :cond_24

    goto :goto_b

    :cond_24
    sget v4, Lcom/coloros/translate/R$string;->document_translation:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    sget v4, Lcom/coloros/translate/R$drawable;->icon_document:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_25
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_26
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_27

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_27
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_28

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_28
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_29

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_29
    sget v4, Lcom/coloros/translate/R$id;->translation_1:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_2a

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2a
    sget v4, Lcom/coloros/translate/R$id;->translation_2:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_2b

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2b
    sget v4, Lcom/coloros/translate/R$id;->translation_3:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_2c

    invoke-static {v13}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_c

    :cond_2c
    move-object v3, v0

    :goto_c
    sget v0, Lcom/coloros/translate/R$id;->translation_4:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    if-nez v0, :cond_2d

    goto :goto_d

    :cond_2d
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->H:Landroid/widget/TextView;

    if-nez v0, :cond_2e

    goto :goto_e

    :cond_2e
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    iget-boolean v3, p0, Lcom/coloros/translate/ui/MainActivity;->V:Z

    if-eqz v3, :cond_2f

    move v3, v7

    goto :goto_10

    :cond_2f
    move v3, v6

    :goto_10
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_30
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    iget-boolean v3, p0, Lcom/coloros/translate/ui/MainActivity;->V:Z

    if-eqz v3, :cond_31

    move v3, v7

    goto :goto_11

    :cond_31
    move v3, v6

    :goto_11
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_32
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->G:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    iget-boolean v3, p0, Lcom/coloros/translate/ui/MainActivity;->V:Z

    if-eqz v3, :cond_33

    move v3, v7

    goto :goto_12

    :cond_33
    move v3, v6

    :goto_12
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_34
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_36

    iget-boolean v3, p0, Lcom/coloros/translate/ui/MainActivity;->V:Z

    if-eqz v3, :cond_35

    move v6, v7

    :cond_35
    invoke-virtual {v0, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_36
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_37

    goto :goto_13

    :cond_37
    sget v2, Lcom/coloros/translate/R$drawable;->main_bg_photo:I

    invoke-static {p0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_13
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_38

    goto :goto_14

    :cond_38
    sget v2, Lcom/coloros/translate/R$drawable;->main_bg_dialog:I

    invoke-static {p0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_14
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_39

    goto :goto_15

    :cond_39
    sget v2, Lcom/coloros/translate/R$drawable;->main_bg_simultaneous:I

    invoke-static {p0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_15
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_3a

    goto :goto_16

    :cond_3a
    sget v2, Lcom/coloros/translate/R$drawable;->main_bg_document:I

    invoke-static {p0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_16
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3b

    new-instance v2, Lcom/coloros/translate/ui/b;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/b;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3b
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3c

    new-instance v2, Lcom/coloros/translate/ui/h;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/h;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3c
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3d

    new-instance v2, Lcom/coloros/translate/ui/i;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/i;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3d
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3e

    new-instance v1, Lcom/coloros/translate/ui/j;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/j;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3e
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/ui/MainActivity;->Q:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/MainActivity;->u1(Landroid/view/View;)V

    goto :goto_17

    :cond_3f
    return-void
.end method

.method private static final q1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPackageName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/n;->k()V

    return-void
.end method

.method private static final r1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->l()V

    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->B()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "MainActivity"

    const-string v1, "start jump DialogueTranslationActivity"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/ui/MainActivity$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/MainActivity$c;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1, v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->E(Landroid/app/Activity;ZLe2/a;)V

    return-void
.end method

.method private static final s1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->p()V

    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->B()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "MainActivity"

    const-string v1, "jump to SimultaneousMainActivity"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->G0()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/ui/MainActivity$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/MainActivity$d;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->E(Landroid/app/Activity;ZLe2/a;)V

    return-void
.end method

.method private static final t1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->H1()V

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/n;->m()V

    return-void
.end method

.method private final u1(Landroid/view/View;)V
    .locals 1

    new-instance p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/coloros/translate/ui/e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/e;-><init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private static final v1(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "$feedbackUtils"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    goto :goto_4

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    :goto_3
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    :cond_6
    :goto_4
    return p2
.end method

.method private final w1()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->u:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x0

    const-string v2, "toolbar"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v3, Lcom/coloros/translate/R$menu;->main_toolbar_menu:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->u:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$id;->setting:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/d;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/d;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private static final x1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "click setting"

    const-string v1, "MainActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/coloros/translate/ui/setting/SettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    const-string v2, "jumpToSetting failure\uff0c "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/n;->t()V

    const/4 p0, 0x1

    return p0
.end method

.method private final y1()V
    .locals 7

    sget v0, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->u:Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget v0, Lcom/coloros/translate/R$id;->choose_language:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->v:Landroid/widget/LinearLayout;

    sget v0, Lcom/coloros/translate/R$id;->percent_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/grid/COUIPercentWidthConstraintLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->w:Lcom/coui/appcompat/grid/COUIPercentWidthConstraintLayout;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "percentFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/grid/COUIPercentWidthConstraintLayout;->setPercentIndentEnabled(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->v:Landroid/widget/LinearLayout;

    const-string v3, "chooseLanguageView"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v4, Lcom/coloros/translate/R$id;->language_ori:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->v:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    sget v4, Lcom/coloros/translate/R$id;->language_result:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->O:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->v:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    sget v3, Lcom/coloros/translate/R$id;->switchButton:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->M:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    const-string v0, "pickerSwitchButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    sget v3, Lcom/coloros/translate/R$drawable;->switch_language_arrow:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/coloros/translate/o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->P:Lcom/coloros/translate/o;

    sget v3, Lcom/coloros/translate/R$drawable;->switch_language_arrow:I

    invoke-virtual {v0, v3}, Lcom/coloros/translate/o;->E(I)V

    sget v0, Lcom/coloros/translate/R$id;->language_ori:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/coloros/translate/ui/k;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/k;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/coloros/translate/R$id;->language_result:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/coloros/translate/ui/l;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/l;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/coloros/translate/R$id;->switchButton:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/coloros/translate/ui/m;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/m;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/coloros/translate/R$id;->mic:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->C:Landroid/widget/ImageView;

    sget v0, Lcom/coloros/translate/R$id;->input_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->D:Landroid/widget/TextView;

    const-string v3, "frameText"

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    new-instance v4, Lcom/coloros/translate/ui/n;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/n;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->C:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const-string v0, "mic"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    new-instance v4, Lcom/coloros/translate/ui/o;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/o;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->D:Landroid/widget/TextView;

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    sget v4, Lcom/coloros/translate/R$drawable;->frame_main_text:I

    invoke-static {p0, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->D:Landroid/widget/TextView;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    new-instance v4, Lcom/coloros/translate/ui/MainActivity$e;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/MainActivity$e;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->D:Landroid/widget/TextView;

    if-nez v0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    sget v0, Lcom/coloros/translate/R$id;->main_normal_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/coloros/translate/R$id;->main_three_function_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/coloros/translate/R$id;->entrance_flow:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/helper/widget/Flow;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->B:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->p1()V

    sget v0, Lcom/coloros/translate/R$id;->screen_translation:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->x:Landroid/widget/RelativeLayout;

    const-string v3, "screenTranslationLayout"

    if-nez v0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    sget v4, Lcom/coloros/translate/R$id;->img:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v4, Lcom/coloros/translate/R$drawable;->icon_screen_translation:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    sget v4, Lcom/coloros/translate/R$id;->title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/coloros/translate/R$string;->screen_translation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    sget v4, Lcom/coloros/translate/R$id;->sub_title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/coloros/translate/R$string;->screen_translation_content_new:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    sget v4, Lcom/coloros/translate/R$id;->item_divider:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p0, Lcom/coloros/translate/ui/MainActivity;->U:Z

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v4, :cond_e

    move v4, v5

    goto :goto_0

    :cond_e
    move v4, v6

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_f
    iget-boolean v4, p0, Lcom/coloros/translate/ui/MainActivity;->U:Z

    if-eqz v4, :cond_10

    sget v4, Lcom/coloros/translate/R$drawable;->circle_rectangle_bg_up:I

    goto :goto_1

    :cond_10
    sget v4, Lcom/coloros/translate/R$drawable;->selector_circle_rectangle_bg:I

    :goto_1
    invoke-static {p0, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    new-instance v3, Lcom/coloros/translate/ui/p;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/p;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/coloros/translate/R$id;->caption_translation:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->y:Landroid/widget/RelativeLayout;

    const-string v1, "captionTranslationLayout"

    if-nez v0, :cond_12

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    sget v3, Lcom/coloros/translate/R$id;->img:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v3, Lcom/coloros/translate/R$drawable;->icon_caption_translation:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->y:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_13

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_13
    sget v3, Lcom/coloros/translate/R$id;->title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->caption_translation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->y:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_14
    sget v3, Lcom/coloros/translate/R$id;->sub_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->caption_translation_content_new:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->y:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_15

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_15
    sget v3, Lcom/coloros/translate/R$id;->item_divider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->y:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_16

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_16
    sget v3, Lcom/coloros/translate/R$drawable;->circle_rectangle_bg_down:I

    invoke-static {p0, v3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->y:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_17
    new-instance v3, Lcom/coloros/translate/ui/c;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/c;-><init>(Lcom/coloros/translate/ui/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/MainActivity;->U:Z

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->y:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_18

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_18
    move-object v2, p0

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_19
    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->y:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_1a

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_1a
    move-object v2, p0

    :goto_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private static final z1(Lcom/coloros/translate/ui/MainActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity;->P:Lcom/coloros/translate/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3}, Lcom/coloros/translate/o;->G(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public F0(Landroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->F0(Landroid/content/Intent;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/observer/e;->l(Lcom/coloros/translate/observer/e$a;)V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "4"

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6ad65c66

    if-eq v3, v4, :cond_3

    const v4, 0x3589be14

    if-eq v3, v4, :cond_2

    const v4, 0x580de1c8

    if-eq v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v3, "coloros.intent.action.TRANSLATION.COMPASS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "5"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->K(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2
    const-string v3, "coloros.intent.action.TRANSLATION.ASSISTANT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "3"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->K(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_3
    const-string v3, "coloros.intent.action.TRANSLATION_MAIN_PAGE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    const-string p0, "request_package"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    move-object p0, v2

    :cond_5
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
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, p0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const-string p0, "com.redteamobile.roaming"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "6"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->K(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0, v0}, Lcom/coloros/translate/utils/n;->K(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    :goto_3
    :try_start_1
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_a

    const-string v3, "from_package"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_a
    :goto_4
    move-object p0, v2

    :cond_b
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :goto_5
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object p0, v1

    :cond_c
    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_d

    goto :goto_7

    :cond_d
    move-object v2, p0

    :goto_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const-string p0, "com.coloros.smartsidebar"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "2"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->K(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    const-string p0, "fromSecondPage"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "fromSecondAction"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIntentActions fromSecondPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MainActivity"

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0, v0}, Lcom/coloros/translate/utils/n;->K(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v1}, Lcom/coloros/translate/utils/n;->L(Lcom/coloros/translate/utils/n;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_10
    :goto_8
    return-void
.end method

.method public i(Ljava/lang/Boolean;)V
    .locals 6

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "MainActivity"

    const-string v1, "onLanguageChanged"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v0

    new-instance v3, Lcom/coloros/translate/ui/MainActivity$j;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/coloros/translate/ui/MainActivity$j;-><init>(Lcom/coloros/translate/ui/MainActivity;Lkotlin/coroutines/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/base/q;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_main:I

    return p0
.end method

.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "MainActivity"

    const-string v2, "onBackPressed"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->p1()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/coloros/translate/R$id;->main_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->t:Landroid/view/View;

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "onCreate"

    const-string v1, "MainActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/coloros/translate/ui/MainActivity;->V:Z

    const-string v0, "onCreate language is not zh"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {v0, p1, v0}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/j$a;->a(F)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/j$a;->a(F)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->t:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, v2, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->o1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->y1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->w1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->m1()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->onDestroy()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "MainActivity"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/e;->n(Lcom/coloros/translate/observer/e$a;)V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->q0()Lcom/coloros/translate/utils/n$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/utils/n;->j0(Lcom/coloros/translate/utils/n$a;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->n1()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->l()V

    sget-object p0, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {p0}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/permission/a;->h()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/MainActivity;->Z:F

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity;->v:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v0, "chooseLanguageView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/MainActivity;->n1()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/LanguageManager;->O(Lcom/coloros/translate/d;Ljava/lang/String;)V

    return-void
.end method

.method public final setRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity;->t:Landroid/view/View;

    return-void
.end method
