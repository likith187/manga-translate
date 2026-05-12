.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;
.super Landroid/os/IOplusExInputCallBack$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->t0()Landroid/os/IOplusExInputCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:Lkotlinx/coroutines/f1;

.field private c:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;

.field final synthetic d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-direct {p0}, Landroid/os/IOplusExInputCallBack$Default;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->g(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

.method public static final synthetic b(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;)Lkotlinx/coroutines/f1;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->b:Lkotlinx/coroutines/f1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;)Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;

    return-object p0
.end method

.method public static final synthetic d(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->f(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static final synthetic e(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->h(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private final f(Landroid/view/MotionEvent;)V
    .locals 3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenTranslationTranslationView"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->V(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->Z(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Z)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    new-instance p1, Lcom/coloros/translate/screen/widget/b2;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/b2;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final g(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->M(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/business/k;->g()V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->J(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->b()V

    return-void
.end method

.method private final h(Landroid/view/MotionEvent;)V
    .locals 4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->U(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->V(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processUpAndCancel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenTranslationTranslationView"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->Z(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->V(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->R(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/l;

    move-result-object p1

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->U(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const-wide/16 v0, 0x4b0

    invoke-static {p1, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;J)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->V(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->R(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/l;

    move-result-object p1

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D1(ZZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 10
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_6

    sget-object v4, Lkotlinx/coroutines/y0;->INSTANCE:Lkotlinx/coroutines/y0;

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v5

    new-instance v7, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-direct {v7, p0, v0, p1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Landroid/view/InputEvent;Lkotlin/coroutines/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    goto/16 :goto_1

    :cond_2
    :goto_0
    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;-><init>(II)V

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->J(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->c()Z

    move-result v1

    const-string v4, "ScreenTranslationTranslationView"

    if-eqz v1, :cond_5

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInputEvent\uff1alast event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Z1(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->a:Z

    sget-object v4, Lkotlinx/coroutines/y0;->INSTANCE:Lkotlinx/coroutines/y0;

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v5

    new-instance v7, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;

    invoke-direct {v7, p0, p1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Landroid/view/InputEvent;Lkotlin/coroutines/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->b:Lkotlinx/coroutines/f1;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->b:Lkotlinx/coroutines/f1;

    if-eqz p1, :cond_4

    invoke-static {p1, v3, v2, v3}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_4
    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->b:Lkotlinx/coroutines/f1;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onInputEvent\uff1a processDown"

    invoke-virtual {p1, v4, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Z1(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->a:Z

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->f(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_1
    return-void
.end method
