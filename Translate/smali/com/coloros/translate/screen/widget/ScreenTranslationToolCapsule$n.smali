.class final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $blurColor:I

.field final synthetic $viewRootManager:Lcom/oplus/view/ViewRootManager;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;


# direct methods
.method constructor <init>(Lcom/oplus/view/ViewRootManager;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ILkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/view/ViewRootManager;",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;",
            "I",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$viewRootManager:Lcom/oplus/view/ViewRootManager;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$blurColor:I

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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$viewRootManager:Lcom/oplus/view/ViewRootManager;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$blurColor:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;-><init>(Lcom/oplus/view/ViewRootManager;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ILkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->label:I

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

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$viewRootManager:Lcom/oplus/view/ViewRootManager;

    const/16 v1, 0xdc

    invoke-virtual {p1, v1}, Lcom/oplus/view/ViewRootManager;->setBlurRadius(I)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$viewRootManager:Lcom/oplus/view/ViewRootManager;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/view/ViewRootManager;->setCornerRadius(F)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$viewRootManager:Lcom/oplus/view/ViewRootManager;

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$blurColor:I

    invoke-virtual {p1, v1}, Lcom/oplus/view/ViewRootManager;->setColor(I)V

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object p1

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n$a;

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->$viewRootManager:Lcom/oplus/view/ViewRootManager;

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n$a;-><init>(Lcom/oplus/view/ViewRootManager;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/coroutines/d;)V

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
