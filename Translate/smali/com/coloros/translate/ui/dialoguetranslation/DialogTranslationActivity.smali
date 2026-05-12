.class public final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;
.super Lcom/coloros/translate/base/BaseEarPhoneActivity;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/d;


# annotations
.annotation runtime Lcom/coloros/translate/ui/earphone/ConfigAudioChange;
.end annotation

.annotation runtime Lcom/coloros/translate/ui/earphone/ConfigEarControl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;,
        Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BaseEarPhoneActivity<",
        "Lcom/coloros/translate/ui/dialoguetranslation/i0;",
        ">;",
        "Lcom/coloros/translate/d;"
    }
.end annotation


# static fields
.field public static final O0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;

.field private static P0:Ljava/lang/Boolean;

.field private static Q0:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/ActionMode;

.field private A0:Landroid/widget/ImageView;

.field private B:J

.field private B0:Landroid/widget/TextView;

.field private C:Landroid/os/Vibrator;

.field private C0:Landroid/widget/TextView;

.field private D:I

.field private D0:Landroid/widget/TextView;

.field private E:I

.field private E0:Landroidx/constraintlayout/helper/widget/Flow;

.field private F:I

.field private F0:Landroid/widget/TextView;

.field private G:I

.field private G0:Lcom/airbnb/lottie/LottieAnimationView;

.field private H:J

.field private H0:Z

.field private I:I

.field private I0:Lcom/coui/appcompat/textview/COUITextView;

.field private J:Landroidx/appcompat/app/c;

.field private J0:Lcom/airbnb/lottie/LottieAnimationView;

.field private K:Z

.field private K0:Lcom/coui/appcompat/textview/COUITextView;

.field private L:I

.field private L0:Lcom/coloros/translate/repository/local/Conversation;

.field private M:Z

.field private M0:Z

.field private N:Z

.field private final N0:Landroid/os/Handler;

.field private O:Lcom/coloros/translate/o;

.field private P:Landroid/view/MenuItem;

.field private Q:Landroid/view/MenuItem;

.field private R:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field private S:Lcom/coloros/translate/b;

.field private T:Lcom/coloros/translate/b;

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Lcom/coloros/translate/ui/simultaneous/main/i;

.field private Z:Landroid/widget/LinearLayout;

.field private a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private b0:Lcom/google/android/material/appbar/AppBarLayout;

.field private c0:Landroid/view/View;

.field private d0:Landroid/widget/TextView;

.field private e0:Lcom/airbnb/lottie/LottieAnimationView;

.field private f0:Landroid/widget/ImageView;

.field private g0:Lcom/coloros/translate/widget/LanguageChooseView;

.field private h0:Lcom/coloros/translate/widget/LanguageChooseView;

.field private i0:Lcom/coloros/translate/widget/LanguageChooseView;

.field private j0:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

.field private l0:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

.field private n0:Lw1/c;

.field private o0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

.field private p0:Landroid/view/View;

.field private q0:Landroid/view/View;

.field private r0:Landroid/widget/TextView;

.field private s0:Lcom/coui/appcompat/textview/COUITextView;

.field private final t0:Ln8/j;

.field private u0:Lcom/coloros/translate/repository/local/Conversation;

.field private final v0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$r;

.field private w0:Landroidx/appcompat/app/c;

.field private final x0:Ln8/j;

.field private final y0:Lcom/coloros/translate/utils/n$a;

.field private z0:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;

    const-string v0, ""

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L:I

    sget-object v0, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/i;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/main/i;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y:Lcom/coloros/translate/ui/simultaneous/main/i;

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$o;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$o;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->t0:Ln8/j;

    new-instance v0, Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {v0}, Lcom/coloros/translate/repository/local/Conversation;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u0:Lcom/coloros/translate/repository/local/Conversation;

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$r;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$r;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$r;

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$q;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$q;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x0:Ln8/j;

    new-instance v0, Lcom/coloros/translate/utils/n$a;

    invoke-direct {v0}, Lcom/coloros/translate/utils/n$a;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y0:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;

    invoke-direct {v1, p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic A1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    return-object p0
.end method

.method public static final synthetic A2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Ln8/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V3(Ln8/q;)V

    return-void
.end method

.method private final A3()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "setRecordingButtonRunningState"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    const-string v1, "mRecordingButtonSpeakIcon"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget v3, Lcom/coloros/translate/R$drawable;->mic_stop_button:I

    invoke-static {p0, v3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/coloros/translate/R$string;->click_to_stop_speak:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->d0:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v0, "mRecordingTips"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    sget v1, Lcom/coloros/translate/R$string;->click_to_stop_speak:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L3()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_3

    const-string v0, "mRecordingButtonLottie"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F3()V

    :cond_4
    return-void
.end method

.method public static final synthetic B1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->H:J

    return-wide v0
.end method

.method private final B2()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "DialogTranslationActivity"

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "addOutScreenView -> mOutScreenView is null or parent not null"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOutScreenView   mOutScreenView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$layout;->dailoague_content_layout_out_screen:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    invoke-virtual {v1, p0, v3}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->f(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U2()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->k()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U3(Z)V

    goto :goto_1

    :cond_2
    const-string v1, "addOutScreenView fail"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w0:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->n3()V

    :goto_1
    return-void
.end method

.method private final B3()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const-string v1, "mToolbar"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v3, Lcom/coloros/translate/R$menu;->menu_edit_mode:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    sget v3, Lcom/coloros/translate/R$string;->select_project:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v2, v0

    :goto_0
    iget p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E:I

    invoke-virtual {v2, p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleMarginStart(I)V

    return-void
.end method

.method public static final synthetic C1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    return-object p0
.end method

.method private final C2(I)V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "mRecordingButtonLottie"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v4, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    const-string v1, "mRecordingButtonSpeakIcon"

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->c0:Landroid/view/View;

    const-string v1, "mRecordingButtonContainer"

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$dimen;->dp_8:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr p1, v3

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->c0:Landroid/view/View;

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final C3(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N:Z

    if-nez v0, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "need_show_double_screen_tips"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N:Z

    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    sget v0, Lcom/coloros/translate/R$string;->double_screen_switch_tips:I

    sget v2, Lcom/coloros/translate/R$id;->double_screen:I

    sget-object v3, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {v3}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$b;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$b;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Lcom/coui/appcompat/tooltips/COUIToolTips;II)V

    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static final synthetic D1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    return-object p0
.end method

.method private final D2()Z
    .locals 8

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->j0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->H:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x258

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    return v1

    :cond_2
    iput-wide v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->H:J

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C:Landroid/os/Vibrator;

    if-eqz v2, :cond_3

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3
    sget-object v2, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v2}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const-string v2, "mRecordingButtonLottie"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v3

    :cond_4
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v2

    if-nez v2, :cond_5

    sget p0, Lcom/coloros/translate/R$string;->no_network:I

    const/4 v0, 0x2

    invoke-static {p0, v1, v0, v3}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    return v1

    :cond_5
    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {v0}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/permission/a;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "DialogTranslationActivity"

    const-string v2, "the text is translate!"

    invoke-virtual {p0, v0, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method private final D3()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    const/16 v2, 0x8

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B0:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C0:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D0:Landroid/widget/TextView;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public static final synthetic E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    return-object p0
.end method

.method private final E2(Z)V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeOutScreen mDoubleScreenEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mOutScreenManager:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->q(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->g()Z

    :goto_0
    return-void
.end method

.method private final E3()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A0:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B0:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C0:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D0:Landroid/widget/TextView;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public static final synthetic F1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lw1/c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->n0:Lw1/c;

    return-object p0
.end method

.method static synthetic F2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E2(Z)V

    return-void
.end method

.method private final F3()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "showOutScreenRecognizingLottie"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F0:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/coloros/translate/R$string;->listening:I

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->b3()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q2()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O3()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E0:Landroidx/constraintlayout/helper/widget/Flow;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/VirtualLayout;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :cond_2
    return-void
.end method

.method public static final synthetic G1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    return p0
.end method

.method private final G2()V
    .locals 11

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J:Landroidx/appcompat/app/c;

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const-string v3, "mDialogueTranslationAdapter"

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    const-string v5, "getString(...)"

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$string;->if_remove_all_items:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/coloros/translate/R$string;->remove_all_items:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K:Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/coloros/translate/R$string;->if_delete_one_item:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/coloros/translate/R$string;->delete_one_item:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K:Z

    move-object v2, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/coloros/translate/R$plurals;->if_delete_item:I

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v7

    check-cast v7, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v7}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v8

    check-cast v8, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v8}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "getQuantityString(...)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/coloros/translate/R$plurals;->delete_item:I

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v9

    check-cast v9, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v9}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v10

    check-cast v10, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v10}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K:Z

    move-object v2, v7

    :goto_0
    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J:Landroidx/appcompat/app/c;

    if-eqz v6, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/coloros/translate/base/R$string;->action_cancel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    sget-object v2, Lcom/coui/appcompat/uiutil/AnimLevel;->HIGN_END:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {v0, v4, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setBlurBackgroundDrawable(ZLcom/coui/appcompat/uiutil/AnimLevel;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v4, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v1

    :cond_6
    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    sget v2, Lcom/coloros/translate/R$string;->delete_all:I

    goto :goto_1

    :cond_7
    sget v2, Lcom/coloros/translate/R$string;->action_delete:I

    :goto_1
    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/x;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/x;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/y;

    invoke-direct {v2}, Lcom/coloros/translate/ui/dialoguetranslation/y;-><init>()V

    invoke-virtual {v0, v6, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object v1

    :cond_8
    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J:Landroidx/appcompat/app/c;

    return-void
.end method

.method private final G3()V
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$layout;->dialog_start_double_screen_tips:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/coloros/translate/R$id;->cb_is_never_show:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    sget v2, Lcom/coloros/translate/R$id;->tx_tips2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/textview/COUITextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w0:Landroidx/appcompat/app/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    new-instance v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    sget v0, Lcom/coloros/translate/R$string;->me_know:I

    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/p;

    invoke-direct {v3, v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/p;-><init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w0:Landroidx/appcompat/app/c;

    return-void
.end method

.method public static final synthetic H1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/o;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O:Lcom/coloros/translate/o;

    return-object p0
.end method

.method private static final H2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C()V

    sget-object p1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {p2}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v0

    const-string v1, "event_clear_for_dialog"

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/repository/local/Conversation;

    sget-object p2, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v1

    const-string v2, "event_delete_for_dialog"

    invoke-virtual {p2, p0, v2, v0, v1}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->D()V

    :goto_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method private static final H3(Lcom/coui/appcompat/checkbox/COUICheckBox;Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/content/DialogInterface;I)V
    .locals 7

    const-string p2, "$neverShowCB"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "key_is_show_double_screen_open_tips"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_0
    sget p0, Lcom/coloros/translate/R$string;->double_screen_open_tips:I

    invoke-static {p0}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final synthetic I1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->p0:Landroid/view/View;

    return-object p0
.end method

.method private static final I2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private final I3(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isFromEar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "putExtra(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    if-nez p1, :cond_0

    sget v0, Lcom/support/appcompat/R$anim;->coui_push_up_enter_activitydialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/n;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->finish()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic J1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I:I

    return p0
.end method

.method private final J2(Landroidx/recyclerview/widget/COUIRecyclerView;I)V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const-string v1, "mDialogueTranslationAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->j()Z

    move-result v0

    const-string v3, "DialogTranslationActivity"

    if-eqz v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "doScrollToPositionWithOffset return"

    invoke-virtual {p0, v3, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-ltz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v4, "doScrollToPositionWithOffset smoothScroll"

    invoke-virtual {v0, v3, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->z(Z)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-eqz v0, :cond_5

    move-object v2, p0

    check-cast v2, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v2, p2, p0}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic J3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I3(Z)V

    return-void
.end method

.method public static final synthetic K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->o0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    return-object p0
.end method

.method private final K2()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterHoverMode mOutScreenConversation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q2()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D3()V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    const-string v0, "mRecordingButtonLottie"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F3()V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T3(Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method

.method private final K3()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOutScreenTTSAnimation mOutPlayTts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->x()V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$z;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$z;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic L1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->H0:Z

    return p0
.end method

.method private final L2()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitHoverMode   mOutScreenView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O3()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E3()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method

.method private final L3()V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    const-string p0, "mRecordingButtonLottie"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/16 v0, 0x88

    const/16 v1, 0x12a

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->B(II)V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method public static final synthetic M1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private final M2()Lcom/coloros/translate/LanguageManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->t0:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/LanguageManager;

    return-object p0
.end method

.method private final M3(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "coloros.intent.action.DIALOGUE_TRANSLATION_SHORTCUT"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "3"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "oplus.translate.action.intent.conversation_translation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "2"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "extra_from"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "from_cube"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "5"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static final synthetic N1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/repository/local/Conversation;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    return-object p0
.end method

.method private final N2(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final N3()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopOutScreenTTSAnimation mOutPlayTts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    invoke-static {p0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    :cond_0
    return-void
.end method

.method public static final synthetic O1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/k0;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object p0

    return-object p0
.end method

.method private final O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x0:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/k0;

    return-object p0
.end method

.method private final O3()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q0(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_0
    return-void
.end method

.method public static final synthetic P1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->c0:Landroid/view/View;

    return-object p0
.end method

.method private final P2()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E0:Landroidx/constraintlayout/helper/widget/Flow;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/VirtualLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final P3()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    const-string p0, "mRecordingButtonLottie"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$b0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$b0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public static final synthetic Q1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private final Q2()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B0:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C0:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D0:Landroid/widget/TextView;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private final Q3()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u0:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getFromLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u0:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getToLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u0:Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R3(Lcom/coloros/translate/repository/local/Conversation;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v0, :cond_1

    const-string v0, "mDialogueTranslationAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u0:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->s(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_2
    return-void
.end method

.method public static final synthetic R1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U:Z

    return p0
.end method

.method private final R2()V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$f;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$f;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->H()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->G()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->d0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$i;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$i;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->f0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->k0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$d;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$d;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->m0()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/base/BaseActivity;->s0(Landroidx/lifecycle/y;Lw8/l;)V

    return-void
.end method

.method private final R3(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 5

    sget-object p0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "voice"

    invoke-virtual {v0, v1}, Lcom/coloros/translate/LanguageManager;->q(Ljava/lang/String;)Ln8/q;

    move-result-object v0

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDefaultConversationItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DialogTranslationActivity"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->dialog_sample_text:I

    invoke-virtual {v2, v3, v1}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    sget v2, Lcom/coloros/translate/R$string;->dialog_sample_text:I

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/repository/local/Conversation;->setToText(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/coloros/translate/repository/local/Conversation;->setFromLanguage(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/coloros/translate/repository/local/Conversation;->setToLanguage(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/repository/local/Conversation;->setLeft(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/repository/local/Conversation;->setRecognizeing(Z)V

    const-string p0, "sample"

    invoke-virtual {p1, p0}, Lcom/coloros/translate/repository/local/Conversation;->setExpandField1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic S1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->X:Z

    return p0
.end method

.method private final S2()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const-string v1, "mToolbar"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v3, Lcom/coloros/translate/R$menu;->voice_translation_menu:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleMarginStart(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    sget v4, Lcom/coloros/translate/R$string;->dialog_translation:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    sget v4, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    new-instance v4, Lcom/coloros/translate/ui/dialoguetranslation/o;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/dialoguetranslation/o;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v4, Lcom/coloros/translate/R$id;->select_mode:I

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v4, :cond_9

    const-string v4, "mDialogueTranslationAdapter"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    move v4, v5

    goto :goto_0

    :cond_a
    move v4, v3

    :goto_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$id;->double_screen:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->l()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/coloros/translate/utils/a;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    move v3, v5

    :cond_c
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y3()V

    return-void
.end method

.method private final S3()V
    .locals 12

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->b3()Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "mInnerScreenEmptyTips"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->s0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez p0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->s0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v2, :cond_3

    const-string v2, "mSingleDialogueAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    invoke-virtual {v3}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->getItemCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v3}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/coloros/translate/R$string;->double_screen_empty_layout_tips:I

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v11

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lkotlin/text/r;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v11

    move-object v5, v10

    invoke-static/range {v4 .. v9}, Lkotlin/text/r;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    sget v6, Lcom/support/appcompat/R$color;->coui_color_label_primary:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/support/appcompat/R$color;->coui_color_label_primary:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {v4, v1, v3, p0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public static final synthetic T1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->d0:Landroid/widget/TextView;

    return-object p0
.end method

.method private static final T2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->finish()V

    return-void
.end method

.method private final T3(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 6

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->b3()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P2()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v1

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q2()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_8

    const-string v0, "mRecordingButtonLottie"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P2()V

    :cond_9
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F0:Landroid/widget/TextView;

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    sget v0, Lcom/coloros/translate/R$string;->other_speaking:I

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    :cond_c
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F0:Landroid/widget/TextView;

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    sget v1, Lcom/coloros/translate/R$string;->other_speaking:I

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    :cond_e
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F3()V

    goto :goto_b

    :cond_f
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    :cond_10
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q2()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P2()V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    :cond_14
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F3()V

    :goto_b
    return-void
.end method

.method public static final synthetic U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method private final U2()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    if-eqz v0, :cond_4

    sget v1, Lcom/coloros/translate/R$id;->iv_tips_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A0:Landroid/widget/ImageView;

    sget v1, Lcom/coloros/translate/R$id;->tv_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B0:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/R$id;->tv_tips_secondary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C0:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/R$id;->tv_empty_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D0:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/R$id;->group_recognizing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/helper/widget/Flow;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E0:Landroidx/constraintlayout/helper/widget/Flow;

    sget v1, Lcom/coloros/translate/R$id;->tv_recognizing_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F0:Landroid/widget/TextView;

    sget v1, Lcom/coloros/translate/R$id;->recognizing_lottie_out_screen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G0:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/coloros/translate/R$id;->translated_language:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/textview/COUITextView;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    sget v1, Lcom/coloros/translate/R$id;->ttsPlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/l;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/l;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/coloros/translate/R$id;->recognized_language:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/textview/COUITextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D0:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget v1, Lcom/coloros/translate/R$string;->out_side_screen_tips:I

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F0:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget v1, Lcom/coloros/translate/R$string;->listening:I

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N2(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private final U3(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K2()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L2()V

    :goto_0
    return-void
.end method

.method public static final synthetic V1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    return-object p0
.end method

.method private static final V2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q0(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_0
    return-void
.end method

.method private final V3(Ln8/q;)V
    .locals 9

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOutScreenTTSAnimation mOutScreenConversation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startOutScreenTTSAnimation outId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " id:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  isPlay:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K3()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N3()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    return-object p0
.end method

.method private final W2()V
    .locals 8

    sget v0, Lcom/coloros/translate/R$id;->up_recycler:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "mUpHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    new-instance v3, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/h0;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v3, v4}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->y(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->x(I)V

    iput-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/x;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/x;->R(Z)V

    sget v0, Lcom/coloros/translate/R$id;->recycler:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const-string v1, "mRecyclerHistoryRecyclerView"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    new-instance v4, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v5, v6}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v4, Lcom/coloros/translate/ui/dialoguetranslation/h0;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v5

    check-cast v5, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4, v5}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->y(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V

    invoke-virtual {v4, v6}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->x(I)V

    iput-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/x;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/x;->R(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/r;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/r;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lw1/c;

    invoke-direct {v0, p0}, Lw1/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->n0:Lw1/c;

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    check-cast v2, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;

    invoke-virtual {v2, v6}, Lcom/coui/appcompat/grid/COUIPercentWidthRecyclerView;->setPercentIndentEnabled(Z)V

    :cond_4
    return-void
.end method

.method public static final synthetic X1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P:Landroid/view/MenuItem;

    return-object p0
.end method

.method private static final X2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "mDialogueTranslationAdapter"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_a

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_1
    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->z(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->S()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->w(Z)V

    return v1

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_4
    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->j()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->n0:Lw1/c;

    if-nez p1, :cond_5

    const-string p1, "mDividerChangeBehavior"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_5
    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->b0:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v4, :cond_6

    const-string v4, "mAppbarLayout"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v3

    :cond_6
    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v5, :cond_7

    const-string v5, "mRecyclerHistoryRecyclerView"

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v3

    :cond_7
    invoke-virtual {p1, v4, v5}, Lw1/c;->d(Lcom/google/android/material/appbar/AppBarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_8
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_9
    invoke-virtual {p1, v1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->w(Z)V

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_e

    :cond_b
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_c
    invoke-virtual {p1, v1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->z(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p1, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    move-object v3, p1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->w(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->S()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->D0(Z)V

    :cond_e
    return v0
.end method

.method public static final synthetic Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q:Landroid/view/MenuItem;

    return-object p0
.end method

.method private final Y2()V
    .locals 2

    sget v0, Lcom/coloros/translate/R$id;->app_bar_ll:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->b0:Lcom/google/android/material/appbar/AppBarLayout;

    sget v0, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->toolbar_title_margin_start_and_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->toolbar_support_title_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->width_640:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->height_360:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G:I

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S2()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_0

    const-string v0, "mToolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/s;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/s;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V

    return-void
.end method

.method public static final synthetic Z1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method private static final Z2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/coloros/translate/R$id;->face_to_face:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1, v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->E0(Z)V

    invoke-static {p0, v4, v3, v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;ZILjava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    sget v1, Lcom/coloros/translate/R$id;->select_mode:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    sget v1, Lcom/coloros/translate/R$id;->dialog_auto_play:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$drawable;->dialog_auto_play_disable_night:I

    invoke-static {v0, v1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$drawable;->dialog_auto_play_disable:I

    invoke-static {v0, v1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :goto_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1, v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->b3()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0xea60

    goto :goto_1

    :cond_3
    const/16 v0, 0x1b58

    :goto_1
    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L0(I)V

    sget-object p1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$string;->auto_play_close_tips:I

    invoke-static {v0}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object v4, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const-string v5, "auto_play"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$drawable;->dialog_auto_play_enable_night:I

    invoke-static {v0, v1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$drawable;->dialog_auto_play_enable:I

    invoke-static {v0, v1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :goto_2
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1, v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/16 v0, 0x7d0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L0(I)V

    sget-object p1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$string;->auto_play_start_tips:I

    invoke-static {v0}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object v4, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const-string v5, "auto_play"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    :goto_3
    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/utils/n;->d(Z)V

    goto :goto_6

    :cond_6
    sget p1, Lcom/coloros/translate/R$id;->double_screen:I

    if-ne v0, p1, :cond_a

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y0:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/n$a;->d(J)V

    iput-boolean v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y0:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/n$a;->c(J)V

    iput-boolean v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    sget p1, Lcom/coloros/translate/R$string;->double_screen_exit_tips:I

    invoke-static {p1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {p0, v4, v3, v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;ZILjava/lang/Object;)V

    :goto_4
    sget-object p1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recreate isNightMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z3()V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->n3()V

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->o3()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :goto_5
    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y0:Lcom/coloros/translate/utils/n$a;

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/n;->g(ZLcom/coloros/translate/utils/n$a;)V

    :cond_a
    :goto_6
    return v3
.end method

.method public static final synthetic a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    return-object p0
.end method

.method private final a3()V
    .locals 7

    sget v0, Lcom/coloros/translate/R$id;->rootView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Z:Landroid/widget/LinearLayout;

    sget v0, Lcom/coloros/translate/R$id;->status_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->q0:Landroid/view/View;

    sget v0, Lcom/coloros/translate/R$id;->navigation_tool:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->o0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    sget v0, Lcom/coloros/translate/R$id;->navigation_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->p0:Landroid/view/View;

    sget v0, Lcom/coloros/translate/R$id;->recording_button_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->c0:Landroid/view/View;

    sget v0, Lcom/coloros/translate/R$id;->recording_tips:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->d0:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/R$id;->recording_button_lottie:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/coloros/translate/R$id;->recording_button_icon:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y:Lcom/coloros/translate/ui/simultaneous/main/i;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRecordingButtonSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-virtual {v2, v0}, Lcom/coloros/translate/ui/simultaneous/main/i;->g(Landroid/view/View;)V

    sget v0, Lcom/coloros/translate/R$id;->chooseLanguage_in_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/widget/LanguageChooseView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->h0:Lcom/coloros/translate/widget/LanguageChooseView;

    sget v0, Lcom/coloros/translate/R$id;->chooseLanguage:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/widget/LanguageChooseView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    sget v0, Lcom/coloros/translate/R$id;->tv_double_screen_empty_tips:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/textview/COUITextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->s0:Lcom/coui/appcompat/textview/COUITextView;

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V:Z

    const/4 v2, 0x0

    const/16 v4, 0x8

    const-string v5, "mChooseLanguageViewBelowToolbar"

    const-string v6, "mChooseLanguageViewInToolbar"

    if-nez v0, :cond_4

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->h0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {v0, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    :goto_0
    move-object v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->h0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    invoke-virtual {v0, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    invoke-virtual {v0, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->h0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    :goto_2
    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g0:Lcom/coloros/translate/widget/LanguageChooseView;

    sget v0, Lcom/coloros/translate/R$id;->result_sign:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->r0:Landroid/widget/TextView;

    if-nez v0, :cond_8

    const-string v0, "aiSignTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v3, v0

    :goto_3
    sget-object v0, Lcom/coloros/translate/utils/p0;->TRANSLATION:Lcom/coloros/translate/utils/p0;

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/d1;->b(Lcom/coloros/translate/utils/p0;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic b2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q0:Ljava/lang/String;

    return-object v0
.end method

.method private final b3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic c1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->H2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic c2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S2()V

    return-void
.end method

.method private final c3(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->c0:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "mRecordingButtonContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public static synthetic d1(Lcom/coui/appcompat/checkbox/COUICheckBox;Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->H3(Lcom/coui/appcompat/checkbox/COUICheckBox;Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic d2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->b3()Z

    move-result p0

    return p0
.end method

.method private static final d3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G2()V

    :cond_0
    return-void
.end method

.method public static synthetic e1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic e2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->c3(Z)V

    return-void
.end method

.method private final e3()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "onDoubleScreenModeEnter"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const-string v1, "mUpHistoryRecyclerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v3

    check-cast v3, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x7d0

    goto :goto_0

    :cond_2
    const v3, 0xea60

    :goto_0
    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L0(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->q0:Landroid/view/View;

    if-nez v0, :cond_4

    const-string v0, "mStatusBarView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->recording_button_size_smaller:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C2(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S3()V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/t;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/t;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    const-wide/16 v1, 0x12c

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/u;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/u;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    const-wide/16 v1, 0x190

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e3()V

    return-void
.end method

.method private static final f3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const-string v1, "mSingleDialogueAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->x(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_1

    const-string v0, "mRecyclerHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_3

    const-string v0, "mUpHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p0, :cond_4

    const-string p0, "mDialogueTranslationAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method public static synthetic g1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->h3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static final synthetic g2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j3()V

    return-void
.end method

.method private static final g3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mUpHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/m;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/m;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_1

    const-string v0, "mRecyclerHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/n;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/n;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic h1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->s3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic h2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->q3()V

    return-void
.end method

.method private static final h3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mUpHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v2, :cond_1

    const-string v2, "mDialogueTranslationAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J2(Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    return-void
.end method

.method public static synthetic i1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->X2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic i2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w3()V

    return-void
.end method

.method private static final i3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_0

    const-string v0, "mRecyclerHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J2(Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static synthetic j1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static final synthetic j2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x3()V

    return-void
.end method

.method private final j3()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "onDoubleScreenModeExit"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const-string v1, "mUpHistoryRecyclerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x7d0

    goto :goto_0

    :cond_2
    const/16 v4, 0x1b58

    :goto_0
    invoke-virtual {v0, v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L0(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->q0:Landroid/view/View;

    if-nez v0, :cond_4

    const-string v0, "mStatusBarView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->recording_button_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C2(I)V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/v;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/v;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    const-wide/16 v1, 0x12c

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/w;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/w;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    const-wide/16 v1, 0x190

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic k1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic k2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u0:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method

.method private static final k3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRecyclerHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const-string v3, "mDialogueTranslationAdapter"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const-string v2, "mSingleDialogueAdapter"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/Conversation;

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u0:Lcom/coloros/translate/repository/local/Conversation;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v4, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v1

    :cond_5
    invoke-virtual {v4, v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->h(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_8

    const-string v0, "mUpHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v3, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S3()V

    return-void
.end method

.method public static synthetic l1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static final synthetic l2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->H:J

    return-void
.end method

.method private static final l3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_0

    const-string v0, "mRecyclerHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/q;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/q;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic m1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static final synthetic m2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->H0:Z

    return-void
.end method

.method private static final m3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRecyclerHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v2, :cond_1

    const-string v2, "mDialogueTranslationAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J2(Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static synthetic n1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->d3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static final synthetic n2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->X:Z

    return-void
.end method

.method private final n3()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const/4 v1, 0x0

    const-string v2, "mDialogueTranslationAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->x(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->k()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E2(Z)V

    return-void
.end method

.method public static synthetic o1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Z2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic o2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P:Landroid/view/MenuItem;

    return-void
.end method

.method private final o3()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const/4 v1, 0x0

    const-string v2, "mDialogueTranslationAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->x(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-direct {p0, v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->t3(Z)V

    return-void
.end method

.method public static synthetic p1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic p2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q:Landroid/view/MenuItem;

    return-void
.end method

.method private final p3(Landroid/content/Context;Z)V
    .locals 11

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p2, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p0

    const-string v1, "event_asr_start_for_dialog"

    invoke-virtual {p2, p1, v1, v0, p0}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    if-eqz p2, :cond_1

    const-string p0, "0"

    :goto_0
    move-object v6, p0

    goto :goto_1

    :cond_1
    const-string p0, "1"

    goto :goto_0

    :goto_1
    const/16 v9, 0x30

    const/4 v10, 0x0

    const-string v4, "event_asr_end_for_dialog"

    const-string v5, "input"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v10}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static synthetic q1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static final synthetic q2(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q0:Ljava/lang/String;

    return-void
.end method

.method private final q3()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openOutScreen mOutScreenView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_0

    const-string v0, "mRecyclerHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N0:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p0, "openOutScreen mOutScreenView is not null"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic r1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static final synthetic r2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A3()V

    return-void
.end method

.method private final r3()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRecordingButtonSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/z;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/coloros/translate/o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O:Lcom/coloros/translate/o;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g0:Lcom/coloros/translate/widget/LanguageChooseView;

    const-string v2, "mChooseLanguageView"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$s;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$s;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v3}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnFromLangeClickListener(Lw8/l;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$t;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$t;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v3}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnToLangeClickListener(Lw8/l;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$u;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$u;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnSwitchClickListener(Lw8/l;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    const-string v2, "mChooseLanguageViewBelowToolbar"

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$v;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$v;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v3}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnFromLangeClickListener(Lw8/l;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$w;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$w;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v3}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnToLangeClickListener(Lw8/l;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$x;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$x;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v1, v0}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnSwitchClickListener(Lw8/l;)V

    return-void
.end method

.method public static synthetic s1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static final synthetic s2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B3()V

    return-void
.end method

.method private static final s3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->X:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recording button click mRecordingHoldOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogTranslationActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->f()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D2()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->X:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->X:Z

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->G0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U:Z

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->p0(Z)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x3()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A3()V

    :goto_0
    const/4 p1, 0x1

    invoke-direct {p0, p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->p3(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic t1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B2()V

    return-void
.end method

.method public static final synthetic t2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F3()V

    return-void
.end method

.method private final t3(Z)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerHoverModeChangeListener needShowTips:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mOutScreenManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;

    invoke-direct {v1, p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;-><init>(ZLcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->n(Landroid/content/Context;Lw8/p;)V

    return-void
.end method

.method public static final synthetic u1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G2()V

    return-void
.end method

.method public static final synthetic u2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G3()V

    return-void
.end method

.method private final u3()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->o0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mNavigationTool"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Z:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v0, "mRootView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/k;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/k;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-static {v1, v0}, Landroidx/core/view/m0;->y0(Landroid/view/View;Landroidx/core/view/a0;)V

    return-void
.end method

.method public static final synthetic v1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroidx/recyclerview/widget/COUIRecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J2(Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    return-void
.end method

.method public static final synthetic v2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O3()V

    return-void
.end method

.method private static final v3(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/a1$m;->d()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object p1

    iget p1, p1, Lu/e;->d:I

    iput p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I:I

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNavigationBottomValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DialogTranslationActivity"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->p0:Landroid/view/View;

    const-string v0, "mNavigationBarView"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_6

    iget v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->p0:Landroid/view/View;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$color;->coui_navigation_enlarge_default_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->p0:Landroid/view/View;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->p0:Landroid/view/View;

    if-nez p0, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, p0

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_6
    return-object p2
.end method

.method public static final synthetic w1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->r0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic w2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R3(Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method

.method private final w3()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeOutScreenView   mOutScreenView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->p(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z0:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B0:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C0:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D0:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G0:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I0:Lcom/coui/appcompat/textview/COUITextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J0:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K0:Lcom/coui/appcompat/textview/COUITextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F0:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E0:Landroidx/constraintlayout/helper/widget/Flow;

    :cond_0
    return-void
.end method

.method public static final synthetic x1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/repository/local/Conversation;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u0:Lcom/coloros/translate/repository/local/Conversation;

    return-object p0
.end method

.method public static final synthetic x2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S3()V

    return-void
.end method

.method private final x3()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "restoreRecordingButtonState"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->c0:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRecordingButtonContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->d0:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "mRecordingTips"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    sget v3, Lcom/coloros/translate/R$string;->click_to_speak:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    const-string v3, "mRecordingButtonSpeakIcon"

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    sget v4, Lcom/coloros/translate/R$drawable;->mic_on_button:I

    invoke-static {p0, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->click_to_speak:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P3()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e0:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_4

    const-string v0, "mRecordingButtonLottie"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U:Z

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T3(Lcom/coloros/translate/repository/local/Conversation;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O2()Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P2()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D3()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P2()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E3()V

    :cond_7
    :goto_1
    return-void
.end method

.method public static final synthetic y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->b0:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public static final synthetic y2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T3(Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method

.method private final y3()V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_0

    const-string v0, "mToolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$id;->dialog_auto_play:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "auto_play"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$drawable;->dialog_auto_play_enable_night:I

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$drawable;->dialog_auto_play_enable:I

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L0(I)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$drawable;->dialog_auto_play_disable_night:I

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$drawable;->dialog_auto_play_disable:I

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->B0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/16 v0, 0x1b58

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->L0(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static final synthetic z1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g0:Lcom/coloros/translate/widget/LanguageChooseView;

    return-object p0
.end method

.method public static final synthetic z2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U3(Z)V

    return-void
.end method

.method private final z3()V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    const/4 v1, 0x0

    const-string v2, "mToolbar"

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez p0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    sget v0, Lcom/coloros/translate/R$id;->double_screen:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$drawable;->exit_double_screen:I

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    sget v0, Lcom/coloros/translate/R$id;->dialog_auto_play:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    sget v0, Lcom/coloros/translate/R$id;->select_mode:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    sget v0, Lcom/coloros/translate/R$id;->face_to_face:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez p0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p0

    :goto_2
    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    sget v0, Lcom/coloros/translate/R$id;->double_screen:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$drawable;->to_double_screen:I

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_7
    sget v0, Lcom/coloros/translate/R$id;->dialog_auto_play:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_8
    sget v0, Lcom/coloros/translate/R$id;->select_mode:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    sget v0, Lcom/coloros/translate/R$id;->face_to_face:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    return-void
.end method


# virtual methods
.method public F0(Landroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->F0(Landroid/content/Intent;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/e;->l(Lcom/coloros/translate/observer/e$a;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->Q0()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "oplus.translate.action.intent.conversation_translation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x1f4

    if-eqz v1, :cond_1

    const-string v1, "type"

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    iput-boolean v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M0:Z

    invoke-direct {p0, v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I3(Z)V

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    const-string v5, "coloros.intent.action.DIALOGUE_TRANSLATION_SHORTCUT"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_4

    const-string v0, "extra_from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "from_cube"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->r0()V

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$c;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-static {v3, v4, v0}, Lcom/coloros/translate/utils/z0;->c(JLw8/a;)V

    :goto_4
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M3(Landroid/content/Intent;)V

    invoke-direct {p0, v3, v4}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C3(J)V

    return-void
.end method

.method public b1()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->b1()V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f0:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "mRecordingButtonSpeakIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    const-string v2, "updateEarControl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DialogTranslationActivity"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public i(Ljava/lang/Boolean;)V
    .locals 5

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "DialogTranslationActivity"

    const-string v1, "onLanguageChanged"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M2()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M2()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g0:Lcom/coloros/translate/widget/LanguageChooseView;

    const-string v2, "mChooseLanguageView"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(I)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v0}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(I)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    const-string v2, "mChooseLanguageViewBelowToolbar"

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(I)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i0:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->N0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V0(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D0:Landroid/widget/TextView;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget v0, Lcom/coloros/translate/R$string;->out_side_screen_tips:I

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q3()V

    return-void
.end method

.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_dialog_translation_layout:I

    return p0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A:Landroid/view/ActionMode;

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A:Landroid/view/ActionMode;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/coloros/translate/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/16 p1, -0x64

    const-string v0, "event_edit_for_dialog"

    const-string v2, "result"

    const-string v3, "language_to"

    const-string v4, "language_from"

    if-eq p2, p1, :cond_9

    const/4 p1, -0x1

    if-eq p2, p1, :cond_8

    const/16 p1, 0x64

    const/4 v5, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x65

    if-eq p2, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "isFromEar"

    invoke-virtual {p3, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->n0()V

    goto/16 :goto_1

    :cond_3
    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    sget-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q0:Ljava/lang/String;

    const-string p2, ""

    sput-object p2, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p2, p1}, Lcom/coloros/translate/repository/local/Conversation;->setFromText(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->c0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v5, v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->S0(Lcom/coloros/translate/repository/local/Conversation;ZZ)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {p2}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {p2}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "1"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    invoke-virtual {p2, p0, v0, p1}, Lcom/coloros/translate/utils/f1$a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {p1}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/coloros/translate/permission/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    :cond_a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S:Lcom/coloros/translate/b;

    invoke-virtual {p2}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T:Lcom/coloros/translate/b;

    invoke-virtual {p2}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "0"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    invoke-virtual {p2, p0, v0, p1}, Lcom/coloros/translate/utils/f1$a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onConfigurationChanged"

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v1, p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M:Z

    iput p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L:I

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const-string v1, "mDialogueTranslationAdapter"

    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1
    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v5, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v4

    :cond_2
    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v6, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v4

    :cond_3
    invoke-virtual {v6}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1, v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y0(Lcom/coloros/translate/repository/local/Conversation;)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M:Z

    if-eqz p1, :cond_5

    const-string p1, "onConfigurationChanged notifyDataSetChanged"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_5
    invoke-static {v4, v3, v4}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V:Z

    new-instance p1, Lcom/coloros/translate/ui/dialoguetranslation/j;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/j;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1, p1}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->U0()V

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate:action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DialogTranslationActivity"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$color;->coui_color_background_with_card:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    const/4 v1, 0x1

    invoke-static {v2, v1, v2}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V:Z

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L:I

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W2()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y2()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->r3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R2()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v4, "isDoubleScreenEnable"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v4

    if-eqz p1, :cond_3

    const-string v5, "addEditImg"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    invoke-virtual {v4, p1}, Lcom/coloros/translate/repository/local/Conversation;->setShowEditIcon(Z)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V:Z

    const/4 v4, -0x1

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    sget-object v5, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/app/f;->m()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate() mDoubleScreenEnable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , isNightMode : "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , localNightMode : "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    const/4 v5, 0x2

    if-eqz p1, :cond_4

    sget-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->m()I

    move-result p1

    if-eq p1, v5, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/f;->J(I)V

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->m()I

    move-result p1

    if-eq p1, v4, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/f;->J(I)V

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    const-string v6, "mRecyclerHistoryRecyclerView"

    if-nez p1, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRecyclerHistoryRecyclerView.visibility:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    const/4 v0, 0x4

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->m()I

    move-result p1

    if-ne p1, v5, :cond_8

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p0, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v2, p0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_8
    sget-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->m()I

    move-result p1

    if-ne p1, v4, :cond_a

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p0, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object v2, p0

    :goto_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    goto :goto_7

    :cond_a
    sget-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p1, :cond_b

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object v2, p1

    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->o3()V

    goto :goto_7

    :cond_c
    sget-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l0:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p1, :cond_d

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->n3()V

    sput-object v2, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    goto :goto_7

    :cond_e
    iput-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    sput-object v2, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P0:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->m()I

    move-result p1

    if-eq p1, v4, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/f;->J(I)V

    :cond_f
    :goto_7
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onDestroy()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->v0(Landroidx/lifecycle/s;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/e;->n(Lcom/coloros/translate/observer/e$a;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w0:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->q0()Lcom/coloros/translate/utils/n$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/utils/n;->J(Lcom/coloros/translate/utils/n$a;)V

    return-void
.end method

.method protected onPause()V
    .locals 10

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "onPause"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->X:Z

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->U0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M2()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->l()V

    sget-object v0, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {v0}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/permission/a;->h()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$r;

    invoke-static {v0}, Lg2/a;->f(Lg2/a$a;)V

    sget-object v1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B:J

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x30

    const/4 v9, 0x0

    const-string v3, "event_showtime_for_dialog"

    const-string v4, "result"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v9}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->o()V

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$color;->coui_color_background_with_card:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z3()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y3()V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M0:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M2()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "voice"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/LanguageManager;->O(Lcom/coloros/translate/d;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->t0()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M0:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B:J

    invoke-static {}, Lg2/a;->c()V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$r;

    invoke-static {p0}, Lg2/a;->e(Lg2/a$a;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "onSaveInstanceState"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isDoubleScreenEnable"

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "addEditImg"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onStart()V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    const/4 v1, 0x0

    const-string v2, "mSingleDialogueAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k0:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/Conversation;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->L0:Lcom/coloros/translate/repository/local/Conversation;

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->t3(Z)V

    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onStop()V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->k0()Landroidx/lifecycle/a0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->m0()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public x0()V
    .locals 0

    invoke-super {p0}, Lcom/coloros/translate/base/BaseActivity;->x0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    return-void
.end method
