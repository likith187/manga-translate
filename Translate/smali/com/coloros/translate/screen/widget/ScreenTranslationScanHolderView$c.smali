.class final Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isExit:Z

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZLkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;",
            "Z",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    iput-boolean p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->$isExit:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->$isExit:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZLkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->f(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lkotlinx/coroutines/sync/a;

    move-result-object p1

    iput v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->label:I

    invoke-static {p1, v4, p0, v3, v4}, Lkotlinx/coroutines/sync/a$a;->a(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object p1

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a;

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    iget-boolean v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->$isExit:Z

    invoke-direct {v1, v5, v6, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZLkotlin/coroutines/d;)V

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->f(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lkotlinx/coroutines/sync/a;

    move-result-object p0

    invoke-static {p0, v4, v3, v4}, Lkotlinx/coroutines/sync/a$a;->b(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
