.class public final Lcom/coloros/translate/ui/dialoguetranslation/z0;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/z0$a;
    }
.end annotation


# static fields
.field public static final P:Lcom/coloros/translate/ui/dialoguetranslation/z0$a;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/ImageView;

.field private C:Lcom/airbnb/lottie/LottieAnimationView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private F:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private G:Lcom/coloros/translate/ui/dialoguetranslation/a1;

.field private H:Lcom/coloros/translate/ui/dialoguetranslation/a1;

.field private I:Landroidx/recyclerview/widget/COUILinearLayoutManager;

.field private J:Landroidx/recyclerview/widget/COUILinearLayoutManager;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/TextView;

.field private final M:Ln8/j;

.field private final N:Lcom/coloros/translate/ui/dialoguetranslation/z0$k;

.field private final O:Ln8/j;

.field private a:Z

.field private b:Landroid/os/Vibrator;

.field private c:Z

.field private f:Z

.field private h:Z

.field private i:J

.field private j:Lcom/coloros/translate/b;

.field private k:Lcom/coloros/translate/b;

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/coloros/translate/o;

.field private n:Lcom/coloros/translate/ui/simultaneous/main/i;

.field private o:Landroid/view/View;

.field private p:Landroid/content/Context;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/airbnb/lottie/LottieAnimationView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/z0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/z0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->P:Lcom/coloros/translate/ui/dialoguetranslation/z0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->a:Z

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->h:Z

    sget-object v0, Lcom/coloros/translate/b;->ENGLISH:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    sget-object v0, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/i;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/main/i;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->n:Lcom/coloros/translate/ui/simultaneous/main/i;

    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/z0$h;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/z0$h;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->M:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/z0$k;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$k;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N:Lcom/coloros/translate/ui/dialoguetranslation/z0$k;

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/z0$i;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$i;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->O:Ln8/j;

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->b0()V

    return-void
.end method

.method private final B()V
    .locals 3

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/R$dimen;->face_to_face_layout_tablet_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "mView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget v1, Lcom/coloros/translate/R$id;->simultaneous_panel:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private final C()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    const-string v0, "mBottomButtonSpeakLottie"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->c0()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->f0()V

    :goto_0
    return-void
.end method

.method private final D()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    const-string v0, "mTopButtonSpeakLottie"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->d0()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->i0()V

    :goto_0
    return-void
.end method

.method private final E()Z
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/coloros/translate/ui/dialoguetranslation/FaceToFaceTranslateActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/base/BaseActivity;->j0()Z

    move-result v0

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->b:Landroid/os/Vibrator;

    if-eqz v4, :cond_3

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->i:J

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x258

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    return v3

    :cond_4
    iput-wide v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->i:J

    sget-object v4, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v4}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v4, :cond_5

    const-string v4, "mTopButtonSpeakLottie"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_5
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v4, :cond_6

    const-string v4, "mBottomButtonSpeakLottie"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_6
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v4

    if-nez v4, :cond_7

    sget p0, Lcom/coloros/translate/R$string;->no_network:I

    const/4 v0, 0x2

    invoke-static {p0, v3, v0, v2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    return v3

    :cond_7
    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v4, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {v4}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/coloros/translate/permission/a;->d(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v1, :cond_9

    return v3

    :cond_9
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->A:Landroid/widget/TextView;

    if-nez v0, :cond_a

    const-string v0, "mToTipsView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->z:Landroid/widget/TextView;

    if-nez p0, :cond_b

    const-string p0, "mBottomTipsView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v2, p0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return v1
.end method

.method private final F(Landroidx/recyclerview/widget/COUIRecyclerView;I)V
    .locals 1

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/COUILinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1
    return-void
.end method

.method private final G()Lcom/coloros/translate/LanguageManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->M:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/LanguageManager;

    return-object p0
.end method

.method private final H()Lcom/coloros/translate/ui/dialoguetranslation/c1;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->O:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/dialoguetranslation/c1;

    return-object p0
.end method

.method private final I(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->h:Z

    sget p0, Lcom/coloros/translate/R$layout;->face_to_face_fragment_layout_portrait:I

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->h:Z

    sget p0, Lcom/coloros/translate/R$layout;->face_to_face_fragment_layout_landscape:I

    :goto_0
    invoke-virtual {v0, p0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final J()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    const-string v1, "mView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget v3, Lcom/coloros/translate/R$id;->topLanguageButton:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v4, Lcom/coloros/translate/R$id;->bottomLanguageButton:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    sget v4, Lcom/coloros/translate/R$id;->topButtonSpeakLottie:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    sget v4, Lcom/coloros/translate/R$id;->topButtonSpeakIcon:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->B:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->n:Lcom/coloros/translate/ui/simultaneous/main/i;

    if-nez v0, :cond_4

    const-string v0, "mTopButtonSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v4, v0}, Lcom/coloros/translate/ui/simultaneous/main/i;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    sget v4, Lcom/coloros/translate/R$id;->bottomButtonSpeakLottie:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    sget v4, Lcom/coloros/translate/R$id;->bottomButtonSpeakIcon:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->n:Lcom/coloros/translate/ui/simultaneous/main/i;

    if-nez v0, :cond_7

    const-string v0, "mBottomButtonSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v4, v0}, Lcom/coloros/translate/ui/simultaneous/main/i;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    sget v4, Lcom/coloros/translate/R$id;->recording_tips_top:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    sget v4, Lcom/coloros/translate/R$id;->recording_tips_bottom:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    sget v4, Lcom/coloros/translate/R$id;->language_choose_from:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    sget v4, Lcom/coloros/translate/R$id;->language_choose_to:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    sget v4, Lcom/coloros/translate/R$id;->top_tips:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    sget v4, Lcom/coloros/translate/R$id;->down_tips:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->z:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_e
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->A:Landroid/widget/TextView;

    if-nez v0, :cond_f

    const-string v0, "mToTipsView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_f
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->z:Landroid/widget/TextView;

    if-nez v0, :cond_10

    const-string v0, "mBottomTipsView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_10
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_12

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    sget v4, Lcom/coloros/translate/R$id;->auto_play:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_13

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_13
    sget v4, Lcom/coloros/translate/R$id;->back:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    move-object v2, v0

    :goto_0
    sget v0, Lcom/coloros/translate/R$id;->language_switch:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->K:Landroid/widget/ImageView;

    return-void
.end method

.method private final K()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslateFragment"

    const-string v2, "initDataObserveListener :"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->L()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$b;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->W()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$c;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->U()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/z0$d;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$d;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->V()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/z0$e;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$e;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/z0$f;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$f;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N(Landroidx/lifecycle/y;Lw8/l;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/z0$g;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$g;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N(Landroidx/lifecycle/y;Lw8/l;)V

    return-void
.end method

.method private final L()V
    .locals 12

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    const-string v1, "mView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget v3, Lcom/coloros/translate/R$id;->upper_recyclerview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->E:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget v4, Lcom/coloros/translate/R$id;->lower_recyclerview:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->F:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    sget v1, Lcom/coloros/translate/R$id;->result_sign:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->L:Landroid/widget/TextView;

    const-string v1, "aiSignTextView"

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    sget-object v3, Lcom/coloros/translate/utils/p0;->TRANSLATION:Lcom/coloros/translate/utils/p0;

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    const-string v5, "mContext"

    if-nez v4, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    invoke-static {v3, v4}, Lcom/coloros/translate/utils/d1;->b(Lcom/coloros/translate/utils/p0;Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->E:Landroidx/recyclerview/widget/COUIRecyclerView;

    const-string v3, "mUpperRecyclerView"

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    new-instance v4, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v6, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_6
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->I:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->I:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-nez v4, :cond_7

    const-string v4, "mTopLayoutManager"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v4, Lcom/coloros/translate/ui/dialoguetranslation/a1;

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v6, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_8
    invoke-direct {v4, v6}, Lcom/coloros/translate/ui/dialoguetranslation/a1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->q(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V

    invoke-virtual {v4, v8}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->p(Z)V

    iput-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->E:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/x;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/x;->R(Z)V

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$m;->v(J)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->F:Landroidx/recyclerview/widget/COUIRecyclerView;

    const-string v4, "mLowerRecyclerView"

    if-nez v0, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    new-instance v6, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    iget-object v11, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v11, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v11, v2

    :cond_b
    invoke-direct {v6, v11, v7, v8}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->J:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->J:Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-nez v6, :cond_c

    const-string v6, "mBottomLayoutManager"

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_c
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v6, Lcom/coloros/translate/ui/dialoguetranslation/a1;

    iget-object v11, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v11, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v11, v2

    :cond_d
    invoke-direct {v6, v11}, Lcom/coloros/translate/ui/dialoguetranslation/a1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->q(Lcom/coloros/translate/ui/dialoguetranslation/c1;)V

    invoke-virtual {v6, v7}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->p(Z)V

    iput-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->F:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/x;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/x;->R(Z)V

    invoke-virtual {v0, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$m;->v(J)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    const-string v3, "mTopAdapter"

    if-nez v0, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_f
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->Y()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->o(Ljava/util/List;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    const-string v4, "mBottomAdapter"

    if-nez v0, :cond_10

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_10
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->N()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->o(Ljava/util/List;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    if-nez v0, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->getItemCount()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    if-nez v0, :cond_12

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->K()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->L:Landroid/widget/TextView;

    if-nez p0, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method private final M(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->r:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "mBottomLanguageButton"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method private final N(Landroidx/lifecycle/y;Lw8/l;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/s;

    move-result-object p0

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/z0$j;

    invoke-direct {v0, p2}, Lcom/coloros/translate/ui/dialoguetranslation/z0$j;-><init>(Lw8/l;)V

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/z0$l;

    invoke-direct {p2, v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$l;-><init>(Lw8/l;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method private final Q()V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->i0()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->f0()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "mTopAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    if-nez v0, :cond_3

    const-string v0, "mBottomAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/a1;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->A:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const-string v0, "mToTipsView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->z:Landroid/widget/TextView;

    if-nez v0, :cond_6

    const-string v0, "mBottomTipsView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->K()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->L:Landroid/widget/TextView;

    if-nez v0, :cond_7

    const-string v0, "aiSignTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->g0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->h0()V

    return-void
.end method

.method private final T()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mTtsAutoPlaySwitch"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/s0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/s0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/coloros/translate/o;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string v2, "mContext"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-direct {v0, v2}, Lcom/coloros/translate/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->m:Lcom/coloros/translate/o;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v0, "mBottomLanguageChooseView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/t0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/t0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->v:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string v0, "mTopLanguageChooseView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/u0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/u0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->t:Landroid/view/View;

    if-nez v0, :cond_4

    const-string v0, "mBackView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/v0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/v0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->B:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    const-string v0, "mTopButtonSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/w0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/w0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const-string v0, "mBottomButtonSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/x0;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/x0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->K:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    const-string v0, "mLanguageSwitch"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/y0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/y0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final U(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
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
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->m:Lcom/coloros/translate/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/o;->M()V

    :cond_1
    return-void
.end method

.method private static final V(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 7

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
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->P()Z

    move-result p1

    const-string v0, "mTtsAutoPlaySwitch"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    sget-object p1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$drawable;->auto_play_disable:I

    invoke-static {v0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->g0(Z)V

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p0

    sget p1, Lcom/coloros/translate/R$string;->auto_play_close_tips:I

    invoke-static {p1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "auto_play"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, p1

    :goto_1
    sget-object p1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget v4, Lcom/coloros/translate/R$drawable;->auto_play_enable:I

    invoke-static {v0, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->g0(Z)V

    invoke-virtual {p1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p0

    sget p1, Lcom/coloros/translate/R$string;->auto_play_start_tips:I

    invoke-static {p1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "auto_play"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private static final W(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
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
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->m:Lcom/coloros/translate/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3}, Lcom/coloros/translate/o;->G(Z)V

    :cond_1
    return-void
.end method

.method private static final X(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
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
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->m:Lcom/coloros/translate/o;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/o;->G(Z)V

    :cond_1
    return-void
.end method

.method private static final Y(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "isFromEar"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    sget p1, Lcom/support/dialog/R$anim;->coui_bottom_dialog_exit:I

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final Z(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->j()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->E()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->s0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "mBottomButtonSpeakLottie"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v1

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v4, :cond_2

    const-string v4, "mTopButtonSpeakLottie"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v3

    :cond_2
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v4

    invoke-virtual {p1, v1, v4, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->l0(ZZZ)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->c0()V

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D()V

    return-void
.end method

.method private static final a0(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n;->i()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->E()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->s0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i0(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "mBottomButtonSpeakLottie"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "mTopButtonSpeakLottie"

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v3

    invoke-virtual {p1, v1, v3, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->l0(ZZZ)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->d0()V

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C()V

    return-void
.end method

.method private final b0()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->d0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->c0()V

    return-void
.end method

.method private final c0()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRecordingBottomTips"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v2, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->click_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D:Landroid/widget/ImageView;

    const-string v3, "mBottomButtonSpeakIcon"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v2

    sget v4, Lcom/coloros/translate/R$string;->click_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "mBottomButtonSpeakLottie"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-static {v0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v3, :cond_4

    const-string v3, "mContext"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    sget v4, Lcom/coloros/translate/R$drawable;->mic_on_button:I

    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k0(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->c:Z

    return-void
.end method

.method private final d0()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRecordingTopTips"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v2, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->click_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->B:Landroid/widget/ImageView;

    const-string v3, "mTopButtonSpeakIcon"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v2

    sget v4, Lcom/coloros/translate/R$string;->click_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "mTopButtonSpeakLottie"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-static {v0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->B:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v3, :cond_4

    const-string v3, "mContext"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    sget v4, Lcom/coloros/translate/R$drawable;->mic_on_button:I

    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k0(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->f:Z

    return-void
.end method

.method private final e0()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "auto_play"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mTtsAutoPlaySwitch"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$drawable;->auto_play_enable:I

    invoke-static {v0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->g0(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->s:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$drawable;->auto_play_disable:I

    invoke-static {v0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->g0(Z)V

    :goto_2
    return-void
.end method

.method private final f0()V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "mBottomButtonSpeakLottie"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "mRecordingBottomTips"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget-object v3, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v3}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v4

    sget v5, Lcom/coloros/translate/R$string;->click_to_stop_speak:I

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D:Landroid/widget/ImageView;

    const-string v4, "mBottomButtonSpeakIcon"

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v3}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v5, Lcom/coloros/translate/R$string;->click_to_stop_speak:I

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v3, :cond_4

    const-string v3, "mContext"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    sget v4, Lcom/coloros/translate/R$drawable;->mic_stop_button:I

    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->C:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j0(Lcom/airbnb/lottie/LottieAnimationView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->c:Z

    return-void
.end method

.method private final g0()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->u:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBottomLanguageChooseView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->v:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "mTopLanguageChooseView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private final h0()V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->z:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBottomTipsView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v2, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->click_mic_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->A:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "mToTipsView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->click_mic_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v0, "mRecordingBottomTips"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->click_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    const-string v0, "mBottomButtonSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->click_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->x:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v0, "mRecordingTopTips"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->click_to_speak:I

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->B:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    const-string v0, "mTopButtonSpeakIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$string;->click_to_speak:I

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final i0()V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "mTopButtonSpeakLottie"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->x:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "mRecordingTopTips"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    sget-object v3, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v3}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v4

    sget v5, Lcom/coloros/translate/R$string;->click_to_stop_speak:I

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->B:Landroid/widget/ImageView;

    const-string v4, "mTopButtonSpeakIcon"

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v3}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    sget v5, Lcom/coloros/translate/R$string;->click_to_stop_speak:I

    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {v6}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/coloros/translate/LanguageManager;->r(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->B:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    if-nez v3, :cond_4

    const-string v3, "mContext"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    sget v4, Lcom/coloros/translate/R$drawable;->mic_stop_button:I

    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->w:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j0(Lcom/airbnb/lottie/LottieAnimationView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->f:Z

    return-void
.end method

.method private final j0(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const/16 p0, 0x88

    const/16 v0, 0x12a

    invoke-virtual {p1, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->B(II)V

    new-instance p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$m;

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0$m;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method private final k0(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    new-instance p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$n;

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0$n;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p1}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public static synthetic l(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->Z(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->W(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->U(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->X(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->a0(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->V(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->Y(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic s(Lcom/coloros/translate/ui/dialoguetranslation/z0;Landroidx/recyclerview/widget/COUIRecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->F(Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    return-void
.end method

.method public static final synthetic t(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->L:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic u(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    return-object p0
.end method

.method public static final synthetic v(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->F:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method public static final synthetic w(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/a1;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G:Lcom/coloros/translate/ui/dialoguetranslation/a1;

    return-object p0
.end method

.method public static final synthetic x(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->E:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method public static final synthetic y(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/c1;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic z(Lcom/coloros/translate/ui/dialoguetranslation/z0;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->M(Z)V

    return-void
.end method


# virtual methods
.method public final O()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->j()V

    return-void
.end method

.method public final P(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothDevice :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceToFaceTranslateFragment"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->G(Landroid/bluetooth/BluetoothDevice;)V

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

    const-string v1, "updateEarControl error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "updateEarControl "

    const-string v2, "FaceToFaceTranslateFragment"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->D:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string p0, "mBottomButtonSpeakIcon"

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

    const-string v3, "updateEarControl error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final S()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    return-void
.end method

.method public i(Ljava/lang/Boolean;)V
    .locals 6

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLanguage:mTopCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mBottomCode:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceToFaceTranslateFragment"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->g0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->h0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->k:Lcom/coloros/translate/b;

    invoke-virtual {v0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->j:Lcom/coloros/translate/b;

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->r0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslateFragment"

    const-string v2, "onAttach"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->k()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/j$a;->e(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->a:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged mIsPortraitScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FaceToFaceTranslateFragment"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->l:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->l:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->I(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->L()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->J()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->e0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->T()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->Q()V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->l:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez p0, :cond_1

    const-string p0, "mView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->p:Landroid/content/Context;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, p3

    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->b:Landroid/os/Vibrator;

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/j$a;->e(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->a:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FaceToFaceTranslateFragment"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->l:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->I(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->B()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->L()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->J()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->T()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->K()V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->o:Landroid/view/View;

    if-nez p0, :cond_1

    const-string p0, "mView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p3, p0

    :goto_0
    return-object p3
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "FaceToFaceTranslateFragment"

    const-string v1, "onDestroy"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslateFragment"

    const-string v2, "onDestroyView "

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/s;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->e0(Landroidx/lifecycle/s;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslateFragment"

    const-string v2, "onPause"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->q0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->b0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->l()V

    sget-object v0, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {v0}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/permission/a;->h()V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N:Lcom/coloros/translate/ui/dialoguetranslation/z0$k;

    invoke-static {p0}, Lg2/a;->f(Lg2/a$a;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslateFragment"

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->F()V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->e0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->G()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    const-string v1, "voice"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/LanguageManager;->O(Lcom/coloros/translate/d;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->d0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->H()Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->c0()V

    invoke-static {}, Lg2/a;->c()V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0;->N:Lcom/coloros/translate/ui/dialoguetranslation/z0$k;

    invoke-static {p0}, Lg2/a;->e(Lg2/a$a;)V

    return-void
.end method
