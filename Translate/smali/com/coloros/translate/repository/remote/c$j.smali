.class final Lcom/coloros/translate/repository/remote/c$j;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/remote/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/repository/remote/c;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/remote/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/c$j;->this$0:Lcom/coloros/translate/repository/remote/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;
    .locals 3

    .line 2
    new-instance v0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    invoke-direct {v0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;-><init>()V

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c$j;->this$0:Lcom/coloros/translate/repository/remote/c;

    .line 3
    invoke-static {p0}, Lcom/coloros/translate/repository/remote/c;->c(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0, v2}, Lcom/coloros/translate/repository/remote/c;->q(Lcom/coloros/translate/repository/remote/c;Z)V

    const/4 p0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, v2}, Lcom/coloros/translate/repository/remote/c;->q(Lcom/coloros/translate/repository/remote/c;Z)V

    .line 6
    const-string v1, "aiunit_stream_translate"

    invoke-static {p0, v1}, Lcom/coloros/translate/repository/remote/c;->j(Lcom/coloros/translate/repository/remote/c;Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;

    move-result-object p0

    .line 7
    :goto_0
    const-string v1, "model"

    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->e(Lcom/coloros/translate/engine/ITranslateEngine;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c$j;->invoke()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object p0

    return-object p0
.end method
