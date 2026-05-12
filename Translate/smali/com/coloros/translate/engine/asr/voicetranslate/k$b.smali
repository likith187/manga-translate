.class final Lcom/coloros/translate/engine/asr/voicetranslate/k$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/asr/voicetranslate/k;->saveAudioFile(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $params:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/coloros/translate/engine/asr/voicetranslate/k;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/asr/voicetranslate/k;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k$b;->this$0:Lcom/coloros/translate/engine/asr/voicetranslate/k;

    iput-object p2, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k$b;->$params:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k$b;->this$0:Lcom/coloros/translate/engine/asr/voicetranslate/k;

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/k$b;->$params:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/k;->s(Lcom/coloros/translate/engine/asr/voicetranslate/k;Landroid/os/Bundle;)V

    return-void
.end method
