.class final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a$a;

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {v1, v4, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    iput v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->j(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/COETextureView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/PaintCustomView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->w(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/coloros/translate/screen/widget/COETextureView;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->z(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
