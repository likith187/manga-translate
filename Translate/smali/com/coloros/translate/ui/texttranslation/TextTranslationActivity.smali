.class public final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;
.super Lcom/coloros/translate/base/BasePrivateActivity;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/d;


# annotations
.annotation runtime Lcom/coloros/translate/ui/earphone/ConfigAudioChange;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BasePrivateActivity<",
        "Lcom/coloros/translate/ui/texttranslation/p0;",
        ">;",
        "Lcom/coloros/translate/d;"
    }
.end annotation


# static fields
.field public static final n1:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a;


# instance fields
.field private final A:Ln8/j;

.field private A0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private B:J

.field private B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

.field private C:Z

.field private C0:Lcom/airbnb/lottie/LottieAnimationView;

.field private D:Z

.field private D0:Lcom/airbnb/lottie/LottieAnimationView;

.field private E:Z

.field private E0:Landroidx/constraintlayout/widget/Group;

.field private F:Z

.field private F0:Landroidx/constraintlayout/widget/Group;

.field private G:Lcom/coloros/translate/repository/local/TextHistory;

.field private G0:Lcom/coui/appcompat/textview/COUITextView;

.field private H:Lcom/oplus/view/inputmethod/OplusInputMethodObserver;

.field private H0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

.field private I:Landroid/animation/ValueAnimator;

.field private I0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

.field private J:Landroid/animation/ValueAnimator;

.field private J0:Lcom/airbnb/lottie/LottieAnimationView;

.field private K:F

.field private K0:Landroid/widget/TextView;

.field private L:J

.field private L0:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private final M:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m0;

.field private M0:Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;

.field private N:I

.field private N0:Lcom/coloros/translate/ui/texttranslation/h;

.field private O:Z

.field private O0:Landroid/widget/LinearLayout;

.field private P:Z

.field private P0:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private Q:Landroid/app/Dialog;

.field private Q0:Landroid/view/MenuItem;

.field private final R:Ln8/q;

.field private R0:Landroid/view/MenuItem;

.field private S:Lcom/coloros/translate/b;

.field private S0:Ljava/util/ArrayList;

.field private T:Lcom/coloros/translate/b;

.field private T0:Li2/i;

.field private U:Z

.field private U0:Ljava/lang/String;

.field private V:Z

.field private V0:Z

.field private W:Lcom/coloros/translate/o;

.field private W0:Z

.field private X:Landroid/widget/ImageView;

.field private X0:Ljava/lang/String;

.field private Y:Landroid/widget/ImageView;

.field private Y0:I

.field private Z:Landroid/widget/ImageView;

.field private Z0:I

.field private a0:Landroid/widget/LinearLayout;

.field private a1:I

.field private b0:Landroid/view/View;

.field private b1:I

.field private c0:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private c1:Z

.field private d0:Lcom/coloros/translate/widget/LanguageChooseView;

.field private d1:Ljava/lang/String;

.field private e0:Lcom/coloros/translate/widget/LanguageChooseView;

.field private e1:Z

.field private f0:Lcom/coloros/translate/widget/LanguageChooseView;

.field private f1:Z

.field private g0:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

.field private g1:Landroid/animation/ValueAnimator;

.field private h0:Landroid/widget/LinearLayout;

.field private h1:Landroid/animation/ValueAnimator;

.field private i0:Landroid/widget/RelativeLayout;

.field private i1:Lh5/c;

.field private j0:Landroid/widget/RelativeLayout;

.field private j1:Z

.field private k0:Lcom/oplus/vfxsdk/rsview/g;

.field private final k1:Landroid/os/Handler;

.field private l0:Lcom/oplus/vfxsdk/rsview/g;

.field private final l1:Landroidx/activity/result/b;

.field private m0:Landroid/widget/RelativeLayout;

.field private final m1:Ln8/j;

.field private n0:Landroid/widget/EditText;

.field private o0:Landroid/widget/ImageView;

.field private p0:Landroid/widget/LinearLayout;

.field private q0:Landroid/widget/ImageView;

.field private r0:Lcom/airbnb/lottie/LottieAnimationView;

.field private s0:Lcom/airbnb/lottie/LottieAnimationView;

.field private final t:Landroid/content/Context;

.field private t0:Lcom/airbnb/lottie/LottieAnimationView;

.field private final u:I

.field private u0:Landroid/widget/RelativeLayout;

.field private final v:I

.field private v0:Landroid/widget/ImageView;

.field private final w:I

.field private w0:Landroid/widget/ImageView;

.field private final x:I

.field private x0:Landroid/widget/ImageView;

.field private final y:I

.field private y0:Landroidx/appcompat/widget/AppCompatTextView;

.field private final z:Ln8/j;

.field private z0:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n1:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/base/BasePrivateActivity;-><init>()V

    iput-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t:Landroid/content/Context;

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$dimen;->dp_94:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u:I

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$dimen;->dp_80:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v:I

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$dimen;->dp_112:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w:I

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$dimen;->sp_26:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->x:I

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_106:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y:I

    sget-object v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$v;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$v;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z:Ln8/j;

    sget-object v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$u;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A:Ln8/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->K:F

    const-wide/16 v1, 0x10

    iput-wide v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L:J

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m0;

    const/4 v1, -0x1

    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N:I

    sget-object v1, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/coloros/translate/LanguageManager;->q(Ljava/lang/String;)Ln8/q;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R:Ln8/q;

    invoke-virtual {v1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/b;

    iput-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/b;

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    iput-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U:Z

    iput-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S0:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U0:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X0:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d1:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/ui/texttranslation/t;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/texttranslation/t;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    new-instance v0, Ld/d;

    invoke-direct {v0}, Ld/d;-><init>()V

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/c0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/c0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l1:Landroidx/activity/result/b;

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m1:Ln8/j;

    return-void
.end method

.method public static final synthetic A1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k0:Lcom/oplus/vfxsdk/rsview/g;

    return-object p0
.end method

.method public static final synthetic A2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V0:Z

    return-void
.end method

.method private static final A3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/utils/d1;->e()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget p0, Lcom/coloros/translate/R$string;->function_not_support_in_multi_window:I

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v1, v0}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b3()V

    sget-object p1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v2

    const-string v3, "event_fullscreen_for_words"

    invoke-virtual {p1, p0, v3, v1, v2}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez p0, :cond_3

    const-string p0, "inputET"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public static final synthetic B1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l0:Lcom/oplus/vfxsdk/rsview/g;

    return-object p0
.end method

.method public static final synthetic B2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U:Z

    return-void
.end method

.method private static final B3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F:Z

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f4()V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez p1, :cond_3

    const-string p1, "inputET"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_4
    invoke-direct {p0, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m4(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d4()V

    return-void
.end method

.method public static final synthetic C1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic C2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b1:I

    return-void
.end method

.method private static final C3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/coloros/translate/utils/d1;->a()V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez p1, :cond_1

    const-string p1, "resultTV"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_1
    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->g()V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p1, :cond_2

    const-string p1, "aiContent"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic D1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/repository/local/TextHistory;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G:Lcom/coloros/translate/repository/local/TextHistory;

    return-object p0
.end method

.method public static final synthetic D2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j1:Z

    return-void
.end method

.method private final D3()V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    const-string v1, "normalFrame"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget v3, Lcom/coloros/translate/R$id;->ori_frame:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m0:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v4, Lcom/coloros/translate/R$id;->input:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    const-string v4, "inputET"

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    new-instance v5, Lcom/coloros/translate/ui/texttranslation/a;

    iget-object v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v6, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_3
    invoke-direct {v5, v6}, Lcom/coloros/translate/ui/texttranslation/a;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    new-instance v5, Lcom/coloros/translate/ui/texttranslation/l;

    invoke-direct {v5, p0}, Lcom/coloros/translate/ui/texttranslation/l;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    new-instance v5, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;

    invoke-direct {v5, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v0, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    sget v0, Lcom/coloros/translate/R$id;->icon_text_speak:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q0:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    const-string v0, "textSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/m;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/m;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    sget v4, Lcom/coloros/translate/R$id;->frame_result:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    sget v4, Lcom/coloros/translate/R$id;->result:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    const-string v4, "resultTV"

    if-nez v0, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    sget v5, Lcom/coloros/translate/R$id;->result_sign:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/textview/COUITextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_c

    const-string v0, "resultSignTV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    sget-object v5, Lcom/coloros/translate/utils/p0;->TRANSLATION:Lcom/coloros/translate/utils/p0;

    invoke-static {v5, p0}, Lcom/coloros/translate/utils/d1;->b(Lcom/coloros/translate/utils/p0;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->setType(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S3()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_f
    new-instance v5, Lcom/coloros/translate/ui/texttranslation/a;

    iget-object v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v6, :cond_10

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_10
    invoke-direct {v5, v6}, Lcom/coloros/translate/ui/texttranslation/a;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_11

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_12

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    sget v1, Lcom/coloros/translate/R$id;->clear_histories:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->K0:Landroid/widget/TextView;

    if-nez v0, :cond_13

    const-string v0, "clearHistory"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_13
    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/coloros/translate/ui/texttranslation/n;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/texttranslation/n;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic E1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y:I

    return p0
.end method

.method public static final synthetic E2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e1:Z

    return-void
.end method

.method private static final E3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h3()Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static final synthetic F1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L:J

    return-wide v0
.end method

.method public static final synthetic F2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P:Z

    return-void
.end method

.method private static final F3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->G()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->j0()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object p1, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {p1}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/permission/a;->e(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    const-string v1, "inputET"

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_5
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    const/16 v2, 0x5dc

    if-lt p1, v2, :cond_6

    sget p0, Lcom/coloros/translate/R$string;->tip_max_length:I

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0, v4}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->U()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->B0()V

    :cond_7
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->i0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->A0()V

    :cond_8
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v4, v0

    :goto_0
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/texttranslation/p0;->x0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    iput-boolean v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    return-void
.end method

.method public static final synthetic G1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic G2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N:I

    return-void
.end method

.method private static final G3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
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
    iput-boolean v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W3()V

    return-void
.end method

.method public static final synthetic H1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d1:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic H2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a4()V

    return-void
.end method

.method private final H3()V
    .locals 5

    sget v0, Lcom/coloros/translate/R$id;->root_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a0:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v2}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v0, v4}, Lcom/coloros/translate/utils/j$a;->a(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a0:Landroid/widget/LinearLayout;

    if-nez v4, :cond_1

    const-string v4, "rootView"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v4, v0, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lcom/coloros/translate/R$id;->frame_root:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g0:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    if-nez v0, :cond_2

    const-string v0, "frameRoot"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->setPercentIndentEnabled(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->x3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n3()V

    return-void
.end method

.method public static final synthetic I1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g3()I

    move-result p0

    return p0
.end method

.method public static final synthetic I2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b4(II)V

    return-void
.end method

.method private final I3()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic J1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic J2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f4()V

    return-void
.end method

.method private final J3(Landroid/view/View;II)Z
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p0

    if-gt p0, p3, :cond_0

    if-gt p3, p1, :cond_0

    if-lt p2, v1, :cond_0

    if-gt p2, v3, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static synthetic K0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic K1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic K2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h4()V

    return-void
.end method

.method private final K3(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o0:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "clearOriBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J3(Landroid/view/View;II)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    const-string v1, "copyIV"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-direct {p0, v1, v0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J3(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    const-string v1, "enlargeIV"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    invoke-direct {p0, v1, v0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J3(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->r0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_6

    const-string v1, "textSpeakIconLAV"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v2, v1

    :goto_0
    invoke-direct {p0, v2, v0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J3(Landroid/view/View;II)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic L0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    return-void
.end method

.method public static final synthetic L1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic L2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j4(Ljava/lang/Integer;)V

    return-void
.end method

.method private final L3()V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->R()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->Y()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->U()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$d0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$d0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->i0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->a0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->e0()Landroidx/lifecycle/a0;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$g0;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$g0;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->d0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$w;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$w;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->h0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$x;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$x;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->k0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$y;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$y;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->b0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    return-void
.end method

.method public static synthetic M0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic M1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic M2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k4()V

    return-void
.end method

.method private final M3()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "observeIME"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/ui/texttranslation/d0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/d0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    return-void
.end method

.method public static synthetic N0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic N1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/h;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    return-object p0
.end method

.method public static final synthetic N2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l4()V

    return-void
.end method

.method private static final N3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/a1$m;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object p1

    iget p1, p1, Lu/e;->d:I

    invoke-static {}, Landroidx/core/view/a1$m;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/a1;->r(I)Z

    move-result v0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a1:I

    const-string v1, "TextTranslationActivity"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "observeIME input show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Q3()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "observeIME input hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P3()V

    :goto_0
    return-object p2
.end method

.method public static synthetic O0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic O1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Li2/i;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T0:Li2/i;

    return-object p0
.end method

.method public static final synthetic O2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m4(Z)V

    return-void
.end method

.method private static final O3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q0:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "textSpeakIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static synthetic P0(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f3(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S0:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final P2()V
    .locals 7

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Q2()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method private final P3()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l4()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a4()V

    return-void
.end method

.method public static synthetic Q0(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d3(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic Q1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M0:Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;

    return-object p0
.end method

.method private final Q2()V
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g0:Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "frameRoot"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {p0}, Lcom/coloros/translate/utils/o0;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    aget v4, v0, v3

    sub-int v4, v1, v4

    iget v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u:I

    sub-int/2addr v4, v5

    iget v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v:I

    sub-int/2addr v4, v6

    iget v7, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z0:I

    sub-int/2addr v4, v7

    sget-object v8, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "defaultHeight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  extraHeight: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  navigationBarHeight: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TextTranslationActivity"

    invoke-virtual {v8, v6, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v5, v0, v3

    iget v7, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y0:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "array[1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  activity: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " screenHeight: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    const-string v5, "resultTV"

    if-nez v1, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget v7, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->x:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    invoke-static {}, Lcom/coloros/translate/utils/d1;->c()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g3()I

    move-result v7

    sub-int v7, v4, v7

    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMaxHeight(I)V

    aget v0, v0, v3

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j1:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G0:Lcom/coui/appcompat/textview/COUITextView;

    if-eqz v0, :cond_8

    if-nez v0, :cond_6

    const-string v0, "resultSignTV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxHeight()I

    move-result v0

    invoke-static {v0}, Lcom/coloros/translate/utils/d1;->f(I)V

    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g3()I

    move-result v0

    iget-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "limitMaxHeight: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  getExtraHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " showSoftInput\uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_9

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxHeight()I

    move-result v0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j1:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateMaxHeight: maxHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resultIsNotEmpty: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v6, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final Q3()V
    .locals 3

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V0:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "onSoftKeyboardShow reset usingAITranslate"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l4()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d4()V

    return-void
.end method

.method public static synthetic R0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U0:Ljava/lang/String;

    return-object p0
.end method

.method private final R2(Z)V
    .locals 9

    const/16 v0, 0x80

    const-string v1, "endSpeakFrame"

    const-string v2, "textSpeakIcon"

    const-string v3, "textSpeakIconLAV"

    const/16 v4, 0x8

    const-string v5, "waitingInputLAV"

    const-string v6, "inputET"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q0:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->b0()Landroidx/lifecycle/a0;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p0:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->r0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->V()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez p1, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v1, "getText(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez p1, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_5
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_6
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez p1, :cond_8

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v8, p1

    :goto_0
    invoke-virtual {v8, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_2

    :cond_9
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->r0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_a
    invoke-static {p1}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_b
    invoke-static {p1}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->r0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_c
    invoke-virtual {p1, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q0:Landroid/widget/ImageView;

    if-nez p1, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_d
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->b0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l1()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p0:Landroid/widget/LinearLayout;

    if-nez p1, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_e
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_f

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_f
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez p1, :cond_10

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v8

    :cond_10
    sget v1, Lcom/coloros/translate/R$string;->text_translation_input_hint_new:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez p1, :cond_11

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    move-object v8, p1

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {v8, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_2
    return-void
.end method

.method private final R3()V
    .locals 5

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->U()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->B0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C0:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "resultPlaySoundLAV"

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-static {v0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    :cond_3
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->i0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->A0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s0:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "oriPlaySoundLAV"

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    invoke-static {v0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X0:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v3, p0

    :goto_0
    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public static synthetic S0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic S1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V0:Z

    return p0
.end method

.method private final S2()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_8
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_a
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_b
    return-void
.end method

.method private final S3()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_0

    const-string v0, "resultTV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/ui/texttranslation/x;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/texttranslation/x;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic T0(Lw8/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i4(Lw8/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    return-object p0
.end method

.method private final T2()V
    .locals 7

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method private static final T3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    const/4 v1, 0x0

    const-string v2, "resultTV"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollY(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method

.method public static synthetic U0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic U1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U:Z

    return p0
.end method

.method private final U2()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const-string v2, "translateFrame"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v3, Lcom/coloros/translate/R$drawable;->frame_main_text:I

    invoke-static {p0, v3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v3, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$d;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$d;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j0:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private final U3(ZZ)V
    .locals 27

    move-object/from16 v1, p0

    move/from16 v0, p2

    iget-boolean v2, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D:Z

    const-string v3, "TextTranslationActivity"

    if-eqz v2, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "saveHistory fail for isPendingInsertHistory and return"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C:Z

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/texttranslation/p0;->j0()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "saveHistory fail for isResultSensitive and return"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v4, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    const-string v5, "inputET"

    if-nez v4, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_2
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    const-string v7, "resultTV"

    if-nez v4, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_4
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v8, "getText(...)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "saveHistory fail for content is empty and return"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v4, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v4, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_6
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v8, :cond_7

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_7
    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "saveHistory fail for maybe sensitive and return"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v8, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v8, :cond_9

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_9
    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveHistory to add history : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " , isAiTranslate : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v3, v8}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/coloros/translate/repository/local/TextHistory;

    iget-object v8, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v8, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_a
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v5, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v10

    iget-object v5, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    const-string v23, "ai"

    const-string v24, ""

    if-nez v0, :cond_c

    iget-boolean v8, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c1:Z

    if-eqz v8, :cond_b

    goto :goto_1

    :cond_b
    move-object/from16 v16, v24

    goto :goto_2

    :cond_c
    :goto_1
    move-object/from16 v16, v23

    :goto_2
    const-string v19, ""

    const/16 v20, 0x0

    const/16 v17, 0x0

    const-string v18, ""

    const-string v21, ""

    move-object v8, v12

    move-object v11, v7

    move-object v6, v12

    move-object v12, v5

    move-wide/from16 v25, v13

    move-object v5, v15

    move/from16 v15, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    move-wide/from16 v21, v25

    invoke-direct/range {v8 .. v22}, Lcom/coloros/translate/repository/local/TextHistory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    iput-object v6, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G:Lcom/coloros/translate/repository/local/TextHistory;

    :try_start_0
    sget-object v8, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/TextHistory;->getOriContent()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "historyDao"

    if-eqz v6, :cond_e

    :try_start_1
    iget-object v9, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T0:Li2/i;

    if-nez v9, :cond_d

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_d
    :goto_3
    iget-object v10, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v10}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Li2/i;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/translate/repository/local/TextHistory;

    move-result-object v6

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/coloros/translate/repository/local/TextHistory;->getOriContent()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_12

    const-string v4, "saveHistory update history"

    invoke-virtual {v5, v3, v4}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v4, v25

    invoke-virtual {v6, v4, v5}, Lcom/coloros/translate/repository/local/TextHistory;->setUpdateTimestamp(J)V

    if-eqz v0, :cond_f

    move-object/from16 v0, v23

    goto :goto_5

    :cond_f
    move-object/from16 v0, v24

    :goto_5
    invoke-virtual {v6, v0}, Lcom/coloros/translate/repository/local/TextHistory;->setExpandField1(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/coloros/translate/repository/local/TextHistory;->setResultContent(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T0:Li2/i;

    if-nez v0, :cond_10

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_10
    invoke-interface {v0, v6}, Li2/i;->c(Lcom/coloros/translate/repository/local/TextHistory;)V

    if-nez p1, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T0:Li2/i;

    if-nez v4, :cond_11

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_6

    :cond_11
    move-object v6, v4

    :goto_6
    invoke-interface {v6}, Li2/i;->h()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S0:Ljava/util/ArrayList;

    goto :goto_8

    :cond_12
    const-string v0, "saveHistory insert history"

    invoke-virtual {v5, v3, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C:Z

    iget-object v0, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G:Lcom/coloros/translate/repository/local/TextHistory;

    if-nez v0, :cond_13

    goto :goto_8

    :cond_13
    iget-object v4, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T0:Li2/i;

    if-nez v4, :cond_14

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_7

    :cond_14
    move-object v6, v4

    :goto_7
    iget-object v4, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G:Lcom/coloros/translate/repository/local/TextHistory;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v6, v4}, Li2/i;->d(Lcom/coloros/translate/repository/local/TextHistory;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/coloros/translate/repository/local/TextHistory;->setId(J)V

    :cond_15
    :goto_8
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :goto_9
    sget-object v4, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveHistory error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iput-boolean v2, v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D:Z

    return-void
.end method

.method public static synthetic V0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic V1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X0:Ljava/lang/String;

    return-object p0
.end method

.method private final V2()V
    .locals 4

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    iput-boolean v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V0:Z

    return-void
.end method

.method private final V3()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    const-string v1, "inputET"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "resultFrame"

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A0:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic W0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic W1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/o;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W:Lcom/coloros/translate/o;

    return-object p0
.end method

.method private final W2(Z)V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeTranslate isAITranslate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;ZLkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method private final W3()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDeleteConfirmDialog selectedCnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O:Z

    const-string v1, "getQuantityString(...)"

    const/4 v2, 0x1

    const-string v3, "getString(...)"

    if-eqz v0, :cond_0

    sget v0, Lcom/coloros/translate/R$string;->history_clear_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/coloros/translate/R$string;->if_remove_all_items:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N:I

    if-ne v0, v2, :cond_2

    sget v0, Lcom/coloros/translate/R$string;->if_delete_one_item:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/coloros/translate/R$plurals;->if_delete_item:I

    iget v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-boolean v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O:Z

    if-eqz v4, :cond_3

    sget v1, Lcom/coloros/translate/R$string;->history_clear_content:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P:Z

    if-eqz v4, :cond_4

    sget v1, Lcom/coloros/translate/R$string;->remove_all_items:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N:I

    if-ne v4, v2, :cond_5

    sget v1, Lcom/coloros/translate/R$string;->delete_one_item:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$plurals;->delete_item:I

    iget v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    new-instance v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    move-result-object v2

    new-instance v3, Lcom/coloros/translate/ui/texttranslation/z;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/texttranslation/z;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/c$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O:Z

    if-eqz v1, :cond_6

    sget v1, Lcom/coloros/translate/R$string;->clear:I

    goto :goto_2

    :cond_6
    sget v1, Lcom/coloros/translate/R$string;->action_delete:I

    :goto_2
    new-instance v2, Lcom/coloros/translate/ui/texttranslation/a0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/texttranslation/a0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    sget v1, Lcom/coloros/translate/base/R$string;->action_cancel:I

    new-instance v2, Lcom/coloros/translate/ui/texttranslation/b0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/texttranslation/b0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Q:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic X0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic X1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    return-object p0
.end method

.method static synthetic X2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W2(Z)V

    return-void
.end method

.method private static final X3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a3()V

    return-void
.end method

.method public static synthetic Y0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic Y1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b1:I

    return p0
.end method

.method private final Y2()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_0

    const-string v0, "resultTV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/coloros/translate/widget/k;->c:Lcom/coloros/translate/widget/k$b;

    invoke-virtual {v1}, Lcom/coloros/translate/widget/k$b;->a()Lcom/coloros/translate/widget/k;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$string;->translation_result_copied:I

    invoke-virtual {v1, p0, v0, v2}, Lcom/coloros/translate/widget/k;->d(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private static final Y3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T2()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P:Z

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T2()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z2()V

    :goto_0
    return-void
.end method

.method public static synthetic Z0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c4(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    return-object p0
.end method

.method private final Z2()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v4

    new-instance v6, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;

    const/4 v2, 0x0

    invoke-direct {v6, p0, v0, v1, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;JLkotlin/coroutines/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method private static final Z3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O:Z

    return-void
.end method

.method public static synthetic a1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Q0:Landroid/view/MenuItem;

    return-object p0
.end method

.method private final a3()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Q:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Q:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private final a4()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P2()V

    return-void
.end method

.method public static synthetic b1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C:Z

    return p0
.end method

.method private final b3()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "enlargeContext"

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/texttranslation/EnlargeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v1, :cond_0

    const-string v1, "resultTV"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "enlarge_text"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "enlarge_language_ori"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "enlarge_language_result"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l1:Landroidx/activity/result/b;

    sget v3, Lcom/coloros/translate/R$anim;->slide_in_right:I

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroidx/core/app/b;->a(Landroid/content/Context;II)Landroidx/core/app/b;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroidx/activity/result/b;->b(Ljava/lang/Object;Landroidx/core/app/b;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final b4(II)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "showResultFrameAnimation"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/coloros/translate/ui/texttranslation/v;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/texttranslation/v;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n0;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void
.end method

.method public static synthetic c1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    return-object p0
.end method

.method private final c3(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/y;

    invoke-direct {v1, p1}, Lcom/coloros/translate/ui/texttranslation/y;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$g;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$g;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g1:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final c4(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    const-string v2, "resultFrame"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A0:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public static synthetic d1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s0:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private static final d3(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$imageView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final d4()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showShrinkAnimation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P2()V

    return-void
.end method

.method public static synthetic e1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    return-void
.end method

.method public static final synthetic e2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/constraintlayout/widget/Group;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E0:Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method private final e3(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/u;

    invoke-direct {v1, p1}, Lcom/coloros/translate/ui/texttranslation/u;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h1:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static final e4(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public static synthetic f1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic f2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A0:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method private static final f3(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$imageView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final f4()V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->B0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->A0()V

    return-void
.end method

.method public static synthetic g1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic g2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    return-object p0
.end method

.method private final g3()I
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w:I

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez p0, :cond_0

    const-string p0, "resultSignTV"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v:I

    :goto_0
    return v0
.end method

.method private final g4()Z
    .locals 3

    sget-object v0, Lcom/coloros/translate/repository/local/a;->INSTANCE:Lcom/coloros/translate/repository/local/a;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/repository/local/a;->a(Ljava/lang/String;)Z

    move-result p0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportLLM llm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static synthetic h1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->r3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic h2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C0:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private final h3()Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m1:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/GestureDetector;

    return-object p0
.end method

.method private final h4()V
    .locals 6

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TextTranslationActivity"

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "toTranslate return for AI translate"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "inputET"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X0:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x7cb

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "toTranslate removeMessages"

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/texttranslation/p0;->e0()Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/texttranslation/p0;->e0()Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m4(Z)V

    const-string p0, "toTranslate return , input is null"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "toTranslate return , aiunit not ready"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X0:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v5, "obtainMessage(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/texttranslation/p0;->e0()Landroidx/lifecycle/a0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i1:Lh5/c;

    if-nez v1, :cond_5

    const-string v1, "languageIdentifier"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X0:Ljava/lang/String;

    invoke-interface {v3, v1}, Lh5/c;->V(Ljava/lang/String;)Lw3/i;

    move-result-object v1

    new-instance v3, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$o0;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$o0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/w;

    invoke-direct {v4, v3}, Lcom/coloros/translate/ui/texttranslation/w;-><init>(Lw8/l;)V

    invoke-virtual {v1, v4}, Lw3/i;->d(Lw3/f;)Lw3/i;

    :cond_6
    iget-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "toTranslate sendMessage without delay"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "toTranslate sendMessage delay"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public static synthetic i1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    return-object p0
.end method

.method private final i3()Lcom/coloros/translate/LanguageManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/LanguageManager;

    return-object p0
.end method

.method private static final i4(Lw8/l;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic j1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e4(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static final synthetic j2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e1:Z

    return p0
.end method

.method private final j3()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U0:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleBlankInput] inputContent isBlank: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U0:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->b0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l1()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->b0()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final j4(Ljava/lang/Integer;)V
    .locals 7

    const-string v0, "historyAdapter"

    const-string v1, "historyFrame"

    const/16 v2, 0x8

    const-string v3, "normalFrame"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v5

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i0:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v5

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez p0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, p0

    :goto_0
    invoke-virtual {v5, v6}, Lcom/coloros/translate/ui/texttranslation/h;->v(Z)V

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v5

    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i0:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v5

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/coloros/translate/widget/LanguageChooseView;->s()V

    :cond_7
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez p0, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v5, p0

    :goto_2
    invoke-virtual {v5, v4}, Lcom/coloros/translate/ui/texttranslation/h;->v(Z)V

    :goto_3
    return-void
.end method

.method public static synthetic k1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic k2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P:Z

    return p0
.end method

.method private static final k3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/os/Message;)Z
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "reset movement method"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez p1, :cond_0

    const-string p1, "resultTV"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S3()V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f1:Z

    if-eqz p1, :cond_5

    const-string p1, "reset movement method, recreate and calculate"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f1:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P2()V

    goto/16 :goto_4

    :pswitch_1
    const-wide/16 p0, 0x0

    sget-object v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$j;->INSTANCE:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$j;

    invoke-static {p0, p1, v0, v1, v4}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v5, :cond_1

    const-string v5, "inputET"

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X0:Ljava/lang/String;

    new-instance v4, Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {v4}, Lcom/coloros/translate/repository/local/Conversation;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/coloros/translate/repository/local/Conversation;->setId(J)V

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/translate/repository/local/Conversation;->setFromLanguage(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/translate/repository/local/Conversation;->setToLanguage(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X0:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handler oriLanguage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , resultLanguage : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coloros/translate/utils/c0$a;->l()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handler fromText : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v5, 0x7cb

    if-eq p1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c1:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handler lastResultAI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    if-ne p1, v5, :cond_4

    const-string p1, "aiunit_translate"

    goto :goto_3

    :cond_4
    const-string p1, "aiunit_stream_translate"

    :goto_3
    invoke-virtual {p0, v4, p1}, Lcom/coloros/translate/ui/texttranslation/p0;->C0(Lcom/coloros/translate/repository/local/Conversation;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return v3

    :pswitch_data_0
    .packed-switch 0x7cb
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private final k4()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "historyNormalLayout"

    const-string v3, "emptyGuideTv"

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, p0

    :goto_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v5

    :cond_5
    iget-boolean v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U:Z

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_7

    const-string p0, "emptyImg"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v5, p0

    :goto_3
    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :goto_4
    return-void
.end method

.method private final l1()Z
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g4()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, "inputET"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "getText(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U0:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic l2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E:Z

    return p0
.end method

.method private final l3()V
    .locals 4

    invoke-static {p0}, Lcom/coloros/translate/utils/o0;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y0:I

    sget-object v0, Lcom/coloros/translate/utils/i1;->a:Lcom/coloros/translate/utils/i1$a;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/utils/i1$a;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z0:I

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y0:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initConfig navigationBarHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " screenHeight: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextTranslationActivity"

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final l4()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "clearOriBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-boolean v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U:Z

    const-string v2, "oriPlaySoundLAV"

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    const-string v0, "endSpeakFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U0:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->b0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l1()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic m1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l1()Z

    move-result p0

    return p0
.end method

.method public static final synthetic m2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    return-object p0
.end method

.method private final m3()V
    .locals 7

    sget-object v0, Li2/a;->INSTANCE:Li2/a;

    invoke-virtual {v0}, Li2/a;->f()Lcom/coloros/translate/repository/local/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/AppDatabase;->v()Li2/i;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T0:Li2/i;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$k;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$k;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method private final m4(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D0:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "waitingResultLAV"

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-static {v0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V:Z

    const-string v4, "TextTranslationActivity"

    const/4 v5, 0x0

    if-eq v0, p1, :cond_9

    sget-object v6, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateResultFrameStatus resultStatusEmpty : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V:Z

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A0:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_3

    const-string v0, "resultFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    if-eqz p1, :cond_4

    move v6, v2

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z0:Landroid/view/View;

    if-nez v0, :cond_5

    const-string v0, "divider"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    if-eqz p1, :cond_6

    move v6, v2

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v5

    :goto_2
    if-eqz p1, :cond_9

    if-nez v0, :cond_9

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez p1, :cond_8

    const-string p1, "resultTV"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_8
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b1:I

    if-lez p1, :cond_a

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v6, "updateResultFrameStatus reset lastResultLength"

    invoke-virtual {p1, v4, v6}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b1:I

    :cond_a
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F0:Landroidx/constraintlayout/widget/Group;

    if-nez p1, :cond_b

    const-string p1, "resultAiSignGroup"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_b
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/coloros/translate/utils/d1;->INSTANCE:Lcom/coloros/translate/utils/d1;

    invoke-virtual {v4}, Lcom/coloros/translate/utils/d1;->d()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v5

    goto :goto_3

    :cond_c
    move v2, v6

    :cond_d
    :goto_3
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E0:Landroidx/constraintlayout/widget/Group;

    if-nez p1, :cond_e

    const-string p1, "resultBtnGroup"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move-object v3, p1

    :goto_4
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result p1

    if-nez p1, :cond_11

    :cond_f
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_5

    :cond_10
    move v5, v6

    :cond_11
    :goto_5
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic n1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P2()V

    return-void
.end method

.method public static final synthetic n2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private final n3()V
    .locals 5

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/h;

    invoke-direct {v0}, Lcom/coloros/translate/ui/texttranslation/h;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "normalFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v2, Lcom/coloros/translate/R$id;->list_history_recyclerview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_1

    const-string v0, "historyNormalRV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    const-string v4, "historyAdapter"

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    const-string v0, "historyFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    sget v3, Lcom/coloros/translate/R$id;->list_history_recyclerview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M0:Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;

    const-string v2, "historyRV"

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->setPercentIndentEnabled(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M0:Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez v2, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_6
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez v0, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    new-instance v2, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v2}, Lcom/coloros/translate/ui/texttranslation/h;->w(Lw8/l;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez v0, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    new-instance v2, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v2}, Lcom/coloros/translate/ui/texttranslation/h;->x(Lw8/l;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez v0, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v1, v0}, Lcom/coloros/translate/ui/texttranslation/h;->y(Lw8/l;)V

    return-void
.end method

.method public static final synthetic o1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R2(Z)V

    return-void
.end method

.method public static final synthetic o2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t0:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private final o3()V
    .locals 9

    sget v0, Lcom/coloros/translate/R$id;->frame_none_histories:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    sget v0, Lcom/coloros/translate/R$id;->empty_img:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "emptyGuideTv"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;->setPercentIndentEnabled(Z)V

    sget v0, Lcom/coloros/translate/R$id;->frame_history:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i0:Landroid/widget/RelativeLayout;

    const-string v3, "historyFrame"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v4, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const-string v4, "toolbarHistory"

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/coloros/translate/R$plurals;->mark_selected_item:I

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    sget v5, Lcom/coloros/translate/R$menu;->history_list_selected_mode_menu:I

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v5, Lcom/coloros/translate/R$id;->action_select_cancel:I

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v5, "findItem(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R0:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v4, Lcom/coloros/translate/R$id;->action_select_all:I

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Q0:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/p;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/p;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-static {v0, v4}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R0:Landroid/view/MenuItem;

    if-nez v0, :cond_6

    const-string v0, "menuCancel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/q;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/q;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Q0:Landroid/view/MenuItem;

    if-nez v0, :cond_7

    const-string v0, "menuSelect"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/r;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/r;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    sget v4, Lcom/coloros/translate/R$id;->delete:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    sget v3, Lcom/coloros/translate/R$id;->deleteTv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v7, v2}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v3

    const-string v4, "deleteLayout"

    if-nez v3, :cond_a

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O0:Landroid/widget/LinearLayout;

    if-nez v3, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_b
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x2

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_c
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    new-instance v3, Lcom/coloros/translate/ui/texttranslation/s;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/texttranslation/s;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/coloros/translate/R$id;->navigation_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b0:Landroid/view/View;

    const-string v1, "navigationBarView"

    if-nez v0, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_f

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    :cond_f
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_11

    iget v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z0:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b0:Landroid/view/View;

    if-nez p0, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_11
    return-void
.end method

.method public static final synthetic p1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U2()V

    return-void
.end method

.method public static final synthetic p2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D0:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private static final p3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/a1$m;->e()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object p1

    iget p1, p1, Lu/e;->b:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez p0, :cond_0

    const-string p0, "toolbarHistory"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public static final synthetic q1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    return-void
.end method

.method public static final synthetic q2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j3()V

    return-void
.end method

.method private static final q3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "historyAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/h;->l()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$o;

    invoke-direct {v4, p0, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$o;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    const/4 p0, 0x1

    return p0
.end method

.method public static final synthetic r1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W2(Z)V

    return-void
.end method

.method public static final synthetic r2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F:Z

    return p0
.end method

.method private static final r3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P:Z

    const/4 v0, 0x0

    const-string v1, "historyAdapter"

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/h;->l()V

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/h;->t()V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final synthetic s1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a3()V

    return-void
.end method

.method public static final synthetic s2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I3()Z

    move-result p0

    return p0
.end method

.method private static final s3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
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
    iget p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N:I

    if-nez p1, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslationActivity"

    const-string v0, "select nothing and return"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W3()V

    return-void
.end method

.method public static final synthetic t1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c3(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final synthetic t2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private final t3()V
    .locals 27

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    const-string v1, "normalFrame"

    const/4 v8, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_0
    sget v2, Lcom/coloros/translate/R$id;->ori_play_sound:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    const-string v0, "oriPlaySoundLAV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_1
    new-instance v3, Lcom/coloros/translate/ui/texttranslation/j0;

    invoke-direct {v3, v7}, Lcom/coloros/translate/ui/texttranslation/j0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_2
    sget v3, Lcom/coloros/translate/R$id;->text_speak_frame:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    const-string v0, "endSpeakFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_3
    new-instance v3, Lcom/coloros/translate/ui/texttranslation/j;

    invoke-direct {v3, v7}, Lcom/coloros/translate/ui/texttranslation/j;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_4
    sget v3, Lcom/coloros/translate/R$id;->lottie_text_speak:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->r0:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_5
    sget v3, Lcom/coloros/translate/R$id;->waiting_input:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t0:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_6
    sget v3, Lcom/coloros/translate/R$id;->result_play_sound:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_7

    const-string v0, "resultPlaySoundLAV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_7
    new-instance v3, Lcom/coloros/translate/ui/texttranslation/k;

    invoke-direct {v3, v7}, Lcom/coloros/translate/ui/texttranslation/k;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_8
    sget v3, Lcom/coloros/translate/R$id;->waiting_result:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D0:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_9
    sget v3, Lcom/coloros/translate/R$id;->result_btn_group:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E0:Landroidx/constraintlayout/widget/Group;

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_a
    sget v1, Lcom/coloros/translate/R$id;->ai_sign_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F0:Landroidx/constraintlayout/widget/Group;

    sget v0, Lcom/coloros/translate/R$id;->frame_translate:I

    invoke-virtual {v7, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j0:Landroid/widget/RelativeLayout;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I3()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v9, Lcom/oplus/vfxsdk/rsview/g;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "frame.coz"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/vfxsdk/rsview/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/oplus/vfxsdk/rsview/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v10, -0x62

    const/16 v11, -0x36

    invoke-virtual {v9, v10, v11}, Lcom/oplus/vfxsdk/rsview/g;->h(II)Lcom/oplus/vfxsdk/rsview/g;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_24:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    const-string v12, "rectCorner"

    invoke-virtual {v9, v12, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x3df5c28f    # 0.12f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    const-string v13, "marginAlpha"

    invoke-virtual {v9, v13, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_16:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    const-string v14, "margin"

    invoke-virtual {v9, v14, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    const-string v15, "lineWidth"

    invoke-virtual {v9, v15, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    const-string v6, "contentAlpha"

    invoke-virtual {v9, v6, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    const v17, 0x3d4ccccd    # 0.05f

    const-string v5, "contentColor"

    if-eqz v0, :cond_b

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v9}, Lcom/oplus/vfxsdk/rsview/g;->d()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const/4 v4, 0x0

    const-string v3, "rotateSpeed"

    if-eqz v0, :cond_c

    invoke-static {v0, v3, v4}, Lcom/coloros/translate/ui/texttranslation/i;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    :cond_c
    iput-object v9, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k0:Lcom/oplus/vfxsdk/rsview/g;

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_d

    const-string v0, "translateFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    move-object v8, v0

    :goto_1
    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k0:Lcom/oplus/vfxsdk/rsview/g;

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lcom/oplus/vfxsdk/rsview/g;

    new-instance v9, Lcom/oplus/vfxsdk/rsview/p;

    const/16 v23, 0xe

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v24}, Lcom/oplus/vfxsdk/rsview/p;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v2, "ai_frame.coz"

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v25, v3

    move/from16 v3, v20

    move-object v4, v9

    move-object v9, v5

    move/from16 v5, v18

    move-object/from16 v26, v6

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/oplus/vfxsdk/rsview/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/oplus/vfxsdk/rsview/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v10, v11}, Lcom/oplus/vfxsdk/rsview/g;->h(II)Lcom/oplus/vfxsdk/rsview/g;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_24:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x3e99999a    # 0.3f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_16:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->dp_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v15, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v8, v1, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v8}, Lcom/oplus/vfxsdk/rsview/g;->d()Landroid/graphics/RuntimeShader;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object/from16 v2, v25

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/coloros/translate/ui/texttranslation/i;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    :cond_f
    iput-object v8, v7, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l0:Lcom/oplus/vfxsdk/rsview/g;

    goto :goto_3

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U2()V

    :goto_3
    return-void
.end method

.method public static final synthetic u1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e3(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final synthetic u2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S3()V

    return-void
.end method

.method private static final u3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->U()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->B0()V

    :cond_2
    invoke-static {}, Lx9/c;->c()Lx9/c;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/utils/d0;

    const-string v1, "TextTranslationWantToPlayTts"

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lx9/c;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->o0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    return-void
.end method

.method public static final synthetic v1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v0:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic v2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U3(ZZ)V

    return-void
.end method

.method private static final v3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    return-void
.end method

.method public static final synthetic w1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w0:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic w2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V3()V

    return-void
.end method

.method private static final w3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->i0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->A0()V

    :cond_2
    sget-object p1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v1

    const-string v2, "event_tts_for_words"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-static {}, Lx9/c;->c()Lx9/c;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/utils/d0;

    const-string v1, "TextTranslationWantToPlayTts"

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lx9/c;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->p0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    return-void
.end method

.method public static final synthetic x1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static final synthetic x2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d1:Ljava/lang/String;

    return-void
.end method

.method private final x3()V
    .locals 8

    sget v0, Lcom/coloros/translate/R$id;->frame_normal:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    const-string v2, "normalFrame"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    sget v4, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const-string v4, "toolBar"

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    sget v5, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/e0;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/e0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    sget v4, Lcom/coloros/translate/R$id;->choose_language:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/widget/LanguageChooseView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d0:Lcom/coloros/translate/widget/LanguageChooseView;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    sget v4, Lcom/coloros/translate/R$id;->choose_language_tablet:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/widget/LanguageChooseView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e0:Lcom/coloros/translate/widget/LanguageChooseView;

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v6, "languageChooseViewTablet"

    const-string v7, "languageChooseView"

    if-nez v0, :cond_9

    const/4 v0, 0x1

    invoke-static {v3, v0, v3}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_6

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    invoke-virtual {v0, v5}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7
    invoke-virtual {v0, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_8

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_8
    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    goto :goto_1

    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_a

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_a
    invoke-virtual {v0, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_b

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_b
    invoke-virtual {v0, v5}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_c

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_c
    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v0, :cond_e

    sget v4, Lcom/coloros/translate/R$id;->switchButton:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X:Landroid/widget/ImageView;

    if-nez v4, :cond_d

    const-string v4, "pickerSwitchButton"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v3

    :cond_d
    sget v5, Lcom/coloros/translate/R$drawable;->switch_language_arrow:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v4, Lcom/coloros/translate/o;

    invoke-direct {v4, p0}, Lcom/coloros/translate/o;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W:Lcom/coloros/translate/o;

    sget v5, Lcom/coloros/translate/R$drawable;->switch_language_arrow:I

    invoke-virtual {v4, v5}, Lcom/coloros/translate/o;->E(I)V

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$p;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$p;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnFromLangeClickListener(Lw8/l;)V

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$q;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$q;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnToLangeClickListener(Lw8/l;)V

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$r;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$r;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnSwitchClickListener(Lw8/l;)V

    :cond_e
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_f
    sget v4, Lcom/coloros/translate/R$id;->copy:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y:Landroid/widget/ImageView;

    if-nez v0, :cond_10

    const-string v0, "copyIV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_10
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/f0;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/f0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_11
    sget v4, Lcom/coloros/translate/R$id;->enlarge:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z:Landroid/widget/ImageView;

    if-nez v0, :cond_12

    const-string v0, "enlargeIV"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_12
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/g0;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/g0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_13

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_13
    sget v4, Lcom/coloros/translate/R$id;->divider:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z0:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_14
    sget v4, Lcom/coloros/translate/R$id;->frame_histories:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H0:Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;

    if-nez v0, :cond_15

    const-string v0, "historyNormalLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_15
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/grid/COUIPercentWidthRelativeLayout;->setPercentIndentEnabled(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_16
    sget v4, Lcom/coloros/translate/R$id;->clear_ori:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o0:Landroid/widget/ImageView;

    if-nez v0, :cond_17

    const-string v0, "clearOriBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_17
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/h0;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/h0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_18

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_18
    sget v4, Lcom/coloros/translate/R$id;->ai_btn:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u0:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_19

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_19
    sget v4, Lcom/coloros/translate/R$id;->ai_btn_bg_nor:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v0:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1a

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1a
    sget v4, Lcom/coloros/translate/R$id;->ai_btn_bg_on:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w0:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1b

    const-string v0, "aiBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1b
    new-instance v4, Lcom/coloros/translate/ui/texttranslation/i0;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/texttranslation/i0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1c

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1c
    sget v4, Lcom/coloros/translate/R$id;->ai_btn_icon:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->x0:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_1d
    move-object v3, v0

    :goto_2
    sget v0, Lcom/coloros/translate/R$id;->ai_content:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static final synthetic y1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method public static final synthetic y2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S0:Ljava/util/ArrayList;

    return-void
.end method

.method private static final y3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->onBackPressed()V

    return-void
.end method

.method public static final synthetic z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->x0:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic z2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U0:Ljava/lang/String;

    return-void
.end method

.method private static final z3(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y2()V

    sget-object p1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v1

    const-string v2, "event_copy_for_words"

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    return-void
.end method


# virtual methods
.method public F0(Landroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->F0(Landroid/content/Intent;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "dispatchIntentActions"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/e;->l(Lcom/coloros/translate/observer/e$a;)V

    new-instance v0, Lh5/b$a;

    invoke-direct {v0}, Lh5/b$a;-><init>()V

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Lh5/b$a;->b(F)Lh5/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lh5/b$a;->a()Lh5/b;

    move-result-object v0

    invoke-static {v0}, Lh5/a;->a(Lh5/b;)Lh5/c;

    move-result-object v0

    const-string v1, "getClient(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i1:Lh5/c;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i1:Lh5/c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "languageIdentifier"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    const/16 v1, 0x7cc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v3, "obtainMessage(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xd8a90a2

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "coloros.intent.action.TEXT_TRANS_SHORTCUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "3"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->F(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    const-string p0, "extra_from"

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    const-string v1, "from_home"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->F(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    const-string p0, "from_cube"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "5"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->F(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "4"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->F(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->K3(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_3

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    const/4 v1, 0x2

    new-array v1, v1, [I

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-ltz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gez v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    :cond_2
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "closeSoftInput error"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public i(Ljava/lang/Boolean;)V
    .locals 9

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguageChanged isFromLanguageChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i3()Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i3()Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f4()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "onLanguageChanged stop AI Translate"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1, v4}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/coloros/translate/ui/texttranslation/p0;->E0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(I)V

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(I)V

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i3()Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->B()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_4

    sget v6, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {v1, v6}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(I)V

    :cond_4
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_5

    sget v7, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {v1, v7}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(I)V

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_6

    sget v5, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {v1, v5}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(I)V

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_7

    sget v5, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {v1, v5}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(I)V

    :cond_7
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v5, ""

    const-string v6, "textSpeakIcon"

    const/4 v7, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q0:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v7

    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p0:Landroid/widget/LinearLayout;

    if-nez v1, :cond_9

    const-string v1, "endSpeakFrame"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v7

    :cond_9
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->Y()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_b

    const-string v1, "resultPlaySoundLAV"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v7

    :cond_b
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_0
    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1, v5}, Lcom/coloros/translate/ui/texttranslation/p0;->v0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->h4()V

    :cond_d
    iget-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W0:Z

    if-eqz v1, :cond_e

    if-eqz p1, :cond_f

    :cond_e
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    const-string v1, "onLanguageChanged startMic performClick"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W0:Z

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q0:Landroid/widget/ImageView;

    if-nez v0, :cond_10

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    move-object v7, v0

    :goto_1
    new-instance v0, Lcom/coloros/translate/ui/texttranslation/o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/texttranslation/o;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    if-eqz p1, :cond_12

    sget-object p1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p0

    const-string v2, "event_switch_language_for_words"

    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_12
    return-void
.end method

.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/ui/texttranslation/p0;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_new_text_translation:I

    return p0
.end method

.method public onBackPressed()V
    .locals 7

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$j0;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$j0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/coloros/translate/utils/d1;->e()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isSplitScreen: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextTranslationActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/utils/d1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "screen split"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "screen normal"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/coloros/translate/utils/d1;->a()V

    invoke-static {p0}, Lcom/coloros/translate/utils/o0;->a(Landroid/content/Context;)I

    move-result v0

    iget v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y0:I

    if-ne v0, v2, :cond_1

    const-string p0, "onConfigurationChanged:screen size is not change!"

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l3()V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b0:Landroid/view/View;

    const-string v0, "navigationBarView"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    iget v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z0:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b0:Landroid/view/View;

    if-nez p0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l3()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_start_mic"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W0:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate startMic : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TextTranslationActivity"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M3()V

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W0:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez p1, :cond_0

    const-string p1, "inputET"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/screen/utils/o;->b(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/o0;->b()Lkotlinx/coroutines/y;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$k0;

    invoke-direct {v4, p0, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$k0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    invoke-static {}, Lx9/c;->c()Lx9/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lx9/c;->o(Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->c()V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m0;

    invoke-static {p0}, Lg2/a;->e(Lg2/a$a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->onDestroy()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onDestroy"

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/utils/d1;->a()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    sget-object v1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coloros/translate/observer/e;->n(Lcom/coloros/translate/observer/e$a;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k1:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onDestroy cancelStreamTranslate"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v4}, Lcom/coloros/translate/ui/texttranslation/p0;->K(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1, p0}, Lcom/coloros/translate/ui/texttranslation/p0;->r0(Landroidx/lifecycle/s;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S2()V

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H:Lcom/oplus/view/inputmethod/OplusInputMethodObserver;

    if-eqz v1, :cond_1

    const-string v1, "onDestroy unregisterInputMethodObserver"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->getInstance()Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H:Lcom/oplus/view/inputmethod/OplusInputMethodObserver;

    invoke-virtual {v0, v1}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->unregisterInputMethodObserver(Lcom/oplus/view/inputmethod/OplusInputMethodObserver;)Z

    iput-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H:Lcom/oplus/view/inputmethod/OplusInputMethodObserver;

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    const-string v1, "resultTV"

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->g()V

    invoke-static {}, Lx9/c;->c()Lx9/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx9/c;->q(Ljava/lang/Object;)V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->q0()Lcom/coloros/translate/utils/n$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/translate/utils/n;->i0(Lcom/coloros/translate/utils/n$a;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v0, :cond_3

    const-string v0, "inputET"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B0:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m0;

    invoke-static {p0}, Lg2/a;->f(Lg2/a$a;)V

    return-void
.end method

.method public final onMessageEvent(Lcom/coloros/translate/utils/e0;)V
    .locals 0
    .annotation runtime Lx9/m;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const/4 p0, 0x0

    throw p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslationActivity"

    const-string v0, "onNewIntent"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 12

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "onPause"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B:J

    sub-long/2addr v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x30

    const/4 v11, 0x0

    const-string v5, "event_showtime_for_words"

    const-string v6, "result"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v11}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i3()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->l()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->D0()V

    sget-object v0, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {v0}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/permission/a;->h()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R3()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onRestoreInstanceState"

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_selected_list"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    invoke-static {v4}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v5

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v6

    new-instance v8, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l0;

    invoke-direct {v8, p0, v1, v3}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;[ILkotlin/coroutines/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    :cond_0
    const-string v1, "extra_start_mic"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W0:Z

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "extra_using_ai"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    const-string v4, "extra_translate_done"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/coloros/translate/ui/texttranslation/p0;->z0(Z)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W0:Z

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestoreInstanceState startMic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , usingAITranslate : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , streamTranslateDone : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    const-string v0, "inputET"

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n0:Landroid/widget/EditText;

    if-nez v1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f1:Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B:J

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->K:F

    const/16 v1, 0x3e8

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v0, v1

    iput-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L:J

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i3()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/LanguageManager;->O(Lcom/coloros/translate/d;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->q0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l4()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k4()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->a0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j4(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "onSaveInstanceState"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N0:Lcom/coloros/translate/ui/texttranslation/h;

    if-nez v0, :cond_0

    const-string v0, "historyAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/h;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->q0(Ljava/util/Collection;)[I

    move-result-object v0

    const-string v1, "extra_selected_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "extra_start_mic"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "extra_using_ai"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result p0

    const-string v0, "extra_translate_done"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->h0()Landroidx/lifecycle/a0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->k0()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public x0()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationActivity"

    const-string v2, "onNetLost"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/coloros/translate/R$string;->no_network:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V2()V

    :cond_0
    return-void
.end method
