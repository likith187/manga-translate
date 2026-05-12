.class final Lcom/coloros/translate/screen/utils/u$a$d$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/utils/u$a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/utils/u$a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/utils/u$a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/utils/u$a;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$d$a;->this$0:Lcom/coloros/translate/screen/utils/u$a;

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

    new-instance p1, Lcom/coloros/translate/screen/utils/u$a$d$a;

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a$d$a;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/screen/utils/u$a$d$a;-><init>(Lcom/coloros/translate/screen/utils/u$a;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/utils/u$a$d$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/utils/u$a$d$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/utils/u$a$d$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/utils/u$a$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/coloros/translate/screen/utils/u$a$d$a;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$d$a;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$d$a;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/u$a;->g(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/utils/u$a$d$a;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/u$a;->f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$d$a;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/utils/u$a;->i(Lcom/coloros/translate/screen/utils/u$a;Lkotlinx/coroutines/f1;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a$d$a;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/utils/u$a;->j(Lcom/coloros/translate/screen/utils/u$a;Landroid/view/View;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
