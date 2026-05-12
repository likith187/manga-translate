.class final Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->c(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $text:Ljava/lang/String;

.field final synthetic $ttsListener:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;

.field final synthetic $ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

.field final synthetic this$0:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;Ljava/lang/String;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->this$0:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$ttsListener:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/TtsParams;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/TtsParams;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/TtsParams;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v3, "zh"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/TtsParams;->b()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "en"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    const-string v0, "female"

    goto :goto_2

    .line 6
    :cond_4
    :goto_1
    sget-object v2, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "broadcast_timbre"

    const-string v4, "female"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    :goto_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-static {}, Lcom/coloros/translate/utils/l;->a()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "tts_speed"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    const-string v3, "speedGrade"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v1, "tts_voice"

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->this$0:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->a(Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;)Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;->$ttsListener:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/coloros/translate/engine/ITtsEngine;->playTextWithExtra(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V

    :cond_5
    return-void
.end method
