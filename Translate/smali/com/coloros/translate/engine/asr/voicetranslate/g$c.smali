.class public final Lcom/coloros/translate/engine/asr/voicetranslate/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/asr/voicetranslate/g;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/asr/voicetranslate/g;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/asr/voicetranslate/g;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g$c;->a:Lcom/coloros/translate/engine/asr/voicetranslate/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseTranslateRtAsrWrapper"

    const-string v1, "slice time out"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g$c;->a:Lcom/coloros/translate/engine/asr/voicetranslate/g;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->m()Lx1/n;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/k;->SILENCE_TIMEOUT:Lcom/coloros/translate/utils/k;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lx1/n;->m(IILjava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
