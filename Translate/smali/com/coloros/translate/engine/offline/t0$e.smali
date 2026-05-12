.class final Lcom/coloros/translate/engine/offline/t0$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/offline/t0;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/translate/engine/info/OnLineTranslateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/engine/IOfflineTranslateListener;",
            "Ljava/util/List<",
            "Lcom/coloros/translate/engine/info/OnLineTranslateResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/t0$e;->$resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    iput-object p2, p0, Lcom/coloros/translate/engine/offline/t0$e;->$callback:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/t0$e;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/t0$e;->$resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/t0$e;->$callback:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/coloros/translate/engine/info/OnLineTranslateResult;

    .line 6
    invoke-virtual {v2}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->s()Lcom/coloros/translate/engine/info/TranslateResult;

    move-result-object v2

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, v1}, Lcom/coloros/translate/engine/IOfflineTranslateListener;->onOfflineResult(Ljava/util/List;)V

    return-void
.end method
