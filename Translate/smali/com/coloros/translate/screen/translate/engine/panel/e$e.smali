.class final Lcom/coloros/translate/screen/translate/engine/panel/e$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/panel/e;-><init>(Landroid/content/Context;Lw8/a;Lw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/screen/translate/engine/panel/e;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$e;->this$0:Lcom/coloros/translate/screen/translate/engine/panel/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/panel/TextTranslationPanel;
    .locals 1

    .line 2
    new-instance v0, Lcom/coloros/translate/panel/TextTranslationPanel;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$e;->this$0:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->v()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/translate/panel/TextTranslationPanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$e;->invoke()Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    return-object p0
.end method
