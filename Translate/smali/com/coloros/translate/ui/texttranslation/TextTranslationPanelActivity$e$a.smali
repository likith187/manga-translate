.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e;->invoke(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Ljava/lang/String;

.field final synthetic $sourcePlayerEnable:Z

.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;->$it:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;->$sourcePlayerEnable:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->h0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;->g0(Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v2, v0

    .line 4
    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;->$it:Ljava/lang/String;

    .line 5
    iget-boolean v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$e$a;->$sourcePlayerEnable:Z

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 6
    invoke-static/range {v1 .. v7}, Lf2/a$a;->c(Lf2/a;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method
