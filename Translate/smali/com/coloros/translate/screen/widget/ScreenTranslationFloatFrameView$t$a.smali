.class final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
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

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->v(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->p(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lkotlinx/coroutines/f1;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1, v3, v2, v3}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/PaintCustomView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/coloros/translate/screen/widget/PaintCustomView;->setCallback(Lcom/coloros/translate/screen/widget/PaintCustomView$a;)V

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a$a;

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {v1, v4, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->j(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/COETextureView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/PaintCustomView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {p0, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->w(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/coloros/translate/screen/widget/COETextureView;)V

    invoke-static {p0, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->z(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->s(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
