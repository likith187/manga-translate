.class final Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$b;->this$0:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$b;->this$0:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->a(Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;)Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/engine/ITtsEngine;->stopPlay()V

    :cond_0
    return-void
.end method
