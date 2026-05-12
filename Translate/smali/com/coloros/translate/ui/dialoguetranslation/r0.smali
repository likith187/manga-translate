.class public final Lcom/coloros/translate/ui/dialoguetranslation/r0;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/r0$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/coloros/translate/ui/dialoguetranslation/r0$a;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

.field private c:Landroid/content/Context;

.field private f:Lcom/coloros/translate/repository/local/Conversation;

.field private h:Landroid/view/View;

.field private i:Lcom/airbnb/lottie/LottieAnimationView;

.field private j:Landroid/widget/TextView;

.field private final k:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/r0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/r0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->l:Lcom/coloros/translate/ui/dialoguetranslation/r0$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/coloros/translate/ui/dialoguetranslation/c1;Landroid/content/Context;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mViewMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    iput-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget p2, Lcom/coloros/translate/R$id;->content_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    sget p2, Lcom/coloros/translate/R$id;->ttsPlay:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->i:Lcom/airbnb/lottie/LottieAnimationView;

    sget p2, Lcom/coloros/translate/R$id;->languageText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/o0;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/dialoguetranslation/o0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/r0;)V

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->k:Landroidx/lifecycle/b0;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/R$dimen;->dp_10:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->i:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0, p1, p1, p1, p1}, Lcom/coloros/translate/utils/w;->c(Landroid/view/View;FFFF)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/dialoguetranslation/r0;Ln8/q;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->f(Lcom/coloros/translate/ui/dialoguetranslation/r0;Ln8/q;)V

    return-void
.end method

.method public static synthetic c(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->m(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/ui/dialoguetranslation/r0;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h(Lcom/coloros/translate/ui/dialoguetranslation/r0;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V

    return-void
.end method

.method private static final f(Lcom/coloros/translate/ui/dialoguetranslation/r0;Ln8/q;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->f:Lcom/coloros/translate/repository/local/Conversation;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->k()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->l()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/ui/dialoguetranslation/r0;->l()V

    :goto_0
    return-void
.end method

.method private static final h(Lcom/coloros/translate/ui/dialoguetranslation/r0;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p2, v1, v2, v3, v0}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p2, v3}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->i0(Z)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->n0(ZZ)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->b0(Lcom/coloros/translate/repository/local/Conversation;)V

    :cond_0
    return-void
.end method

.method private final k()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->i:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->i:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->x()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/r0$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/r0$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method private final l()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->i:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/q0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/q0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->h(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private static final m(Lcom/airbnb/lottie/LottieAnimationView;Landroid/animation/ValueAnimator;)V
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


# virtual methods
.method public final e()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->a:Landroid/view/View;

    return-object p0
.end method

.method public final g(Lcom/coloros/translate/repository/local/Conversation;ZZZ)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->f:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/R$color;->from_item_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/R$color;->black_alpha_90:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/R$color;->from_item_bg:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/R$color;->conversation_blue_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/R$color;->to_item_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/R$color;->black_alpha_90:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/R$color;->to_item_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/R$color;->conversation_blue_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_8

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/coloros/translate/R$dimen;->face_to_face_max_unfold_screen_left_text_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p4, :cond_6

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/coloros/translate/R$dimen;->face_to_face_max_tablet_screen_left_text_width_portrait:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_1

    :cond_6
    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/coloros/translate/R$dimen;->face_to_face_max_tablet_screen_left_text_width_landscape:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_1

    :cond_7
    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/coloros/translate/R$dimen;->face_to_face_max_left_text_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_9

    if-eqz p4, :cond_9

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/coloros/translate/R$dimen;->face_to_face_max_unfold_screen_right_text_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result p3

    if-eqz p3, :cond_b

    if-eqz p4, :cond_a

    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/coloros/translate/R$dimen;->face_to_face_max_tablet_screen_right_text_width_portrait:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_1

    :cond_a
    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/coloros/translate/R$dimen;->face_to_face_max_tablet_screen_right_text_width_landscape:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_1

    :cond_b
    iget-object p3, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/coloros/translate/R$dimen;->face_to_face_max_right_text_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->i:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p3, Lcom/coloros/translate/ui/dialoguetranslation/p0;

    invoke-direct {p3, p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/p0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/r0;Lcom/coloros/translate/repository/local/Conversation;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->k:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->b:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r0;->k:Landroidx/lifecycle/b0;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/y;->l(Landroidx/lifecycle/b0;)V

    return-void
.end method
