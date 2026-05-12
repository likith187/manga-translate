.class public abstract Lcom/ai/slp/library/impl/component/f;
.super Lcom/ai/slp/library/impl/component/e;
.source "SourceFile"

# interfaces
.implements Lz0/a;


# instance fields
.field private l:La1/a;


# direct methods
.method public constructor <init>(Lz0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/e;-><init>(Lz0/b;)V

    return-void
.end method

.method public static final synthetic M(Lcom/ai/slp/library/impl/component/f;)V
    .locals 0

    invoke-super {p0}, Lcom/ai/slp/library/impl/component/c;->B()V

    return-void
.end method

.method public static final synthetic N(Lcom/ai/slp/library/impl/component/f;)Ly0/a;
    .locals 0

    invoke-super {p0}, Lcom/ai/slp/library/impl/component/c;->F()Ly0/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic O(Lcom/ai/slp/library/impl/component/f;)Ly0/a;
    .locals 0

    invoke-super {p0}, Lcom/ai/slp/library/impl/component/c;->G()Ly0/a;

    move-result-object p0

    return-object p0
.end method

.method private final P(Ly0/a;Lw8/a;Lw8/l;)Ly0/a;
    .locals 5

    invoke-direct {p0, p1, p3}, Lcom/ai/slp/library/impl/component/f;->Q(Ly0/a;Lw8/l;)Ly0/a;

    move-result-object p3

    const-string v0, "] Error ["

    const/16 v1, 0x5d

    if-eqz p3, :cond_0

    if-eq p3, p1, :cond_0

    iget-object p2, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object p2, p2, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Call NextLink["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ai/slp/library/impl/component/f;->l:La1/a;

    invoke-virtual {p0, v3}, Lcom/ai/slp/library/impl/component/b;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] => ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object p0

    const-string p1, "status"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p2}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly0/a;

    iget-object v2, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v2, v2, Lcom/slp/library/common/log/LogsWrap;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " T["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] cCall["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] nextCall["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ai/slp/library/impl/component/f;->l:La1/a;

    invoke-virtual {p0, v4}, Lcom/ai/slp/library/impl/component/b;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "] ERR["

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->x()Z

    move-result p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    iget-object p3, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object p3, p3, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Call ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Ly0/a;->STATE_STOP:Ly0/a;

    :goto_0
    return-object p1
.end method

.method private final Q(Ly0/a;Lw8/l;)Ly0/a;
    .locals 1

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/f;->l:La1/a;

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object p2, p2, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " next obj is null!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p2, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly0/a;

    return-object p0
.end method


# virtual methods
.method protected final B()V
    .locals 3

    new-instance v0, Lcom/ai/slp/library/impl/component/f$a;

    invoke-direct {v0, p0}, Lcom/ai/slp/library/impl/component/f$a;-><init>(Lcom/ai/slp/library/impl/component/f;)V

    sget-object v1, Lcom/ai/slp/library/impl/component/f$b;->INSTANCE:Lcom/ai/slp/library/impl/component/f$b;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/ai/slp/library/impl/component/f;->P(Ly0/a;Lw8/a;Lw8/l;)Ly0/a;

    return-void
.end method

.method protected final F()Ly0/a;
    .locals 3

    sget-object v0, Ly0/a;->STATE_START:Ly0/a;

    new-instance v1, Lcom/ai/slp/library/impl/component/f$c;

    invoke-direct {v1, p0}, Lcom/ai/slp/library/impl/component/f$c;-><init>(Lcom/ai/slp/library/impl/component/f;)V

    sget-object v2, Lcom/ai/slp/library/impl/component/f$d;->INSTANCE:Lcom/ai/slp/library/impl/component/f$d;

    invoke-direct {p0, v0, v1, v2}, Lcom/ai/slp/library/impl/component/f;->P(Ly0/a;Lw8/a;Lw8/l;)Ly0/a;

    move-result-object p0

    return-object p0
.end method

.method protected final G()Ly0/a;
    .locals 3

    sget-object v0, Ly0/a;->STATE_STOP:Ly0/a;

    new-instance v1, Lcom/ai/slp/library/impl/component/f$e;

    invoke-direct {v1, p0}, Lcom/ai/slp/library/impl/component/f$e;-><init>(Lcom/ai/slp/library/impl/component/f;)V

    sget-object v2, Lcom/ai/slp/library/impl/component/f$f;->INSTANCE:Lcom/ai/slp/library/impl/component/f$f;

    invoke-direct {p0, v0, v1, v2}, Lcom/ai/slp/library/impl/component/f;->P(Ly0/a;Lw8/a;Lw8/l;)Ly0/a;

    move-result-object p0

    return-object p0
.end method
