.class public abstract Lcom/coloros/translate/utils/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/w;->j(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;FFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/utils/w;->d(Landroid/view/View;FFFF)V

    return-void
.end method

.method public static final c(Landroid/view/View;FFFF)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/utils/v;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/utils/v;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final d(Landroid/view/View;FFFF)V
    .locals 2

    const-string v0, "$this_expandTouch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    float-to-int p2, p3

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    float-to-int p2, p4

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    new-instance p1, Landroid/view/TouchDelegate;

    invoke-direct {p1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method public static final e(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    return-void
.end method

.method public static final f(II)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/w;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static final g(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/utils/u;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/utils/u;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/utils/w;->f(II)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/utils/w;->g(Ljava/lang/String;I)V

    return-void
.end method

.method private static final j(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "$text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
