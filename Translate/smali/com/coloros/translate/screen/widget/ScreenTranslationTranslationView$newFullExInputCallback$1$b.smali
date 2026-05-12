.class final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;
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

.field final synthetic this$1:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Landroid/view/InputEvent;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;",
            "Landroid/view/InputEvent;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$1:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->$event:Landroid/view/InputEvent;

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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$1:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->$event:Landroid/view/InputEvent;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Landroid/view/InputEvent;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->label:I

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

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->b(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;)Lkotlinx/coroutines/f1;

    move-result-object p1

    if-eqz p1, :cond_2

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/f1;->G(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$1:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->J(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->c()Z

    move-result p1

    const-string v0, "ScreenTranslationTranslationView"

    if-eqz p1, :cond_4

    new-instance p1, Lkotlin/jvm/internal/z;

    invoke-direct {p1}, Lkotlin/jvm/internal/z;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->c(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;)Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;->b()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;->a()I

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v2, p1, Lkotlin/jvm/internal/z;->element:Z

    :cond_3
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v2, p1, Lkotlin/jvm/internal/z;->element:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInputEvent\uff1a ACTION_UP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p1, Lkotlin/jvm/internal/z;->element:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->$event:Landroid/view/InputEvent;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->e(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onInputEvent\uff1a ACTION_UP"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1$b;->$event:Landroid/view/InputEvent;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;->e(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;Landroid/view/MotionEvent;)V

    :cond_5
    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
