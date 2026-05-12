.class public abstract Lcom/ai/slp/library/impl/component/c;
.super Lcom/ai/slp/library/impl/component/b;
.source "SourceFile"

# interfaces
.implements Lb1/b;


# instance fields
.field private final k:Lb1/b;


# direct methods
.method protected constructor <init>(Lz0/b;)V
    .locals 1

    .line 2
    new-instance v0, Lb1/a;

    invoke-direct {v0}, Lb1/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/ai/slp/library/impl/component/c;-><init>(Lz0/b;Lb1/b;)V

    return-void
.end method

.method private constructor <init>(Lz0/b;Lb1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/b;-><init>(Lz0/b;)V

    iput-object p2, p0, Lcom/ai/slp/library/impl/component/c;->k:Lb1/b;

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/c;->J()V

    return-void
.end method

.method protected F()Ly0/a;
    .locals 0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/c;->K()Ly0/a;

    move-result-object p0

    return-object p0
.end method

.method protected G()Ly0/a;
    .locals 0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/c;->L()Ly0/a;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/ai/slp/library/impl/component/c;Lz0/b;)Lcom/ai/slp/library/impl/component/c;
    .locals 0

    const-string p0, "$this$attachCtx"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ctx"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/ai/slp/library/impl/component/b;->h:Lz0/b;

    return-object p1
.end method

.method protected abstract J()V
.end method

.method protected abstract K()Ly0/a;
.end method

.method protected abstract L()Ly0/a;
.end method

.method public a(Lb1/b;)Lb1/b;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/c;->k:Lb1/b;

    invoke-interface {p0, p1}, Lb1/b;->a(Lb1/b;)Lb1/b;

    move-result-object p0

    const-string p1, "config.setConfigtor(configtor)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Lb1/d;)Lb1/e;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/c;->k:Lb1/b;

    invoke-interface {p0, p1}, Lb1/b;->b(Lb1/d;)Lb1/e;

    move-result-object p0

    const-string p1, "config.getParams(params)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Lb1/d;Ljava/lang/Object;)Lb1/b;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/c;->k:Lb1/b;

    invoke-interface {p0, p1, p2}, Lb1/b;->d(Lb1/d;Ljava/lang/Object;)Lb1/b;

    move-result-object p0

    const-string p1, "config.setParamsValue(params, value)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Lb1/d;)Ljava/lang/Object;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/c;->k:Lb1/b;

    invoke-interface {p0, p1}, Lb1/b;->e(Lb1/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/c;->k:Lb1/b;

    invoke-interface {p0}, Lb1/b;->h()Ljava/util/Map;

    move-result-object p0

    const-string v0, "config.paramsMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
