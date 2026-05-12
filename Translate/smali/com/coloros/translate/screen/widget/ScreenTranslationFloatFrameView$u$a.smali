.class final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->invokeSuspend$lambda$2$lambda$1(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2$lambda$1(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Landroid/animation/ValueAnimator;)V
    .locals 1

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


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x2

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/vfxsdk/naive/a;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    iput v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->label:I

    invoke-static {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->t(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->y(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {p1, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->setGoingHideFloatView(Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->j(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/COETextureView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object v3

    new-instance v5, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p1, v6}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->L$1:Ljava/lang/Object;

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->label:I

    invoke-static {v3, v5, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v1, p1

    :goto_1
    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/a;->E()V

    const-string p1, "SelectLoop"

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/naive/a;->y(Ljava/lang/String;)V

    :cond_5
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->i()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/o;

    invoke-direct {v1, v0}, Lcom/coloros/translate/screen/widget/o;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p0, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->A(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
