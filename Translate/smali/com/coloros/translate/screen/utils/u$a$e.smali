.class final Lcom/coloros/translate/screen/utils/u$a$e;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/utils/u$a;->o(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $duration:I

.field final synthetic $message:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/utils/u$a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/utils/u$a;Ljava/lang/String;ILkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/utils/u$a;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    iput-object p2, p0, Lcom/coloros/translate/screen/utils/u$a$e;->$message:Ljava/lang/String;

    iput p3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->$duration:I

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

    new-instance p1, Lcom/coloros/translate/screen/utils/u$a$e;

    iget-object v0, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->$message:Ljava/lang/String;

    iget p0, p0, Lcom/coloros/translate/screen/utils/u$a$e;->$duration:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/coloros/translate/screen/utils/u$a$e;-><init>(Lcom/coloros/translate/screen/utils/u$a;Ljava/lang/String;ILkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/utils/u$a$e;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/utils/u$a$e;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/utils/u$a$e;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/utils/u$a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/coloros/translate/screen/utils/u$a$e;->label:I

    if-nez v0, :cond_14

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object p1

    const-string v0, "ToastHelper"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->e(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/coloros/translate/screen/utils/u$a;->j(Lcom/coloros/translate/screen/utils/u$a;Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->g(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {v3}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {v4}, Lcom/coloros/translate/screen/utils/u$a;->a(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->b(Lcom/coloros/translate/screen/utils/u$a;)Lkotlinx/coroutines/f1;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, v2, v1, v2}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1, v2}, Lcom/coloros/translate/screen/utils/u$a;->i(Lcom/coloros/translate/screen/utils/u$a;Lkotlinx/coroutines/f1;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    instance-of v3, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_3

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, -0x2

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-ne v3, v1, :cond_6

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->g(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v4

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    move-object p1, v2

    :goto_3
    invoke-interface {v3, v4, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViewLayout1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    sget v3, Lcom/coloros/translate/screen/R$id;->textview:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_7

    :cond_8
    move-object p1, v2

    :goto_7
    if-nez p1, :cond_9

    goto :goto_8

    :cond_9
    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->$message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    sget v3, Lcom/coloros/translate/screen/R$id;->imageview:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_9

    :cond_a
    move-object p1, v2

    :goto_9
    if-nez p1, :cond_b

    goto :goto_a

    :cond_b
    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->$message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    iget v3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->$duration:I

    invoke-static {p1, v3}, Lcom/coloros/translate/screen/utils/u$a;->h(Lcom/coloros/translate/screen/utils/u$a;I)Lkotlinx/coroutines/f1;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/coloros/translate/screen/utils/u$a;->i(Lcom/coloros/translate/screen/utils/u$a;Lkotlinx/coroutines/f1;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->d(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->c(Landroid/content/Context;)[I

    move-result-object p1

    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {v3}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    aget v5, p1, v4

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    aget v7, p1, v1

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    :cond_c
    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {v3, p1}, Lcom/coloros/translate/screen/utils/u$a;->c(Lcom/coloros/translate/screen/utils/u$a;[I)I

    move-result p1

    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {v3}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    :cond_d
    if-le v4, p1, :cond_13

    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {v3}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    goto :goto_b

    :cond_e
    move-object v3, v2

    :goto_b
    instance-of v4, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_f

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    goto :goto_c

    :cond_f
    move-object v3, v2

    :goto_c
    if-nez v3, :cond_10

    goto :goto_d

    :cond_10
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_d
    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a$e;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    :try_start_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-ne p1, v1, :cond_12

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/u$a;->g(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_e

    :catchall_1
    move-exception p0

    goto :goto_f

    :cond_11
    :goto_e
    invoke-interface {p1, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_10

    :goto_f
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_10
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_13

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewLayout2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
