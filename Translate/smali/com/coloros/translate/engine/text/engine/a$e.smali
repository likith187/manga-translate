.class final Lcom/coloros/translate/engine/text/engine/a$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/text/engine/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $currentRequestId:Ljava/lang/String;

.field final synthetic $from:Ljava/lang/String;

.field final synthetic $request:Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

.field final synthetic $to:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/a$e;->$from:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/engine/a$e;->$to:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/engine/a$e;->$currentRequestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/engine/text/engine/a$e;->$request:Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/text/engine/a$e;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    .line 3
    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/a$e;->$from:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/text/engine/a$e;->$to:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/engine/text/engine/a$e;->$currentRequestId:Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/a$e;->$request:Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/StreamTextTranslateRequest;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doTranslate, from = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    const-string v1, "AiUnitOnlineStreamTextTranslateClient"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
