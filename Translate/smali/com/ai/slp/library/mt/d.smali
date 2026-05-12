.class public final Lcom/ai/slp/library/mt/d;
.super Ld1/a;
.source "SourceFile"


# instance fields
.field private final o:Ln8/j;

.field private final p:Ljava/util/HashMap;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lz0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Ld1/a;-><init>(Lz0/b;)V

    sget-object p1, Lcom/ai/slp/library/mt/d$a;->INSTANCE:Lcom/ai/slp/library/mt/d$a;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/ai/slp/library/mt/d;->o:Ln8/j;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ai/slp/library/mt/d;->p:Ljava/util/HashMap;

    const-string p1, ""

    iput-object p1, p0, Lcom/ai/slp/library/mt/d;->q:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic T(Lcom/ai/slp/library/mt/d;)Lcom/oppo/yyyy/mt/LibMt;
    .locals 0

    invoke-direct {p0}, Lcom/ai/slp/library/mt/d;->U()Lcom/oppo/yyyy/mt/LibMt;

    move-result-object p0

    return-object p0
.end method

.method private final U()Lcom/oppo/yyyy/mt/LibMt;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/d;->o:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/yyyy/mt/LibMt;

    return-object p0
.end method

.method private final V(Lw8/l;Lw8/a;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private final X()Z
    .locals 7

    iget-object v0, p0, Lcom/ai/slp/library/mt/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "cacheMaps.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v2, v2, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " unload -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ai/slp/library/mt/d;->U()Lcom/oppo/yyyy/mt/LibMt;

    move-result-object v4

    iget-object v5, p0, Lcom/ai/slp/library/mt/d;->p:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v5, "cacheMaps.remove(it) ?: return@forEach"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/oppo/yyyy/mt/LibMt;->destory(J)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/ai/slp/library/mt/d;->p:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method protected J()V
    .locals 0

    return-void
.end method

.method protected K()Ly0/a;
    .locals 3

    sget-object v0, Lcom/ai/slp/library/mt/b;->a:Lb1/d;

    const-string v1, "IOfflineTranslateComponentParams.MT_MODEL_PATH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ai/slp/library/impl/component/c;->e(Lb1/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/slp/library/common/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "model"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "modelPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ai/slp/library/mt/d;->q:Ljava/lang/String;

    invoke-super {p0}, Lcom/ai/slp/library/impl/component/i;->K()Ly0/a;

    move-result-object p0

    const-string v0, "super.startComponent()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/ai/slp/library/base/exception/f;

    sget-object v0, Le1/a;->j:Lcom/ai/slp/library/base/exception/d;

    const-string v1, "Model Path Not Found \uff01"

    invoke-direct {p0, v0, v1}, Lcom/ai/slp/library/base/exception/f;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;)V

    throw p0
.end method

.method protected L()Ly0/a;
    .locals 1

    invoke-direct {p0}, Lcom/ai/slp/library/mt/d;->X()Z

    invoke-super {p0}, Lcom/ai/slp/library/impl/component/i;->L()Ly0/a;

    move-result-object p0

    const-string v0, "super.stopComponent()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected R()Ljava/lang/String;
    .locals 0

    const-string p0, "OfflineTranslate"

    return-object p0
.end method

.method public final W(Lcom/ai/slp/library/mt/f;)Lcom/ai/slp/library/mt/g;
    .locals 10

    const-string v0, "inData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ai/slp/library/mt/d;->U()Lcom/oppo/yyyy/mt/LibMt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/yyyy/mt/LibMt;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ai/slp/library/mt/d;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/model/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ai/slp/library/mt/f;->a()Lcom/ai/slp/library/mt/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/ai/slp/library/mt/a;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ai/slp/library/mt/f;->c()Lcom/ai/slp/library/mt/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/ai/slp/library/mt/a;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/model.conf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lkotlin/jvm/internal/c0;

    invoke-direct {v1}, Lkotlin/jvm/internal/c0;-><init>()V

    iget-object v2, p0, Lcom/ai/slp/library/mt/d;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iput-object v2, v1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Ld1/a;->S()Lcom/slp/library/track/TrackWrap;

    move-result-object v2

    invoke-direct {p0}, Lcom/ai/slp/library/mt/d;->X()Z

    iget-object v3, p0, Lcom/ai/slp/library/mt/d;->p:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "cacheMaps.keys"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v5, v5, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " unload -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ai/slp/library/mt/d;->U()Lcom/oppo/yyyy/mt/LibMt;

    move-result-object v7

    iget-object v8, p0, Lcom/ai/slp/library/mt/d;->p:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    const-string v8, "cacheMaps[it] ?: return@forEach"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/oppo/yyyy/mt/LibMt;->destory(J)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_2

    new-instance v3, Lcom/ai/slp/library/mt/d$b;

    invoke-direct {v3, v2}, Lcom/ai/slp/library/mt/d$b;-><init>(Lcom/slp/library/track/TrackWrap;)V

    new-instance v4, Lcom/ai/slp/library/mt/d$c;

    invoke-direct {v4, p0, v0}, Lcom/ai/slp/library/mt/d$c;-><init>(Lcom/ai/slp/library/mt/d;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/ai/slp/library/mt/d;->V(Lw8/l;Lw8/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iput-object v3, v1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lcom/ai/slp/library/mt/d;->p:Ljava/util/HashMap;

    const-string v4, "tempPath"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ai/slp/library/mt/d$d;

    invoke-direct {v0, v2}, Lcom/ai/slp/library/mt/d$d;-><init>(Lcom/slp/library/track/TrackWrap;)V

    new-instance v3, Lcom/ai/slp/library/mt/d$e;

    invoke-direct {v3, p0, v1, p1}, Lcom/ai/slp/library/mt/d$e;-><init>(Lcom/ai/slp/library/mt/d;Lkotlin/jvm/internal/c0;Lcom/ai/slp/library/mt/f;)V

    invoke-direct {p0, v0, v3}, Lcom/ai/slp/library/mt/d;->V(Lw8/l;Lw8/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Lcom/ai/slp/library/mt/g;

    invoke-direct {v0, p1, p0}, Lcom/ai/slp/library/mt/g;-><init>(Lcom/ai/slp/library/mt/f;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ai/slp/library/mt/f;->a()Lcom/ai/slp/library/mt/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/ai/slp/library/mt/a;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "from"

    invoke-static {v1, p0}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ai/slp/library/mt/f;->c()Lcom/ai/slp/library/mt/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/ai/slp/library/mt/a;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "to"

    invoke-static {v3, v1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ai/slp/library/mt/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "queryLength"

    invoke-static {v3, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ai/slp/library/mt/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "resultLength"

    invoke-static {v4, v3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v3

    filled-new-array {p0, v1, p1, v3}, [Ln8/q;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/j0;->k([Ln8/q;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {v2, p1, p0}, Lcom/slp/library/track/TrackWrap;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/slp/library/track/TrackWrap;

    invoke-virtual {v2}, Lcom/slp/library/track/TrackWrap;->commit()Lcom/slp/library/track/TrackWrap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/slp/library/track/TrackWrap;->clean()Lcom/slp/library/track/TrackWrap;

    return-object v0

    :cond_3
    new-instance p0, Lcom/ai/slp/library/base/exception/f;

    sget-object p1, Lcom/ai/slp/library/base/exception/a;->b:Lcom/ai/slp/library/base/exception/d;

    const-string v0, "Model File Not Found !"

    invoke-direct {p0, p1, v0}, Lcom/ai/slp/library/base/exception/f;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/ai/slp/library/base/exception/f;

    sget-object p1, Lcom/ai/slp/library/base/exception/a;->b:Lcom/ai/slp/library/base/exception/d;

    const-string v0, "MT Init Error"

    invoke-direct {p0, p1, v0}, Lcom/ai/slp/library/base/exception/f;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;)V

    throw p0
.end method
