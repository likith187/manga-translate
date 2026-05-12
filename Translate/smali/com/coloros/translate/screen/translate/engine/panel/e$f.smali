.class final Lcom/coloros/translate/screen/translate/engine/panel/e$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/panel/e;->H(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $resultText:Ljava/lang/String;

.field final synthetic $sourcePlayerEnable:Z

.field final synthetic $sourceText:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/screen/translate/engine/panel/e;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/panel/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/panel/e;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->$sourceText:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->$resultText:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->$sourcePlayerEnable:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->this$0:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->l(Lcom/coloros/translate/screen/translate/engine/panel/e;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->$sourceText:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->$resultText:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$f;->$sourcePlayerEnable:Z

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lf2/a$a;->c(Lf2/a;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method
