.class final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->J(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $timeMillis:J

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;


# direct methods
.method constructor <init>(JLcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->$timeMillis:J

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;

    iget-wide v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->$timeMillis:J

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;-><init>(JLcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->label:I

    const/4 v2, 0x1

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

    iget-wide v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->$timeMillis:J

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/k0;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->B(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlinx/coroutines/f1;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "ScreenTranslationFloatFrameView"

    const-string v0, "launchDelayedScreenshotJob:isEnabled false"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->q(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->n(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;->b(Landroid/graphics/RectF;)V

    :cond_4
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
