.class final Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->invokeSuspend$lambda$5$lambda$4$lambda$3(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$5$lambda$4$lambda$3(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Landroid/animation/ValueAnimator;)V
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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x2

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->label:I

    const/4 v3, 0x0

    const-string v4, "ScreenTranslationScanHolderView"

    const-string v5, "SelectLoop"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/vfxsdk/naive/a;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/vfxsdk/naive/a;

    iget-object v9, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->d(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/coloros/translate/screen/widget/COETextureView;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    move v2, v8

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showScan:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->d(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/coloros/translate/screen/widget/COETextureView;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    new-instance v2, Lcom/coloros/translate/screen/widget/COETextureView;

    iget-object v9, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {v9}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->e(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/coloros/translate/screen/widget/COETextureView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->i(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/coloros/translate/screen/widget/COETextureView;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->d(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/coloros/translate/screen/widget/COETextureView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->d(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/coloros/translate/screen/widget/COETextureView;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    new-instance v9, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;

    invoke-direct {v9, v2, v7}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;-><init>(Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$1:Ljava/lang/Object;

    iput v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->label:I

    invoke-static {p1, v9, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    invoke-virtual {v2, v8}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/a;->k()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/b;->b(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Float;

    move-result-object v9

    const-string v10, "u_density"

    invoke-virtual {p1, v0, v10, v9}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v2, v8}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->b(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Float;

    move-result-object v3

    const-string v9, "uCornerRadius"

    invoke-virtual {p1, v0, v9, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    sget-object p1, Lcom/oplus/vfxsdk/common/Animator$a;->REVERSE_LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

    invoke-virtual {v2, v5, p1}, Lcom/oplus/vfxsdk/naive/a;->B(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator$a;)V

    :cond_7
    sget-object p1, Lcom/coloros/translate/screen/widget/w;->g:Lcom/coloros/translate/screen/widget/w$a;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->e(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2, v7, v0, v7}, Lcom/coloros/translate/screen/widget/w$a;->h(Lcom/coloros/translate/screen/widget/w$a;Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;ILjava/lang/Object;)Lcom/coloros/translate/screen/widget/w;

    move-result-object p1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v11, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v11, v9, :cond_8

    iget v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v11, v10, :cond_9

    :cond_8
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v9, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    move-result v9

    cmpg-float v9, v9, v2

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    cmpg-float v9, v9, v3

    if-nez v9, :cond_a

    goto :goto_2

    :cond_a
    iget-object v9, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->d(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/coloros/translate/screen/widget/COETextureView;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/a;->E()V

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object v9

    new-instance v10, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;

    invoke-direct {v10, v2, p1, v3, v7}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;-><init>(Lcom/oplus/vfxsdk/naive/a;Lcom/coloros/translate/screen/widget/w;Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)V

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->L$2:Ljava/lang/Object;

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->label:I

    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    move-object v1, v2

    move-object v2, v3

    :goto_3
    invoke-virtual {v1, v5}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Animator;->isPlay()Z

    move-result p1

    if-ne p1, v6, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v5}, Lcom/oplus/vfxsdk/naive/a;->y(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->b()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/b0;

    invoke-direct {v0, v2}, Lcom/coloros/translate/screen/widget/b0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1, v8}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->k(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Z)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p0, v7}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->m(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlinx/coroutines/f1;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "showScan:finish"

    invoke-virtual {p0, v4, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
