.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$a;
    }
.end annotation


# static fields
.field private static final o:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$a;

.field private static final p:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/FrameLayout;

.field private c:Lcom/coloros/translate/screen/widget/COETextureView;

.field private f:[I

.field private h:Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

.field private i:Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

.field private final j:Ln8/j;

.field private k:Lkotlinx/coroutines/f1;

.field private l:Lkotlinx/coroutines/f1;

.field private m:Z

.field private final n:Lkotlinx/coroutines/sync/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->p:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->b:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->f:[I

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;->INSTANCE:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->j:Ln8/j;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/sync/c;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->n:Lkotlinx/coroutines/sync/a;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->f:[I

    aget v0, v2, v0

    aget v2, v2, v1

    const v3, 0x800033

    invoke-direct {p1, v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->p(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->p:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public static final synthetic c(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->i:Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    return-object p0
.end method

.method public static final synthetic d(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/coloros/translate/screen/widget/COETextureView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->c:Lcom/coloros/translate/screen/widget/COETextureView;

    return-object p0
.end method

.method public static final synthetic e(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lkotlinx/coroutines/sync/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->n:Lkotlinx/coroutines/sync/a;

    return-object p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->h:Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    return-object p0
.end method

.method private final getDefaultScope()Lkotlinx/coroutines/c0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->j:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/c0;

    return-object p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->i:Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    return-void
.end method

.method public static final synthetic i(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/coloros/translate/screen/widget/COETextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->c:Lcom/coloros/translate/screen/widget/COETextureView;

    return-void
.end method

.method public static final synthetic j(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlinx/coroutines/f1;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->l:Lkotlinx/coroutines/f1;

    return-void
.end method

.method public static final synthetic k(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->m:Z

    return-void
.end method

.method public static final synthetic l(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->h:Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    return-void
.end method

.method public static final synthetic m(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlinx/coroutines/f1;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->k:Lkotlinx/coroutines/f1;

    return-void
.end method

.method public static synthetic o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->n(Z)V

    return-void
.end method

.method private final p(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;

    iget v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    new-instance v2, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$e;

    invoke-direct {v2, p0, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$e;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)V

    iput-object p0, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$d;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->c:Lcom/coloros/translate/screen/widget/COETextureView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->c:Lcom/coloros/translate/screen/widget/COETextureView;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method


# virtual methods
.method public final n(Z)V
    .locals 6

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->getDefaultScope()Lkotlinx/coroutines/c0;

    move-result-object v0

    new-instance v3, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZLkotlin/coroutines/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->l:Lkotlinx/coroutines/f1;

    return-void
.end method

.method public final q()V
    .locals 4

    const-string v0, "ScreenTranslationScanHolderView"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "destroy"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->n(Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy onFailure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationScanHolderView"

    const-string v2, "releaseWhenExitFullTranslation"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->n(Z)V

    return-void
.end method

.method public final s()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->m:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showScan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationScanHolderView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->m:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->getDefaultScope()Lkotlinx/coroutines/c0;

    move-result-object v1

    new-instance v4, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->k:Lkotlinx/coroutines/f1;

    return-void
.end method
