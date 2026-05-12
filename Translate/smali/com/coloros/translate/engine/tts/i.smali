.class public final synthetic Lcom/coloros/translate/engine/tts/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/tts/k;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/coloros/translate/engine/info/TtsParams;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic h:Lcom/coloros/translate/engine/ITtsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/tts/k;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/i;->a:Lcom/coloros/translate/engine/tts/k;

    iput-object p2, p0, Lcom/coloros/translate/engine/tts/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/engine/tts/i;->c:Lcom/coloros/translate/engine/info/TtsParams;

    iput-object p4, p0, Lcom/coloros/translate/engine/tts/i;->f:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/coloros/translate/engine/tts/i;->h:Lcom/coloros/translate/engine/ITtsListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/i;->a:Lcom/coloros/translate/engine/tts/k;

    iget-object v1, p0, Lcom/coloros/translate/engine/tts/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/i;->c:Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v3, p0, Lcom/coloros/translate/engine/tts/i;->f:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/coloros/translate/engine/tts/i;->h:Lcom/coloros/translate/engine/ITtsListener;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/coloros/translate/engine/tts/k;->d(Lcom/coloros/translate/engine/tts/k;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V

    return-void
.end method
