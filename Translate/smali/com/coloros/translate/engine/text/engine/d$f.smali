.class final Lcom/coloros/translate/engine/text/engine/d$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/text/engine/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $from:Ljava/lang/String;

.field final synthetic $inputTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $listener:Lcom/coloros/translate/engine/ITranslateListener;

.field final synthetic $requestId:Ljava/lang/String;

.field final synthetic $to:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/engine/text/engine/d;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/coloros/translate/engine/text/engine/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coloros/translate/engine/text/engine/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/coloros/translate/engine/ITranslateListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/engine/d$f;->this$0:Lcom/coloros/translate/engine/text/engine/d;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$from:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$to:Ljava/lang/String;

    iput-object p5, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$inputTexts:Ljava/util/List;

    iput-object p6, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$listener:Lcom/coloros/translate/engine/ITranslateListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/text/engine/d$f;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 11

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$requestId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateOnlineList time start requestId:"

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
    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/d$f;->this$0:Lcom/coloros/translate/engine/text/engine/d;

    invoke-static {v1}, Lcom/coloros/translate/engine/text/engine/d;->b(Lcom/coloros/translate/engine/text/engine/d;)Lcom/coloros/translate/engine/text/engine/a;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$from:Ljava/lang/String;

    iget-object v7, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$to:Ljava/lang/String;

    iget-object v8, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$requestId:Ljava/lang/String;

    iget-object v9, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$inputTexts:Ljava/util/List;

    iget-object v10, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$listener:Lcom/coloros/translate/engine/ITranslateListener;

    .line 6
    invoke-virtual/range {v5 .. v10}, Lcom/coloros/translate/engine/text/engine/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 8
    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d$f;->$requestId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateOnlineList time end requestId:"

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
