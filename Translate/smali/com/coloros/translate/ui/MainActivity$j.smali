.class final Lcom/coloros/translate/ui/MainActivity$j;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/MainActivity;->i(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/coloros/translate/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/MainActivity;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/ui/MainActivity;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

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

    new-instance p1, Lcom/coloros/translate/ui/MainActivity$j;

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/ui/MainActivity$j;-><init>(Lcom/coloros/translate/ui/MainActivity;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/MainActivity$j;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/MainActivity$j;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/MainActivity$j;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/MainActivity$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/ui/MainActivity$j;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->b1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/translate/ui/MainActivity;->h1(Lcom/coloros/translate/ui/MainActivity;Lcom/coloros/translate/b;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->b1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/translate/ui/MainActivity;->i1(Lcom/coloros/translate/ui/MainActivity;Lcom/coloros/translate/b;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->d1(Lcom/coloros/translate/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "pickerLanguageOri"

    const/4 v3, 0x0

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    iget-object v4, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/MainActivity;->g1(Lcom/coloros/translate/ui/MainActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/MainActivity;->c1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/MainActivity;->c1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getSimpleNameResId()I

    move-result v4

    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->e1(Lcom/coloros/translate/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v4, "pickerLanguageResult"

    if-nez p1, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_4
    iget-object v5, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/MainActivity;->g1(Lcom/coloros/translate/ui/MainActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/MainActivity;->f1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result v5

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/MainActivity;->f1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getSimpleNameResId()I

    move-result v5

    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->b1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->B()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->c1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->d1(Lcom/coloros/translate/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_6
    sget v6, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->f1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->e1(Lcom/coloros/translate/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_8
    sget v5, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->c1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->d1(Lcom/coloros/translate/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_a
    sget v1, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->f1(Lcom/coloros/translate/ui/MainActivity;)Lcom/coloros/translate/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/MainActivity;->e1(Lcom/coloros/translate/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v3, p1

    :goto_2
    sget p1, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    iget-object p1, p0, Lcom/coloros/translate/ui/MainActivity$j;->this$0:Lcom/coloros/translate/ui/MainActivity;

    iput v2, p0, Lcom/coloros/translate/ui/MainActivity$j;->label:I

    invoke-static {p1, p0}, Lcom/coloros/translate/ui/MainActivity;->Z0(Lcom/coloros/translate/ui/MainActivity;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    return-object v0

    :cond_e
    :goto_3
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
