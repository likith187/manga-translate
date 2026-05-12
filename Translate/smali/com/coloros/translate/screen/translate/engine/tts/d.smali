.class public final Lcom/coloros/translate/screen/translate/engine/tts/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/engine/tts/d$a;,
        Lcom/coloros/translate/screen/translate/engine/tts/d$b;
    }
.end annotation


# static fields
.field public static final g:Lcom/coloros/translate/screen/translate/engine/tts/d$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;

.field private final e:Ln8/j;

.field private final f:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/tts/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/tts/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/tts/d;->g:Lcom/coloros/translate/screen/translate/engine/tts/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->a:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->c:Ljava/lang/String;

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/tts/d$d;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/translate/engine/tts/d$d;-><init>(Lcom/coloros/translate/screen/translate/engine/tts/d;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->e:Ln8/j;

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/tts/d$c;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/translate/engine/tts/d$c;-><init>(Lcom/coloros/translate/screen/translate/engine/tts/d;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->f:Ln8/j;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/screen/translate/engine/tts/d;->i()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/screen/translate/engine/tts/d;->j()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/screen/translate/engine/tts/d;->n()V

    return-void
.end method

.method public static final synthetic d(Lcom/coloros/translate/screen/translate/engine/tts/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method private final e()Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->f:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method private final f()Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->e:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    return-object p0
.end method

.method private static final i()V
    .locals 4

    sget v0, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void
.end method

.method private static final j()V
    .locals 4

    sget v0, Lcom/coloros/translate/screen/R$string;->translate_unified_tts_error:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void
.end method

.method private final m()V
    .locals 12

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/tts/a;

    invoke-direct {v0}, Lcom/coloros/translate/screen/translate/engine/tts/a;-><init>()V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->d:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/translate/engine/ITtsListener;->onStop()V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->l()V

    return-void

    :cond_1
    new-instance v0, Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->c:Ljava/lang/String;

    const/16 v10, 0xfd

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->f()Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->d:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;

    invoke-virtual {v1, v2, v0, p0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->c(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;)V

    return-void
.end method

.method private static final n()V
    .locals 4

    sget v0, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->e()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public final h(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts onStatus code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TtsClient"

    invoke-virtual {v0, v1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p2, p1}, Lcom/coloros/translate/utils/n;->k0(I)V

    const/16 p2, -0x3e8

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/tts/b;

    invoke-direct {p1}, Lcom/coloros/translate/screen/translate/engine/tts/b;-><init>()V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->l()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/coloros/translate/screen/translate/engine/tts/c;

    invoke-direct {p1}, Lcom/coloros/translate/screen/translate/engine/tts/c;-><init>()V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->l()V

    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;)V
    .locals 1

    const-string v0, "ttsText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ttsCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ttsListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->d:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->m()V

    return-void
.end method

.method public final l()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->o()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->f()Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->b()V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/tts/d;->d:Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler$TtsListener;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d;->f()Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/remote/TtsEngineHandler;->e()V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TtsClient"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
