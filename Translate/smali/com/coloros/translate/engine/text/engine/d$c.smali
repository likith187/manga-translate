.class final Lcom/coloros/translate/engine/text/engine/d$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/text/engine/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $from:Ljava/lang/String;

.field final synthetic $inputText:Ljava/lang/String;

.field final synthetic $listener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

.field final synthetic $requestId:Ljava/lang/String;

.field final synthetic $to:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/engine/text/engine/d;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/coloros/translate/engine/text/engine/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/engine/d$c;->this$0:Lcom/coloros/translate/engine/text/engine/d;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$from:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$to:Ljava/lang/String;

    iput-object p5, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$inputText:Ljava/lang/String;

    iput-object p6, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$listener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/text/engine/d$c;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 9

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$requestId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateOffline time start requestId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamTextTranslateEngine"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4
    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/d$c;->this$0:Lcom/coloros/translate/engine/text/engine/d;

    invoke-static {v1}, Lcom/coloros/translate/engine/text/engine/d;->c(Lcom/coloros/translate/engine/text/engine/d;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    move-result-object v1

    iget-object v5, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$from:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$to:Ljava/lang/String;

    iget-object v7, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$inputText:Ljava/lang/String;

    iget-object v8, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$listener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    invoke-interface {v1, v5, v6, v7, v8}, Lcom/coloros/translate/engine/IOfflineTranslateEngine;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 6
    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d$c;->$requestId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateOffline time end requestId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " time:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
