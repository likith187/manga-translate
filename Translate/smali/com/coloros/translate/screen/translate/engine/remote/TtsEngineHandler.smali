.class public final Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;
    }
.end annotation


# instance fields
.field private a:Lcom/coloros/translate/engine/ITtsEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;)Lcom/coloros/translate/engine/ITtsEngine;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$a;-><init>(Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;Ljava/lang/String;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/s;->b(Lw8/a;)V

    return-void
.end method

.method public d(Lcom/coloros/translate/engine/ITtsEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->a:Lcom/coloros/translate/engine/ITtsEngine;

    return-void
.end method

.method public e()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$b;-><init>(Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/s;->b(Lw8/a;)V

    return-void
.end method
