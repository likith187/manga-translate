.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$i;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;-><init>()V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$i;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/panel/TextTranslationPanel;
    .locals 1

    .line 2
    new-instance v0, Lcom/coloros/translate/panel/TextTranslationPanel;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$i;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity;

    invoke-direct {v0, p0}, Lcom/coloros/translate/panel/TextTranslationPanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationPanelActivity$i;->invoke()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    return-object p0
.end method
