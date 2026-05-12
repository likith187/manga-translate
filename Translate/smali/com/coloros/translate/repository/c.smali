.class public abstract Lcom/coloros/translate/repository/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILjava/lang/String;Lw8/a;Lw8/a;Lw8/a;)V
    .locals 6

    const-string v0, "silenceCallBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noNet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopCallBack"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/repository/b;->ASR_NET_CONNECT:Lcom/coloros/translate/repository/b;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/coloros/translate/repository/b;->ASR_ERROR_DECRYPT_ACK:Lcom/coloros/translate/repository/b;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/coloros/translate/repository/b;->ASR_ERROR_PROCESS_DOWN:Lcom/coloros/translate/repository/b;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sget-object v3, Lcom/coloros/translate/repository/b;->ASR_PARAM_INVALID:Lcom/coloros/translate/repository/b;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v3

    if-eq p0, v3, :cond_3

    sget-object v3, Lcom/coloros/translate/repository/b;->ASR_ERROR_END_ASR:Lcom/coloros/translate/repository/b;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v3

    if-eq p0, v3, :cond_3

    sget-object v3, Lcom/coloros/translate/repository/b;->ASR_TASK_NET_ERROR:Lcom/coloros/translate/repository/b;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v3

    if-ne p0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    const-string v3, " msg:"

    const-string v4, "ERROR_CODE"

    if-nez v0, :cond_9

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealWithErrorTip code:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/repository/b;->SILENCE_TIMEOUT:Lcom/coloros/translate/repository/b;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result p1

    if-ne p0, p1, :cond_5

    invoke-interface {p2}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_5
    const/16 p1, -0x3e8

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-ne p0, p1, :cond_6

    sget p0, Lcom/coloros/translate/R$string;->no_network:I

    invoke-static {p0, v2, v0, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    invoke-interface {p3}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_6
    sget-object p1, Lcom/coloros/translate/repository/b;->ASR_NOT_SUPPORT:Lcom/coloros/translate/repository/b;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result p1

    if-ne p0, p1, :cond_7

    sget p0, Lcom/coloros/translate/R$string;->translate_error:I

    invoke-static {p0, v2, v0, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    invoke-interface {p4}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_7
    sget-object p1, Lcom/coloros/translate/repository/b;->ASR_INIT_ERROR:Lcom/coloros/translate/repository/b;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result p1

    if-ne p1, p0, :cond_8

    sget p0, Lcom/coloros/translate/R$string;->translate_error:I

    invoke-static {p0, v2, v0, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    invoke-interface {p4}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_8
    sget p0, Lcom/coloros/translate/R$string;->network_fail:I

    invoke-static {p0, v2, v0, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    invoke-interface {p4}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void

    :cond_9
    :goto_3
    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dealWithErrorTip reject code:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v4, p0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(ILjava/lang/String;Lw8/a;Lw8/a;Lw8/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    sget-object p2, Lcom/coloros/translate/repository/c$a;->INSTANCE:Lcom/coloros/translate/repository/c$a;

    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    sget-object p3, Lcom/coloros/translate/repository/c$b;->INSTANCE:Lcom/coloros/translate/repository/c$b;

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    sget-object p4, Lcom/coloros/translate/repository/c$c;->INSTANCE:Lcom/coloros/translate/repository/c$c;

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/repository/c;->a(ILjava/lang/String;Lw8/a;Lw8/a;Lw8/a;)V

    return-void
.end method

.method public static final c(ILjava/lang/String;)V
    .locals 3

    const/16 p1, -0x3e8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    sget p0, Lcom/coloros/translate/R$string;->no_network:I

    invoke-static {p0, v2, v1, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/coloros/translate/R$string;->network_error:I

    invoke-static {p0, v2, v1, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final d(I)Z
    .locals 4

    sget-object v0, Lcom/coloros/translate/repository/b;->ASR_NET_CONNECT:Lcom/coloros/translate/repository/b;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/coloros/translate/repository/b;->ASR_ERROR_DECRYPT_ACK:Lcom/coloros/translate/repository/b;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/coloros/translate/repository/b;->ASR_ERROR_PROCESS_DOWN:Lcom/coloros/translate/repository/b;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sget-object v3, Lcom/coloros/translate/repository/b;->ASR_PARAM_INVALID:Lcom/coloros/translate/repository/b;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v3

    if-eq p0, v3, :cond_3

    sget-object v3, Lcom/coloros/translate/repository/b;->ASR_ERROR_END_ASR:Lcom/coloros/translate/repository/b;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v3

    if-eq p0, v3, :cond_3

    sget-object v3, Lcom/coloros/translate/repository/b;->ASR_TASK_NET_ERROR:Lcom/coloros/translate/repository/b;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v3

    if-ne p0, v3, :cond_2

    goto :goto_2

    :cond_2
    move p0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v1

    :goto_3
    if-nez v0, :cond_4

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1
.end method
