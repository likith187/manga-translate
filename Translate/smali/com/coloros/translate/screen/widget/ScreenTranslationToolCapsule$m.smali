.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/coloros/translate/screen/widget/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->b(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method private static final b(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent: onSingleTapUp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/j$a;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lw8/a;ILjava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a1()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d1()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B1()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b1()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {p1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c1(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c1(Z)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {p1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c1(Z)V

    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setTargetView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    new-instance p1, Lcom/coloros/translate/screen/widget/n1;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/n1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_1
    return v1
.end method
