.class final Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/remote/TtsEngineHandler;->a(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $extras:Landroid/os/Bundle;

.field final synthetic $text:Ljava/lang/String;

.field final synthetic $ttsListener:Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;

.field final synthetic $ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

.field final synthetic this$0:Lcom/coloros/translate/repository/remote/TtsEngineHandler;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/remote/TtsEngineHandler;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    iput-object p2, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    iput-object p3, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$extras:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$ttsListener:Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 10

    .line 2
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->t()V

    .line 3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->e()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playText "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TtsEngineHandler"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/TtsParams;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    .line 5
    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/TtsParams;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/TtsParams;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    const-string v5, "zh"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/TtsParams;->b()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v1, "en"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    const-string v1, "female"

    goto :goto_2

    .line 8
    :cond_4
    :goto_1
    sget-object v4, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "broadcast_timbre"

    const-string v6, "female"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTextWithExtra timbre : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$extras:Landroid/os/Bundle;

    .line 11
    invoke-static {}, Lcom/coloros/translate/utils/l;->a()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v4, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "tts_speed"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    const-string v3, "speedGrade"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v2, "tts_voice"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->this$0:Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->b(Lcom/coloros/translate/repository/remote/TtsEngineHandler;)Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$ttsParams:Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v3, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$extras:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler$b;->$ttsListener:Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/coloros/translate/engine/ITtsEngine;->playTextWithExtra(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V

    :cond_5
    return-void
.end method
