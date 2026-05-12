.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e;->invoke(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "observe: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationPanelActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 3
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    .line 4
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->h0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/coloros/translate/panel/TextTranslationPanel;->A0(Z)V

    .line 5
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->h0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/coloros/translate/panel/TextTranslationPanel;->B0(Z)V

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->f0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v1

    .line 8
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->f0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/LanguageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v3

    .line 9
    invoke-static {p0, v1, v3}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->l0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observe: result is empty: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->f0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/b;->AUTO:Lcom/coloros/translate/b;

    if-eq v0, v1, :cond_1

    const/4 v3, 0x1

    .line 12
    :cond_1
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->h0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;

    invoke-direct {v1, p0, p1, v3}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->a0(Lw8/a;)V

    :cond_2
    :goto_0
    return-void
.end method
