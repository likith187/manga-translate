.class public Lcom/coloros/translate/ui/dialoguetranslation/i;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/i$a;
    }
.end annotation


# static fields
.field public static final u:Lcom/coloros/translate/ui/dialoguetranslation/i$a;


# instance fields
.field private final a:Landroid/view/View;

.field private b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

.field private c:Landroid/content/Context;

.field private final f:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field private final h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/coloros/translate/repository/local/Conversation;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/airbnb/lottie/LottieAnimationView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:I

.field private final r:Z

.field private final s:I

.field private final t:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/i;->u:Lcom/coloros/translate/ui/dialoguetranslation/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/coloros/translate/ui/dialoguetranslation/i0;Landroid/content/Context;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mViewMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    iput-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    sget p2, Lcom/coloros/translate/R$id;->select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    sget p2, Lcom/coloros/translate/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    sget p2, Lcom/coloros/translate/R$id;->reTranslationLL:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->i:Landroid/view/View;

    sget p2, Lcom/coloros/translate/R$id;->fromLanguage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->k:Landroid/widget/TextView;

    sget p2, Lcom/coloros/translate/R$id;->toLanguage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->l:Landroid/widget/TextView;

    sget p2, Lcom/coloros/translate/R$id;->playTts:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    sget p2, Lcom/coloros/translate/R$id;->fromLanguage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->n:Landroid/widget/TextView;

    sget p2, Lcom/coloros/translate/R$id;->toLanguage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->o:Landroid/widget/TextView;

    sget p2, Lcom/coloros/translate/R$id;->reTranslationImageView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->p:Landroid/widget/ImageView;

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->r:Z

    sget-object p2, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p2}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/coloros/translate/R$dimen;->dialog_item_layout_extra:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->s:I

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/a;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/a;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i;)V

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->t:Landroidx/lifecycle/b0;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/R$dimen;->dp_10:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0, p1, p1, p1, p1}, Lcom/coloros/translate/utils/w;->c(Landroid/view/View;FFFF)V

    return-void
.end method

.method private final A()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    return-void
.end method

.method private final D()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->x()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/i$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method private final E()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    iget p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->q:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    invoke-static {v0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/coloros/translate/ui/dialoguetranslation/b;

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->h(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void
.end method

.method private static final F(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    invoke-static {p0}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->w(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->x(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->y(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->z(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->F(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/i;->t(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/i;->v(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/coloros/translate/ui/dialoguetranslation/i;Ln8/q;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->r(Lcom/coloros/translate/ui/dialoguetranslation/i;Ln8/q;)V

    return-void
.end method

.method private final j()V
    .locals 12

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->D0(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    sget-object v3, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string p0, "getContext(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x3c

    const/4 v11, 0x0

    const-string v5, "event_longpress_for_edit"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lcom/coloros/translate/utils/f1$a;->b(Lcom/coloros/translate/utils/f1$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final k()I
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lk2/a;->b(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    new-instance v2, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V

    sget-object p0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {v1, p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object v0

    sget-object v1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnWidth()[I

    move-result-object p0

    div-int/lit8 v1, v0, 0x2

    aget p0, p0, v1

    mul-int/2addr p0, v0

    return p0
.end method

.method private final o(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    new-instance p0, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ImageSpan;

    sget-object v1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$drawable;->edit:I

    invoke-direct {v0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method private final q(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->P()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;->b(Ljava/lang/String;)V

    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    :cond_1
    if-eqz v2, :cond_2

    const/16 p0, 0x3e8

    invoke-virtual {v2, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method private static final r(Lcom/coloros/translate/ui/dialoguetranslation/i;Ln8/q;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->j:Lcom/coloros/translate/repository/local/Conversation;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->D()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->E()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->E()V

    :goto_0
    return-void
.end method

.method private static final t(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->T0(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/repository/local/Conversation;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final u(Lcom/coloros/translate/repository/local/Conversation;I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/d;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/d;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getExpandField1()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sample"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/e;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/e;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/f;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/f;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->n:Landroid/widget/TextView;

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/g;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/g;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->n:Landroid/widget/TextView;

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/h;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/h;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->n:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->n:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final v(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, v0, v1, v3, v2}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p2}, Lcom/coloros/translate/repository/d$a;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Y()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2, v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->G0(Z)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q0(Lcom/coloros/translate/repository/local/Conversation;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->A()V

    :goto_0
    return-void
.end method

.method private static final w(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->j()V

    :cond_1
    :goto_0
    return v1
.end method

.method private static final x(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->A()V

    :cond_0
    return-void
.end method

.method private static final y(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->j()V

    :cond_1
    :goto_0
    return v1
.end method

.method private static final z(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->j:Lcom/coloros/translate/repository/local/Conversation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/q;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v2, Ln8/q;

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln8/q;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, -0x1

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->j:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->A0(Lcom/coloros/translate/repository/local/Conversation;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->q(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->A()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->t:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public final C()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->t:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/y;->l(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public final l()Lcom/coui/appcompat/checkbox/COUICheckBox;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-object p0
.end method

.method public final m()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    return-object p0
.end method

.method public final n()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->i:Landroid/view/View;

    return-object p0
.end method

.method public final p()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->a:Landroid/view/View;

    return-object p0
.end method

.method public s(Lcom/coloros/translate/repository/local/Conversation;III)V
    .locals 5

    const-string p3, "data"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->j:Lcom/coloros/translate/repository/local/Conversation;

    iput p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->q:I

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isShowEditIcon()Z

    move-result p3

    const-string v0, "sample"

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getExpandField1()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->o(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->o:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->o:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/i;->u(Lcom/coloros/translate/repository/local/Conversation;I)V

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result p2

    const-string p3, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    sget v4, Lcom/coloros/translate/R$color;->from_item_bg:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    sget v4, Lcom/coloros/translate/R$color;->black_alpha_90:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    sget v4, Lcom/coloros/translate/R$color;->conversation_blue_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    sget v3, Lcom/coloros/translate/R$raw;->icon_play_blue:I

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    sget v3, Lcom/coloros/translate/R$drawable;->bg_play_blue:I

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isRecognizeing()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->i:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->p:Landroid/widget/ImageView;

    new-instance p3, Lcom/coloros/translate/ui/dialoguetranslation/c;

    invoke-direct {p3, p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getExpandField1()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p4, :cond_4

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    sget p3, Lcom/support/appcompat/R$color;->coui_color_container4:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->k:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    sget p3, Lcom/support/appcompat/R$color;->coui_color_label_secondary:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->l:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->c:Landroid/content/Context;

    sget p3, Lcom/support/appcompat/R$color;->coui_color_label_primary:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    sget p2, Lcom/coloros/translate/base/R$raw;->icon_play_black:I

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->m:Lcom/airbnb/lottie/LottieAnimationView;

    sget p2, Lcom/coloros/translate/R$drawable;->bg_play_black:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->k:Landroid/widget/TextView;

    sget-object p2, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p2}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p3

    invoke-static {p3}, Lcom/coloros/translate/utils/o0;->c(Landroid/content/Context;)I

    move-result p3

    iget p4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->s:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->l:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/translate/utils/o0;->c(Landroid/content/Context;)I

    move-result p2

    iget p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->s:I

    sub-int/2addr p2, p3

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_6

    :cond_4
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->i:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->h:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->k:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->r:Z

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->k()I

    move-result p2

    iget p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->s:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    :goto_2
    sub-int/2addr p2, p3

    goto :goto_3

    :cond_5
    sget-object p2, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p2}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/translate/utils/o0;->c(Landroid/content/Context;)I

    move-result p2

    iget p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->s:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->l:Landroid/widget/TextView;

    iget-boolean p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->r:Z

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->k()I

    move-result p2

    iget p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->s:I

    sub-int/2addr p2, p3

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_4
    sub-int/2addr p2, p0

    goto :goto_5

    :cond_6
    sget-object p2, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p2}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/translate/utils/o0;->c(Landroid/content/Context;)I

    move-result p2

    iget p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->s:I

    sub-int/2addr p2, p3

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i;->f:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_4

    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_7
    :goto_6
    return-void
.end method
