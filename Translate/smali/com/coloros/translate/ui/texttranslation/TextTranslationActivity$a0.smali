.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a0;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a0;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShouldStartVoiceInput value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$a0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    return-void
.end method
