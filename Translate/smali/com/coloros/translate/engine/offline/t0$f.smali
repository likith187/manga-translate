.class final Lcom/coloros/translate/engine/offline/t0$f;
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
.field final synthetic $e:Ljava/lang/Exception;

.field final synthetic $resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/t0$f;->$resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    iput-object p2, p0, Lcom/coloros/translate/engine/offline/t0$f;->$e:Ljava/lang/Exception;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/t0$f;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/t0$f;->$resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/t0$f;->$e:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x69

    invoke-interface {v0, p0, v1}, Lcom/coloros/translate/engine/IOfflineTranslateListener;->onOfflineError(Ljava/lang/String;I)V

    return-void
.end method
