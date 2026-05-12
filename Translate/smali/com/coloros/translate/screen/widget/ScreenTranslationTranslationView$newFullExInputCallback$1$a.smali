.class final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->onInputEvent(Landroid/view/InputEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Landroid/view/InputEvent;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Landroid/view/InputEvent;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;",
            "Landroid/view/InputEvent;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->$event:Landroid/view/InputEvent;

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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->$event:Landroid/view/InputEvent;

    invoke-direct {p1, v0, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Landroid/view/InputEvent;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->label:I

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

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->label:I

    const-wide/16 v1, 0x64

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/k0;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$a;->$event:Landroid/view/InputEvent;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->d(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Landroid/view/MotionEvent;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
