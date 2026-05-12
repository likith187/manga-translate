.class public final Lcom/coloros/translate/ui/simultaneous/main/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/main/i$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/coloros/translate/ui/simultaneous/main/i$a;


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private b:Landroid/animation/ValueAnimator;

.field private c:Landroid/animation/Animator;

.field private d:Landroid/animation/Animator;

.field private e:Landroid/animation/Animator;

.field private f:Landroid/animation/Animator;

.field private g:Landroid/animation/ValueAnimator;

.field private h:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/main/i;->i:Lcom/coloros/translate/ui/simultaneous/main/i$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/i;->m(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/i;->h(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/i;->j([Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/i;->o(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;
    .locals 2

    const-string p0, "alpha"

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "ofFloat(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final h(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "$feedback"

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

.method private static final j([Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "$animatorViews"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final m(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animatedValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static final o(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animatedValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic r(Lcom/coloros/translate/ui/simultaneous/main/i;Landroid/view/MenuItem;Landroid/view/View;ZLw8/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Lcom/coloros/translate/ui/simultaneous/main/i$i;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/main/i$i;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/translate/ui/simultaneous/main/i;->q(Landroid/view/MenuItem;Landroid/view/View;ZLw8/a;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->a:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->c:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->d:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->c:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_3
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    :try_start_2
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->d:Landroid/animation/Animator;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_7

    :cond_5
    move-object v1, v0

    :goto_6
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :goto_7
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->e:Landroid/animation/Animator;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->f:Landroid/animation/Animator;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->e:Landroid/animation/Animator;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_9

    :catchall_3
    move-exception v1

    goto :goto_a

    :cond_8
    move-object v1, v0

    :goto_9
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_b

    :goto_a
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    :try_start_4
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->f:Landroid/animation/Animator;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_c

    :catchall_4
    move-exception v1

    goto :goto_d

    :cond_9
    move-object v1, v0

    :goto_c
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_e

    :goto_d
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->g:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_a
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->h:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_b
    :try_start_5
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->g:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_f

    :catchall_5
    move-exception v1

    goto :goto_10

    :cond_c
    move-object v1, v0

    :goto_f
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_11

    :goto_10
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    :try_start_6
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->h:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_12

    :catchall_6
    move-exception v1

    goto :goto_13

    :cond_d
    move-object v1, v0

    :goto_12
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_14

    :goto_13
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/i;->n(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->b:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_e
    :try_start_7
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->b:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_15

    :catchall_7
    move-exception p0

    goto :goto_16

    :cond_f
    :goto_15
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_17

    :goto_16
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 1

    const-string p0, "play"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/e;-><init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final i(Landroid/view/View;[Landroid/view/View;ZZLw8/l;)V
    .locals 5

    const/4 v0, 0x2

    const-string v1, "paddingView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "animatorViews"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "animatorEndCallBack"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->b:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_3
    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p4, :cond_b

    array-length p4, p2

    move v2, p1

    :goto_4
    const/4 v3, 0x0

    if-ge v2, p4, :cond_7

    aget-object v4, p2, v2

    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    if-eqz p3, :cond_5

    move v3, v1

    :cond_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    new-array p1, v0, [F

    if-eqz p3, :cond_8

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_7

    :cond_8
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_7
    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_e

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_9

    const-wide/16 v0, 0x0

    :cond_9
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p3, :cond_a

    new-instance p0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    goto :goto_8

    :cond_a
    new-instance p0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    :goto_8
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p0, Lcom/coloros/translate/ui/simultaneous/main/g;

    invoke-direct {p0, p2}, Lcom/coloros/translate/ui/simultaneous/main/g;-><init>([Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;

    invoke-direct {p0, p5, p3, p5, p3}, Lcom/coloros/translate/ui/simultaneous/main/i$b;-><init>(Lw8/l;ZLw8/l;Z)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_b

    :cond_b
    array-length p0, p2

    :goto_9
    if-ge p1, p0, :cond_d

    aget-object p4, p2, p1

    if-nez p4, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {p4, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_d
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p5, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_b
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final k(Landroid/widget/ImageView;)V
    .locals 1

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/coloros/translate/R$drawable;->si_loading_tablet:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/coloros/translate/R$drawable;->si_loading_fold:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/coloros/translate/R$drawable;->si_loading_phone:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 2

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/h;

    invoke-direct {v0, p1}, Lcom/coloros/translate/ui/simultaneous/main/h;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/i$c;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/i$c;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

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

    const-string v1, "shadowLightAnimaStart error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimultaneousAnimationHelper"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final n(Landroid/view/View;)V
    .locals 2

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/f;

    invoke-direct {v0, p1}, Lcom/coloros/translate/ui/simultaneous/main/f;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/i$d;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/i$d;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

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

    const-string v1, "shadowLightAnimaStop error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimultaneousAnimationHelper"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final p(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLw8/a;)V
    .locals 9

    const/4 p5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "recyclerview"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "emptyView"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "recordSwitch"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "animationEndCallBack"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->c:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->d:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->c:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v4, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v3}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->d:Landroid/animation/Animator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_3
    :goto_3
    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const-wide/16 v2, 0xc8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p4, :cond_4

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3f333333    # 0.7f

    invoke-direct {v6, v7, v5, v8, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0, p1, v4, v5}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v7, v1, [Landroid/animation/Animator;

    aput-object v6, v7, v0

    invoke-virtual {p4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v6, Lcom/coloros/translate/ui/simultaneous/main/i$e;

    invoke-direct {v6, p2, p1, p4}, Lcom/coloros/translate/ui/simultaneous/main/i$e;-><init>(Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    iput-object p4, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->c:Landroid/animation/Animator;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0, p3, v5, v4}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object p4

    invoke-direct {p0, p2, v5, v4}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array p5, p5, [Landroid/animation/Animator;

    aput-object p4, p5, v0

    aput-object v2, p5, v1

    invoke-virtual {p1, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    new-instance p4, Lcom/coloros/translate/ui/simultaneous/main/i$f;

    invoke-direct {p4, p3, p2, p1, p6}, Lcom/coloros/translate/ui/simultaneous/main/i$f;-><init>(Landroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;Lw8/a;)V

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->d:Landroid/animation/Animator;

    return-void

    :cond_4
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0, p3, v4, v5}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-direct {p0, p2, v4, v5}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array p5, p5, [Landroid/animation/Animator;

    aput-object v6, p5, v0

    aput-object v7, p5, v1

    invoke-virtual {p4, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p5, Lcom/coloros/translate/ui/simultaneous/main/i$g;

    invoke-direct {p5, p2, p3, p1}, Lcom/coloros/translate/ui/simultaneous/main/i$g;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p4, p5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    iput-object p4, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->c:Landroid/animation/Animator;

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p3, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0, p1, v5, v4}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p1, p4, v0

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/main/i$h;

    invoke-direct {p1, p2, p6}, Lcom/coloros/translate/ui/simultaneous/main/i$h;-><init>(Landroid/view/View;Lw8/a;)V

    invoke-virtual {p3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->d:Landroid/animation/Animator;

    return-void
.end method

.method public final q(Landroid/view/MenuItem;Landroid/view/View;ZLw8/a;)V
    .locals 8

    const-string v0, "historyView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationEndCallBack"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->e:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->e:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->f:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_3
    move-object v1, v0

    :goto_3
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p3, :cond_6

    if-eqz p2, :cond_4

    invoke-direct {p0, p2, v4, v3}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3f333333    # 0.7f

    invoke-direct {v5, v6, v3, v7, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v5, Lcom/coloros/translate/ui/simultaneous/main/i$j;

    invoke-direct {v5, p2, p3}, Lcom/coloros/translate/ui/simultaneous/main/i$j;-><init>(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    :cond_4
    move-object p3, v0

    :goto_6
    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->f:Landroid/animation/Animator;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-direct {p0, p3, v3, v4}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p3}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/coloros/translate/ui/simultaneous/main/i$k;

    invoke-direct {p3, p1, p2, v0, p4}, Lcom/coloros/translate/ui/simultaneous/main/i$k;-><init>(Landroid/view/MenuItem;Landroid/view/View;Landroid/animation/ValueAnimator;Lw8/a;)V

    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0x96

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->e:Landroid/animation/Animator;

    return-void

    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-direct {p0, p3, v4, v3}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p2, :cond_7

    goto :goto_7

    :cond_7
    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v5, Lcom/coloros/translate/ui/simultaneous/main/i$l;

    invoke-direct {v5, p1, p3}, Lcom/coloros/translate/ui/simultaneous/main/i$l;-><init>(Landroid/view/MenuItem;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8

    :cond_8
    move-object p3, v0

    :goto_8
    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->e:Landroid/animation/Animator;

    if-eqz p2, :cond_9

    invoke-direct {p0, p2, v3, v4}, Lcom/coloros/translate/ui/simultaneous/main/i;->e(Landroid/view/View;FF)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p3}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/coloros/translate/ui/simultaneous/main/i$m;

    invoke-direct {p3, p1, p2, v0, p4}, Lcom/coloros/translate/ui/simultaneous/main/i$m;-><init>(Landroid/view/MenuItem;Landroid/view/View;Landroid/animation/ValueAnimator;Lw8/a;)V

    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/i;->f:Landroid/animation/Animator;

    return-void
.end method
