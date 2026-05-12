.class public final Lcom/coloros/translate/screen/widget/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/i0$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/coloros/translate/screen/widget/i0$a;

.field private static final h:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final a:I

.field private final b:Landroid/widget/FrameLayout$LayoutParams;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/translate/screen/widget/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/i0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/i0;->g:Lcom/coloros/translate/screen/widget/i0$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/translate/screen/widget/i0;->h:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawRoot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/screen/R$dimen;->dp_64:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/i0;->a:I

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800033

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/i0;->b:Landroid/widget/FrameLayout$LayoutParams;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/i0;->c:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 v4, 0x2

    invoke-direct {p1, v3, v4}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/i0;->e:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p0, Lcom/coloros/translate/screen/R$drawable;->ic_tool_capsule_shrink_bg:I

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/i0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/i0;->c(Lcom/coloros/translate/screen/widget/i0;)V

    return-void
.end method

.method private static final c(Lcom/coloros/translate/screen/widget/i0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->f:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/i0;->e:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->e:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setTargetView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->e:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coloros/translate/screen/widget/h0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/h0;-><init>(Lcom/coloros/translate/screen/widget/i0;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->f:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/i0;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final d()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationShrinkView"

    const-string v2, "hideShrinkView"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final e()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onDestroy"

    const-string v2, "ScreenTranslationShrinkView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i0;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final f(F)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public final g(F)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "ScreenTranslationShrinkView"

    const-string v3, "showShrinkView"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/i0;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/i0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    aput v0, v2, v1

    const-string v0, "alpha"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/coloros/translate/screen/widget/i0;->h:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
