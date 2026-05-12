.class final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $timeMillis:J

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;


# direct methods
.method constructor <init>(JLcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->$timeMillis:J

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;

    iget-wide v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->$timeMillis:J

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;-><init>(JLcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->$timeMillis:J

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/k0;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->i(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$b;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->g(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->h(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-static {v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->g(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F

    move-result v2

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-static {v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->f(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-static {v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->h(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F

    move-result v3

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->e(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F

    move-result p0

    add-float/2addr v3, p0

    float-to-int p0, v3

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x0

    throw p0
.end method
