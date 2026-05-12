.class final Lcom/coloros/translate/engine/text/engine/d$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/text/engine/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $from:Ljava/lang/String;

.field final synthetic $inputTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $listener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

.field final synthetic $to:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/engine/text/engine/d;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/text/engine/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/engine/text/engine/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/coloros/translate/engine/IOfflineTranslateListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/d$d;->this$0:Lcom/coloros/translate/engine/text/engine/d;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/engine/d$d;->$from:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/engine/d$d;->$to:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/engine/text/engine/d$d;->$inputTextList:Ljava/util/List;

    iput-object p5, p0, Lcom/coloros/translate/engine/text/engine/d$d;->$listener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/text/engine/d$d;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/d$d;->this$0:Lcom/coloros/translate/engine/text/engine/d;

    invoke-static {v0}, Lcom/coloros/translate/engine/text/engine/d;->c(Lcom/coloros/translate/engine/text/engine/d;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/d$d;->$from:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/text/engine/d$d;->$to:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/engine/text/engine/d$d;->$inputTextList:Ljava/util/List;

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d$d;->$listener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/coloros/translate/engine/IOfflineTranslateEngine;->translateList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    return-void
.end method
