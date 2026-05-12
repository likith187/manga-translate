.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

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

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->i0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/ui/texttranslation/m0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    sget-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;

    invoke-virtual {v0}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient$Companion;->getDetectName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oplus/aiunit/toolkits/AISettings;->isDetectAvailable(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/texttranslation/m0;->C(Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
