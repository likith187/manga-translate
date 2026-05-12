.class public final Lcom/coloros/translate/screen/translate/engine/panel/e$d;
.super Lcom/coloros/translate/screen/translate/engine/tts/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/panel/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/translate/engine/panel/e;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$d;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$d;->d(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$d;->c(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    return-void
.end method

.method private static final c(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onClickToLanguageSpeaker:onStatus"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->p(Lcom/coloros/translate/screen/translate/engine/panel/e;Z)V

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->l(Lcom/coloros/translate/screen/translate/engine/panel/e;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->B0(Z)V

    return-void
.end method

.method private static final d(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationPanel"

    const-string v2, "onClickToLanguageSpeaker:onStopPlay"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->p(Lcom/coloros/translate/screen/translate/engine/panel/e;Z)V

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->l(Lcom/coloros/translate/screen/translate/engine/panel/e;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->B0(Z)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d$b;->onStart()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ScreenTranslationPanel"

    const-string v1, "onClickToLanguageSpeaker:onStart"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/coloros/translate/screen/translate/engine/tts/d$b;->onStatus(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$d;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-static {v0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->i(Lcom/coloros/translate/screen/translate/engine/panel/e;)Lcom/coloros/translate/screen/translate/engine/tts/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/screen/translate/engine/tts/d;->h(ILjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$d;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/panel/k;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/translate/engine/panel/k;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/coloros/translate/screen/translate/engine/tts/d$b;->onStop()V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$d;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/panel/j;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/translate/engine/panel/j;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method
