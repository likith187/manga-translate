.class final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setBlurEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $targetColor:Lkotlin/jvm/internal/a0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/a0;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;",
            "Lkotlin/jvm/internal/a0;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->$targetColor:Lkotlin/jvm/internal/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->$targetColor:Lkotlin/jvm/internal/a0;

    invoke-direct {v0, v1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/a0;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/c0;

    :try_start_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/c0;

    :try_start_2
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/oplus/view/ViewRootManager;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->$targetColor:Lkotlin/jvm/internal/a0;

    iget-object v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget v5, v5, Lkotlin/jvm/internal/a0;->element:I

    invoke-virtual {v1, v5}, Lcom/oplus/view/ViewRootManager;->setColor(I)V

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v5

    new-instance v7, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q$a;

    invoke-direct {v7, v1, v6, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q$a;-><init>(Lcom/oplus/view/ViewRootManager;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/coroutines/d;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->label:I

    invoke-static {v5, v7, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ln8/h0;

    if-nez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->$targetColor:Lkotlin/jvm/internal/a0;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->F(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/Object;

    move-result-object v5

    iget v1, v1, Lkotlin/jvm/internal/a0;->element:I

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v1

    new-instance v3, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q$b;

    invoke-direct {v3, p1, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q$b;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/coroutines/d;)V

    iput-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Ln8/h0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-static {p0}, Ln8/e;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlurEffect exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTranslationToolCapsule"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
