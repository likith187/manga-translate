.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "mChooseLanguageViewBelowToolbar"

    const-string v1, "mChooseLanguageView"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/widget/LanguageChooseView;->o()V

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/coloros/translate/widget/LanguageChooseView;->o()V

    goto :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    invoke-virtual {p1}, Lcom/coloros/translate/widget/LanguageChooseView;->r()V

    .line 6
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Lcom/coloros/translate/widget/LanguageChooseView;->r()V

    :goto_2
    return-void
.end method
