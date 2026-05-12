.class final Lcom/coloros/translate/screen/translate/engine/tts/d$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/tts/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/screen/translate/engine/tts/d;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/tts/d;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/tts/d$c;->this$0:Lcom/coloros/translate/screen/translate/engine/tts/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/media/AudioManager;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/tts/d$c;->this$0:Lcom/coloros/translate/screen/translate/engine/tts/d;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->d(Lcom/coloros/translate/screen/translate/engine/tts/d;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d$c;->invoke()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method
