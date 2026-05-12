.class final Lcom/coloros/translate/engine/offline/t0$i;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/offline/t0;->translateList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/t0$i;->$resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/t0$i;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/t0$i;->$resultListener:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    .line 3
    const-string v0, "translateResults is null"

    const/16 v1, 0x68

    .line 4
    invoke-interface {p0, v0, v1}, Lcom/coloros/translate/engine/IOfflineTranslateListener;->onOfflineError(Ljava/lang/String;I)V

    return-void
.end method
