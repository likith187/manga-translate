.class final Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $from:Ljava/lang/String;

.field final synthetic $inputText:Ljava/lang/String;

.field final synthetic $listener:Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;

.field final synthetic $to:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/repository/remote/TranslationEngineHandler;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$from:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$to:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$inputText:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    iput-object p5, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$listener:Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    .line 3
    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$from:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$to:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$inputText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    invoke-static {v4}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->b(Lcom/coloros/translate/repository/remote/TranslationEngineHandler;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coloros/translate/utils/n;->h0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->a(Lcom/coloros/translate/repository/remote/TranslationEngineHandler;)Lcom/coloros/translate/engine/ITranslateEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$from:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$to:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$inputText:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;->$listener:Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/coloros/translate/engine/ITranslateEngine;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    :cond_0
    return-void
.end method
