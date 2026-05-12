.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$x;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$x;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$x;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$x;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->h()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$x;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->k()V

    :cond_1
    :goto_0
    return-void
.end method
