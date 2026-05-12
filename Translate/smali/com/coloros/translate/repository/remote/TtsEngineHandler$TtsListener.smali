.class public abstract Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;
.super Lcom/coloros/translate/engine/ITtsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/repository/remote/TtsEngineHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TtsListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/ITtsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTtsEndWord()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TtsEngineHandler"

    const-string v1, "onTtsEndWord"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
