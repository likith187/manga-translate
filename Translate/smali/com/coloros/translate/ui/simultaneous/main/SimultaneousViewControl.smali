.class public final Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/d;
.implements Lcom/coloros/translate/o$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$a;,
        Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;
    }
.end annotation


# static fields
.field public static final M:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$a;


# instance fields
.field private A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

.field private B:Landroid/view/View;

.field private C:Landroidx/recyclerview/widget/COUILinearLayoutManager;

.field private D:Lcom/coloros/translate/ui/simultaneous/main/k;

.field private E:Z

.field private F:Z

.field private G:Landroid/view/View;

.field private H:Landroid/widget/ImageView;

.field private I:Lcom/airbnb/lottie/LottieAnimationView;

.field private J:Landroid/widget/TextView;

.field private final K:Lcom/oplus/os/WaveformEffect;

.field private final L:Ljava/lang/Runnable;

.field private a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

.field public b:Lcom/coloros/translate/ui/simultaneous/main/m;

.field private c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

.field private f:Lcom/coloros/translate/o;

.field private h:Landroid/widget/RadioButton;

.field private final i:Ljava/lang/Runnable;

.field private j:Landroid/view/View;

.field private k:Lcom/coloros/translate/ui/simultaneous/main/i;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/coloros/translate/widget/LanguageChooseView;

.field private q:Lcom/coloros/translate/widget/LanguageChooseView;

.field private r:Lcom/coloros/translate/widget/LanguageChooseView;

.field private final s:Ln8/q;

.field private t:Lcom/coloros/translate/b;

.field private u:Lcom/coloros/translate/b;

.field private final v:Ln8/j;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/TextView;

.field private y:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/y;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/y;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/i;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/main/i;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    sget-object v0, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "si"

    invoke-virtual {v0, v1}, Lcom/coloros/translate/LanguageManager;->q(Ljava/lang/String;)Ln8/q;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->s:Ln8/q;

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/b;

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->t:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->u:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$m;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$m;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->v:Ln8/j;

    new-instance v0, Lcom/oplus/os/WaveformEffect$Builder;

    invoke-direct {v0}, Lcom/oplus/os/WaveformEffect$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectLoop(Z)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/os/WaveformEffect$Builder;->build()Lcom/oplus/os/WaveformEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->K:Lcom/oplus/os/WaveformEffect;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/z;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/z;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->L:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H0()V

    return-void
.end method

.method private static final A0(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View;)V
    .locals 1

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lr/a;->j(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private final B()V
    .locals 6

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreenDp(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/responsiveui/R$dimen;->grid_card_special_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/responsiveui/R$dimen;->grid_list_special_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    sget v2, Lcom/coloros/translate/R$id;->topLanguageToolLay:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    if-nez v0, :cond_2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->setPercentIndentEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v1, v4, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    sget v2, Lcom/coloros/translate/R$id;->contentPercentLay:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->setPercentIndentEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method private final C(Z)V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->j:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "topLanguageToolLay"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->n:Landroid/view/View;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final D(J)V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "mBottomLanguageButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method static synthetic E(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0xbb8

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D(J)V

    return-void
.end method

.method private final E0()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->l:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "recordStatus"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->k0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final F0()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenuView()Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->mOverflowPopup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/v;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/v;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic G(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->F(Z)V

    return-void
.end method

.method private static final G0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 p4, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p4, p5, p2, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenuView()Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->dismissPopupMenus(Z)V

    :cond_1
    const/4 p1, 0x0

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result p3

    const/4 p4, 0x2

    if-nez p3, :cond_2

    sget p0, Lcom/coloros/translate/R$string;->only_ear_phone_connect:I

    invoke-static {p0, p1, p4, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->A(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p5

    invoke-virtual {p5}, Lcom/coloros/translate/ui/simultaneous/main/m;->i0()Z

    move-result p5

    xor-int/2addr p2, p5

    invoke-virtual {p3, p2}, Lcom/coloros/translate/ui/simultaneous/main/m;->D0(Z)V

    sget-object v1, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/main/m;->i0()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "simultaneous_auto_play"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->K()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/main/m;->i0()Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/coloros/translate/R$string;->auto_play_start_tips:I

    invoke-static {p2, p1, p4, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/simultaneous/main/m;->M0()V

    sget p2, Lcom/coloros/translate/R$string;->auto_play_close_tips:I

    invoke-static {p2, p1, p4, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :goto_0
    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->i0()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/utils/n;->A(Z)V

    return-void

    :cond_4
    if-ne p3, p2, :cond_9

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result p3

    const-string p4, "mBottomAdapter"

    if-nez p3, :cond_7

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/m;->I0(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_5

    invoke-static {p4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, p1

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/simultaneous/main/k;->v(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Y0()V

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->I0(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_8

    invoke-static {p4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v0, p1

    :goto_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/simultaneous/main/k;->v(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Y0()V

    :cond_9
    return-void
.end method

.method private final H0()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "mBottomLanguageButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final I(Landroid/view/MotionEvent;Z)V
    .locals 5

    invoke-static {p1}, Lcom/coloros/translate/utils/c1;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H0()V

    goto/16 :goto_8

    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iput-boolean v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E:Z

    goto/16 :goto_8

    :cond_4
    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_f

    :goto_4
    const/4 p1, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    invoke-static {v0, v3, v4, v2, v1}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->j:Landroid/view/View;

    if-nez v0, :cond_8

    const-string v0, "topLanguageToolLay"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, p1

    :goto_5
    invoke-direct {p0, v0, v2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e0(ZZ)V

    :cond_a
    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E:Z

    if-eqz v0, :cond_e

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E:Z

    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Y0()V

    goto :goto_7

    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_d

    const-string p1, "mBottomAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_e
    :goto_7
    invoke-static {p0, v3, v4, v2, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;JILjava/lang/Object;)V

    :cond_f
    :goto_8
    return-void
.end method

.method static synthetic J(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method private final K()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configVoiceIcon isPlayTtsEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousViewControl"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_2

    sget v4, Lcom/coloros/translate/R$id;->voice:I

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configVoiceIcon isPlayTtsEnable 222:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$drawable;->si_tts_play:I

    invoke-static {v0, v1, v2}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$drawable;->si_tts_stop:I

    invoke-static {v0, v1, v2}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$drawable;->si_play_disable:I

    invoke-static {v0, v1, v2}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result p0

    invoke-interface {v3, p0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private static final K0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->M()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "restorePlayStatus performClick"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    const-string p0, "mBottomButtonSpeakIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_1
    return-void
.end method

.method private final L(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->show()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->hide()V

    :cond_3
    return-void
.end method

.method private static final N(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->j:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "topLanguageToolLay"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e0(ZZ)V

    :cond_1
    return-void
.end method

.method private static final P(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    const-string p0, "mBottomButtonSpeakIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private final Q()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->B:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "emptySpeakLoading"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    const-string v3, "mBottomAdapter"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Lcom/coloros/translate/ui/simultaneous/main/k;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    const/16 v5, 0x8

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/coloros/translate/utils/d1;->INSTANCE:Lcom/coloros/translate/utils/d1;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/d1;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->P()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v0, "aiSignTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_5
    invoke-virtual {v2}, Lcom/coloros/translate/ui/simultaneous/main/k;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, v0

    :goto_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/k;->p(Z)V

    return-void
.end method

.method private final Q0(Z)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "mBottomRecycleView"

    const-string v2, "emptyTextView"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->z:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->z:Landroid/view/View;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->B:Landroid/view/View;

    if-nez p0, :cond_5

    const-string p0, "emptySpeakLoading"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v4, p0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final R0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "showFullScreen"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz p0, :cond_0

    sget v0, Lcom/coloros/translate/R$id;->rootView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private final S(I)V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, "recordStatus"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v3, Lcom/coloros/translate/ui/simultaneous/main/d;->a:Lcom/coloros/translate/ui/simultaneous/main/d$a;

    invoke-virtual {v3, p1}, Lcom/coloros/translate/ui/simultaneous/main/d$a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->l:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private final S0(Z)V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "showHistoryMenu"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->o:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->R()V

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    sget v4, Lcom/coloros/translate/R$id;->history:I

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    xor-int/lit8 v4, p1, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v4, Lcom/coloros/translate/R$id;->voice:I

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_6

    sget v4, Lcom/coloros/translate/R$id;->show_both_language:I

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v3

    :goto_6
    const/4 v4, 0x1

    if-nez v1, :cond_7

    goto :goto_8

    :cond_7
    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v4

    goto :goto_7

    :cond_8
    move v5, v2

    :goto_7
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_8
    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_9

    sget v1, Lcom/coloros/translate/R$id;->show_translation:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    :cond_9
    if-nez v3, :cond_a

    goto :goto_9

    :cond_a
    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result p0

    if-eqz p0, :cond_b

    move v2, v4

    :cond_b
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_c
    :goto_9
    return-void
.end method

.method private final T()Z
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->M()Z

    move-result p0

    return p0
.end method

.method private final T0()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->s1()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->S(I)V

    return-void
.end method

.method private final U()Z
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    const/4 v1, 0x0

    const-string v2, "mBottomLayoutManager"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$p;->getItemCount()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private final U0(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->r:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h:Landroid/widget/RadioButton;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->r:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h:Landroid/widget/RadioButton;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final W0()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBottomButtonRunning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousViewControl"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "mBottomButtonSpeakIcon"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    sget v4, Lcom/coloros/translate/R$raw;->simultaneous_micro_open:I

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    const/16 v4, 0x50

    invoke-virtual {v0, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->B(II)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    new-instance v3, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$n;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$n;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v3, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/coloros/translate/R$string;->talkback_stop_recognizing_speech:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H:Landroid/widget/ImageView;

    if-nez v1, :cond_9

    const-string v1, "mAsrSpeakLottie"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_9
    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/i;->l(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->J:Landroid/widget/TextView;

    if-nez v0, :cond_a

    const-string v0, "mBottomButtonSpeakText"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v2, v0

    :goto_0
    sget v0, Lcom/coloros/translate/R$string;->click_to_pause:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E0()V

    return-void
.end method

.method private final X()Lcom/coloros/translate/LanguageManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->v:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/LanguageManager;

    return-object p0
.end method

.method private final X0()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopBottomButtonState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousViewControl"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "mBottomButtonSpeakIcon"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->u()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v0

    const-string v3, "mBottomButtonSpeakText"

    const/16 v4, 0x50

    const/16 v5, 0x71

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->B(II)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v4, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v4, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/coloros/translate/R$string;->talkback_start_recognizing_speech:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->J:Landroid/widget/TextView;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    sget v0, Lcom/coloros/translate/R$string;->click_to_start:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E0()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    invoke-virtual {v0, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->B(II)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget-object v4, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v4, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/coloros/translate/R$string;->talkback_start_recognizing_speech:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H:Landroid/widget/ImageView;

    if-nez v1, :cond_d

    const-string v1, "mAsrSpeakLottie"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_d
    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/i;->n(Landroid/view/View;)V

    const/4 v0, 0x2

    invoke-static {p0, v6, v6, v0, v2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->f0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;ZZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->J:Landroid/widget/TextView;

    if-nez v0, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    move-object v2, v0

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lcom/coloros/translate/R$string;->click_to_continue:I

    goto :goto_2

    :cond_f
    sget v0, Lcom/coloros/translate/R$string;->click_to_start:I

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E0()V

    return-void
.end method

.method private static final Z0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p0, :cond_0

    const-string p0, "mBottomAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method private final a0()Lcom/coloros/translate/widget/LanguageChooseView;
    .locals 3

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v2}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->p:Lcom/coloros/translate/widget/LanguageChooseView;

    return-object p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->p:Lcom/coloros/translate/widget/LanguageChooseView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    :goto_2
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q:Lcom/coloros/translate/widget/LanguageChooseView;

    return-object p0
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->p0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final c0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "hideFullScreen"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz p0, :cond_1

    sget v0, Lcom/coloros/translate/R$id;->rootView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1306

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->r0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method private static final d1(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBottomLayoutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p0, :cond_1

    const-string p0, "mBottomAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/k;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->i0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    return-void
.end method

.method private final e0(ZZ)V
    .locals 7

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBottomLanguageButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->j:Landroid/view/View;

    if-nez v3, :cond_1

    const-string v3, "topLanguageToolLay"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->n:Landroid/view/View;

    filled-new-array {v2, v3}, [Landroid/view/View;

    move-result-object v3

    new-instance v6, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$c;

    invoke-direct {v6, p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$c;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Z)V

    move-object v2, v0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/coloros/translate/ui/simultaneous/main/i;->i(Landroid/view/View;[Landroid/view/View;ZZLw8/l;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E0()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c0()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->R0()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final e1()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v2, Lcom/coloros/translate/R$id;->show_both_language:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v1, Lcom/coloros/translate/R$id;->show_translation:I

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result p0

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method static synthetic f0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e0(ZZ)V

    return-void
.end method

.method private final f1()V
    .locals 3

    invoke-static {}, Lcom/coloros/translate/utils/n0;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h:Landroid/widget/RadioButton;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/simultaneous/main/m;->k0()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/coloros/translate/R$drawable;->si_record_enable:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/coloros/translate/R$drawable;->si_record_disable:I

    :goto_0
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h:Landroid/widget/RadioButton;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/simultaneous/main/m;->k0()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/coloros/translate/R$drawable;->si_record_enable:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/coloros/translate/R$drawable;->si_record_disable:I

    :goto_1
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E0()V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->K0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method private final g0()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_3

    sget v1, Lcom/coloros/translate/R$id;->toolbarLay:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->n:Landroid/view/View;

    sget v1, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenuView()Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/coloros/translate/ui/simultaneous/main/c0;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/simultaneous/main/c0;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenuView()Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/coloros/translate/ui/simultaneous/main/d0;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/simultaneous/main/d0;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setOverflowMenuListener(Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$drawable;->si_more:I

    invoke-static {v2, v3}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/coloros/translate/R$menu;->simultaneous_main_menu:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e1()V

    sget v2, Lcom/support/appcompat/R$color;->coui_color_label_primary_dark:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleTextColor(I)V

    sget v0, Lcom/coloros/translate/R$drawable;->si_back_white_arrow:I

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    sget v0, Lcom/support/toolbar/R$string;->toolbar_close:I

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationContentDescription(I)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/e0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/e0;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v2, Lcom/coloros/translate/R$id;->history:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$d;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$d;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->R()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->K()V

    :cond_3
    return-void
.end method

.method public static synthetic h(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->N(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method private static final h0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;JILjava/lang/Object;)V

    return-void
.end method

.method private static final i0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->F0()V

    return-void
.end method

.method public static synthetic j(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->o0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final j0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->l0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->V0(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic k(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->j0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;)V

    return-void
.end method

.method private final k0()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "initRecyclerAdapter"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_2

    sget v1, Lcom/coloros/translate/R$id;->bottomLanguageButton:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G:Landroid/view/View;

    sget v1, Lcom/coloros/translate/R$id;->bottomButtonSpeakIcon:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    const/4 v4, 0x0

    const-string v5, "mBottomButtonSpeakIcon"

    if-nez v1, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v4

    :cond_0
    invoke-virtual {v3, v1}, Lcom/coloros/translate/ui/simultaneous/main/i;->g(Landroid/view/View;)V

    sget v1, Lcom/coloros/translate/R$id;->speakText:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/q;

    invoke-direct {v1, p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/q;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public static synthetic l(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->d1(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method private static final l0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Landroid/view/View;)V
    .locals 12

    const-string p2, "SimultaneousViewControl"

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/n;->E()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/base/BaseActivity;->j0()Z

    move-result v0

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->z0()V

    return-void

    :cond_2
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    sget-object v1, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {v1}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coloros/translate/permission/a;->d(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;->A()Z

    move-result p1

    if-ne p1, v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, v0, v3, v4}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;->x(Z)V

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    const-string v1, "mBottomAdapter"

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D(J)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M0()V

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->l:Landroid/widget/TextView;

    if-nez p1, :cond_9

    const-string p1, "recordStatus"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p1, :cond_a

    const-string p1, "mBottomRecycleView"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v4

    goto :goto_0

    :cond_a
    move-object v6, p1

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->z:Landroid/view/View;

    if-nez p1, :cond_b

    const-string p1, "emptyTextView"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v7, v4

    goto :goto_1

    :cond_b
    move-object v7, p1

    :goto_1
    iget-object v8, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h:Landroid/widget/RadioButton;

    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q:Lcom/coloros/translate/widget/LanguageChooseView;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->r:Lcom/coloros/translate/widget/LanguageChooseView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    new-instance v11, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$e;

    invoke-direct {v11, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$e;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/coloros/translate/ui/simultaneous/main/i;->p(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLw8/a;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v5, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    sget v0, Lcom/coloros/translate/R$id;->history:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string p1, "findItem(...)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->o:Landroid/view/View;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/coloros/translate/ui/simultaneous/main/i;->r(Lcom/coloros/translate/ui/simultaneous/main/i;Landroid/view/MenuItem;Landroid/view/View;ZLw8/a;ILjava/lang/Object;)V

    goto :goto_2

    :cond_c
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E0()V

    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_e
    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/k;->o()V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_10
    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_11

    const-string p1, "mBottomButtonSpeakIcon"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_11
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "linearmotor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/oplus/os/LinearmotorVibrator;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/oplus/os/LinearmotorVibrator;

    goto :goto_4

    :cond_12
    move-object p1, v4

    :goto_4
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->K:Lcom/oplus/os/WaveformEffect;

    invoke-virtual {p1, p0}, Lcom/oplus/os/LinearmotorVibrator;->vibrate(Lcom/oplus/os/WaveformEffect;)V

    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_13
    invoke-static {v4}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_14

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate: error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public static synthetic m(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method private final m0()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v1, :cond_0

    const-string v1, "mBottomAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y0()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/ui/simultaneous/main/k;->v(Z)V

    sget v1, Lcom/coloros/translate/R$id;->recordStatus:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->l:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method public static synthetic n(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method private final n0()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "initRecyclerAdapter"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_11

    sget v1, Lcom/coloros/translate/R$id;->emptyTextView:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->z:Landroid/view/View;

    sget v1, Lcom/coloros/translate/R$id;->emptySpeakLoading:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->B:Landroid/view/View;

    sget v1, Lcom/coloros/translate/R$id;->contentLay:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->w:Landroid/view/View;

    sget v1, Lcom/coloros/translate/R$id;->result_sign:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "aiSignTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    sget-object v4, Lcom/coloros/translate/utils/p0;->SUMMARY:Lcom/coloros/translate/utils/p0;

    invoke-static {v4, v0}, Lcom/coloros/translate/utils/d1;->b(Lcom/coloros/translate/utils/p0;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/coloros/translate/R$id;->lower_recyclerview:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    const-string v2, "mBottomRecycleView"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    new-instance v4, Lcom/coloros/translate/ui/simultaneous/widget/a;

    invoke-direct {v4}, Lcom/coloros/translate/ui/simultaneous/widget/a;-><init>()V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$m;)V

    sget v1, Lcom/coloros/translate/R$id;->bottomLanguageButtonAnim:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/r;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/r;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/s;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/s;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_3

    sget v1, Lcom/coloros/translate/R$id;->floatBtn:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setIsFloatingButtonExpandEnable(Z)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_3
    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_9

    sget v5, Lcom/coloros/translate/R$string;->return_value:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v3

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const-string v4, "#6F90C1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v4}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setMainFloatingButtonBackgroundColor(Landroid/content/res/ColorStateList;)V

    :goto_6
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz v0, :cond_b

    new-instance v4, Lcom/coloros/translate/ui/simultaneous/main/t;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/simultaneous/main/t;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setFloatingButtonClickListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;)V

    :cond_b
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_c
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;

    invoke-direct {v6, v5}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$initRecyclerAdapter$1$4$1;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object v4, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-nez v4, :cond_e

    const-string v4, "mBottomLayoutManager"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v3

    :cond_e
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v4, Lcom/coloros/translate/ui/simultaneous/main/k;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/simultaneous/main/k;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    iput-object v4, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_f
    new-instance v4, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$f;

    invoke-direct {v4, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$f;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$u;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p0, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    move-object v3, p0

    :goto_7
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/x;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/x;->R(Z)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->v(J)V

    :cond_11
    return-void
.end method

.method public static synthetic o(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->l0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final o0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->l0()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p2, v0, p1, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->J(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/MotionEvent;ZILjava/lang/Object;)V

    return v0
.end method

.method public static synthetic p(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A0(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View;)V

    return-void
.end method

.method private static final p0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p2, v1, p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->J(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/MotionEvent;ZILjava/lang/Object;)V

    return v1
.end method

.method public static synthetic q(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->w0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method private static final q0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "mBottomRecycleView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v3, :cond_1

    const-string v3, "mBottomAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/main/k;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/u;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/u;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public static synthetic r(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->u0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;)V

    return-void
.end method

.method private static final r0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p0, :cond_0

    const-string p0, "mBottomAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic s(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->P(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method

.method private final s0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "initSelectLanguage"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/coloros/translate/o;

    invoke-direct {v1, v0}, Lcom/coloros/translate/o;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->f:Lcom/coloros/translate/o;

    invoke-virtual {v1, p0}, Lcom/coloros/translate/o;->F(Lcom/coloros/translate/o$c;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->f:Lcom/coloros/translate/o;

    if-eqz v1, :cond_0

    sget v2, Lcom/coloros/translate/R$drawable;->right_single_arrow:I

    invoke-virtual {v1, v2}, Lcom/coloros/translate/o;->E(I)V

    :cond_0
    sget v1, Lcom/coloros/translate/R$id;->chooseLanguage:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/widget/LanguageChooseView;

    invoke-virtual {v1}, Lcom/coloros/translate/widget/LanguageChooseView;->e()V

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$g;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$g;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v1, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnFromLangeClickListener(Lw8/l;)V

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$h;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$h;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v1, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnToLangeClickListener(Lw8/l;)V

    new-instance v2, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$i;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$i;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v1, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnSwitchClickListener(Lw8/l;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->p:Lcom/coloros/translate/widget/LanguageChooseView;

    sget v1, Lcom/coloros/translate/R$id;->chooseLanguage_tablet:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/widget/LanguageChooseView;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/LanguageChooseView;->e()V

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$j;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnFromLangeClickListener(Lw8/l;)V

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$k;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$k;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnToLangeClickListener(Lw8/l;)V

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$l;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$l;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnSwitchClickListener(Lw8/l;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q:Lcom/coloros/translate/widget/LanguageChooseView;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a0()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->r:Lcom/coloros/translate/widget/LanguageChooseView;

    :cond_1
    return-void
.end method

.method public static final synthetic t(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C(Z)V

    return-void
.end method

.method public static final synthetic u(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->L(Z)V

    return-void
.end method

.method private static final u0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Landroid/view/View;)V
    .locals 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->k0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->F0(Z)V

    sget-object v1, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->k0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "simultaneous_record_switch"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->k0()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/n;->D(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->f1()V

    return-void
.end method

.method public static final synthetic v(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->U()Z

    move-result p0

    return p0
.end method

.method public static final synthetic w(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private static final w0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBottomLayoutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p0, :cond_1

    const-string p0, "mBottomAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/k;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public static final synthetic x(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)Lcom/coloros/translate/o;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->f:Lcom/coloros/translate/o;

    return-object p0
.end method

.method private final x0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->l0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic y(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->F:Z

    return p0
.end method

.method private final y0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->n0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic z(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E0()V

    return-void
.end method

.method private final z0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "notifyNoNetSnakeBar"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz p0, :cond_0

    sget v0, Lcom/coloros/translate/R$id;->rootView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$string;->no_network_connect:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x7d0

    invoke-static {v0, p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->make(Landroid/view/View;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p0

    sget v0, Lcom/coloros/translate/base/R$string;->action_setting:I

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/w;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/w;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setOnAction(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBottomLanguageButton"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/i;->f()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "mBottomButtonSpeakIcon"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getLinearMotorVibrator(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->K:Lcom/oplus/os/WaveformEffect;

    invoke-virtual {v0, p0}, Lcom/oplus/os/LinearmotorVibrator;->cancelVibrate(Lcom/oplus/os/WaveformEffect;)V

    :cond_3
    return-void
.end method

.method public final C0()V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->X()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "si"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/LanguageManager;->O(Lcom/coloros/translate/d;Ljava/lang/String;)V

    return-void
.end method

.method public final D0(Z)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartAndStopAsr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousViewControl"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;->x(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M0()V

    return-void
.end method

.method public final F(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->G0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->W0()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->z0(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->X0()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->z0(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->U0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->S0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q()V

    return-void
.end method

.method public final H()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->j:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "topLanguageToolLay"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e0(ZZ)V

    :cond_2
    invoke-static {p0, v1, v2, v3, v4}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;JILjava/lang/Object;)V

    return-void
.end method

.method public final I0()V
    .locals 3

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->G0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->X0()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->z0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->U0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->S0(Z)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v1, v0, v2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->f0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;ZZILjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->F:Z

    return-void
.end method

.method public final J0(Lw8/a;)V
    .locals 10

    const-string v0, "animationEndCallBack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "recordStatus"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_1

    const-string v0, "mBottomRecycleView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->z:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v0, "emptyTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    iget-object v6, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h:Landroid/widget/RadioButton;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q:Lcom/coloros/translate/widget/LanguageChooseView;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->r:Lcom/coloros/translate/widget/LanguageChooseView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v7, 0x1

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/coloros/translate/ui/simultaneous/main/i;->p(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLw8/a;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    sget v1, Lcom/coloros/translate/R$id;->history:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string p1, "findItem(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->o:Landroid/view/View;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/ui/simultaneous/main/i;->r(Lcom/coloros/translate/ui/simultaneous/main/i;Landroid/view/MenuItem;Landroid/view/View;ZLw8/a;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final L0(Z)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restorePlayStatus isPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SimultaneousViewControl"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->G:Landroid/view/View;

    if-nez v2, :cond_0

    const-string v2, "mBottomLanguageButton"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restorePlayStatus error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->K()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousViewControl"

    const-string v1, "viewModel Initialized error"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final M0()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNotification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimultaneousViewControl"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result p0

    const-string v1, "getApplicationContext(...)"

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/ui/simultaneous/utils/c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/c;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/coloros/translate/R$string;->simultaneous_notify_desc:I

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/c;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/coloros/translate/ui/simultaneous/utils/c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/c;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/coloros/translate/R$string;->simultaneous_notify_mic_pause:I

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/c;->b(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final N0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    return-void
.end method

.method public final O(Z)V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "earControlBtn isPlaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SimultaneousViewControl"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v2, :cond_0

    const-string v2, "mBottomButtonSpeakIcon"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v0, v2

    :goto_0
    new-instance v2, Lcom/coloros/translate/ui/simultaneous/main/a0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/simultaneous/main/a0;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "earControlBtn error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final O0(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    return-void
.end method

.method public final P0(Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    return-void
.end method

.method public final R()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "enableSaveBtn"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->o:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public final V()Lcom/coloros/translate/widget/LanguageChooseView;
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "getLanguageChoose"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->p:Lcom/coloros/translate/widget/LanguageChooseView;

    return-object p0
.end method

.method public final V0(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SimultaneousViewControl"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "showSaveDialog finish"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0, v2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;->u(ZZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0, v2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;->u(ZZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSaveDialog isFinish "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    if-eqz p0, :cond_3

    invoke-interface {p0, v2, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;->u(ZZ)V

    :cond_3
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/n;->z()V

    return-void
.end method

.method public final W()Lcom/coloros/translate/widget/LanguageChooseView;
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "getLanguageChooseTablet"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q:Lcom/coloros/translate/widget/LanguageChooseView;

    return-object p0
.end method

.method public final Y()Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    return-object p0
.end method

.method public final Y0()V
    .locals 6

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBottomLayoutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "mBottomAdapter"

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object v4, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4}, Lcom/coloros/translate/ui/simultaneous/main/k;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_3

    const-string v0, "mBottomRecycleView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    new-instance v3, Lcom/coloros/translate/ui/simultaneous/main/f0;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/simultaneous/main/f0;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final Z()Lcom/coloros/translate/ui/simultaneous/main/m;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Z)V
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;JILjava/lang/Object;)V

    return-void
.end method

.method public final a1(J)V
    .locals 9

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    const/4 v1, 0x0

    const-string v2, "mBottomAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/k;->g()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1, v3, v4}, Lcom/coloros/translate/ui/simultaneous/main/k;->s(J)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/k;->h()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_e

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_6
    invoke-virtual {v3}, Lcom/coloros/translate/ui/simultaneous/main/k;->h()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/coloros/translate/ui/simultaneous/main/k;->u(J)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/k;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/a;

    iget-object v5, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v5, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v1

    :cond_8
    invoke-virtual {v5}, Lcom/coloros/translate/ui/simultaneous/main/k;->j()J

    move-result-wide v5

    invoke-virtual {v4}, Lo2/a;->d()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    const/4 v3, -0x1

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/k;->s(J)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v4, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v4, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v1

    :cond_c
    invoke-virtual {v4}, Lcom/coloros/translate/ui/simultaneous/main/k;->j()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCurrentHeightLightMsgId old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " new:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimultaneousViewControl"

    invoke-virtual {v0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p0, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    move-object v1, p0

    :goto_3
    const/16 p0, -0x63

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final b0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->F:Z

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final b1(J)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    const/4 v1, 0x0

    const-string v2, "mBottomAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/k;->r(J)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/k;->p(Z)V

    return-void
.end method

.method public final c1(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E:Z

    const-string v1, "mBottomAdapter"

    const/4 v2, 0x0

    const-string v3, "SimultaneousViewControl"

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataItem error1:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p1, :cond_3

    const-string p1, "mBottomRecycleView"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_3
    move-object v2, p1

    :goto_3
    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/p;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/p;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataItem error2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q()V

    return-void

    :cond_5
    :goto_6
    iget-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->U()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "updateDataItem isTouchMove reject"

    invoke-virtual {p1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_6
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "updateDataItem isTouchMove update"

    invoke-virtual {p1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    move-object v2, p1

    :goto_7
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :goto_8
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q()V

    return-void
.end method

.method public final d0(Ljava/util/List;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p0, :cond_0

    const-string p0, "mBottomAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/k;->t(Ljava/util/List;)V

    return-void
.end method

.method public final g1(I)V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->S(I)V

    return-void
.end method

.method public i(Ljava/lang/Boolean;)V
    .locals 7

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousViewControl"

    const-string v1, "onLanguageChanged"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->X()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->X()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->p:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(I)V

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->p:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(I)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(I)V

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->q:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(I)V

    :cond_3
    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->t:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->u:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->t:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->u:Lcom/coloros/translate/b;

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->t:Lcom/coloros/translate/b;

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->u:Lcom/coloros/translate/b;

    invoke-interface {v0, v1, v2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;->l(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    const/4 v1, 0x0

    const-string v2, "mBottomAdapter"

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    sget-object v3, Lcom/coloros/translate/repository/local/a;->INSTANCE:Lcom/coloros/translate/repository/local/a;

    iget-object v4, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->t:Lcom/coloros/translate/b;

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->u:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coloros/translate/repository/local/a;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/simultaneous/main/k;->q(Z)V

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6
    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/k;->o()V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Z()Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->D()V

    :cond_8
    return-void
.end method

.method public final t0()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousViewControl"

    const-string v2, "initView"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->g0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    if-eqz v0, :cond_2

    sget v1, Lcom/coloros/translate/R$id;->asrSpeakLottie:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    if-nez v1, :cond_0

    const-string v1, "mAsrSpeakLottie"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v3, v1}, Lcom/coloros/translate/ui/simultaneous/main/i;->k(Landroid/widget/ImageView;)V

    sget v1, Lcom/coloros/translate/R$id;->topLanguageToolLay:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->j:Landroid/view/View;

    sget v1, Lcom/coloros/translate/R$id;->recordSwitch:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k:Lcom/coloros/translate/ui/simultaneous/main/i;

    invoke-virtual {v1, v0}, Lcom/coloros/translate/ui/simultaneous/main/i;->g(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->h:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/b0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/b0;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->F:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->n0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->s0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->k0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->m0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->X0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->U0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->T0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->f1()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->x0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->S0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->R()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->B()V

    return-void
.end method

.method public final v0(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E:Z

    const-string v1, "SimultaneousViewControl"

    const-string v2, "mBottomAdapter"

    const/4 v3, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->A:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->getMainFloatingButton()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Y0()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q()V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->y:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez p1, :cond_4

    const-string p1, "mBottomRecycleView"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    move-object v3, p1

    :goto_1
    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/x;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/x;-><init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataItem error2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_4
    iget-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->E:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->U()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "insertData isTouchMove reject"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "insertData isTouchMove update"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D:Lcom/coloros/translate/ui/simultaneous/main/k;

    if-nez p1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-object v3, p1

    :goto_5
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :goto_6
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Q()V

    return-void
.end method
