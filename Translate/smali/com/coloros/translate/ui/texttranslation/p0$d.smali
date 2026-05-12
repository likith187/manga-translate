.class public final Lcom/coloros/translate/ui/texttranslation/p0$d;
.super Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/p0;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Lcom/coloros/translate/utils/n$a;

.field final synthetic b:Lcom/coloros/translate/ui/texttranslation/p0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/p0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;-><init>()V

    new-instance p1, Lcom/coloros/translate/utils/n$a;

    invoke-direct {p1}, Lcom/coloros/translate/utils/n$a;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->a:Lcom/coloros/translate/utils/n$a;

    return-void
.end method


# virtual methods
.method public onRtasrResult(Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->M()Z

    move-result v0

    const-string v1, "TextTranslationViewModel"

    if-eqz v0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "onRtasrResult alreadyMaxLength and return"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->x(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "onRtasrResult"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->R()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/p0;->q(Lcom/coloros/translate/ui/texttranslation/p0;Lcom/coloros/translate/engine/info/AsrResult;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->a:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n$a;->d(J)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "onStart"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->Q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->R()Landroidx/lifecycle/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->u(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->x(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->u(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Lcom/coloros/translate/utils/v0;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 10

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/coloros/translate/utils/n;->e0(ILjava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatus code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/coloros/translate/ui/texttranslation/p0$d$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-direct {v5, v0}, Lcom/coloros/translate/ui/texttranslation/p0$d$a;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;)V

    new-instance v7, Lcom/coloros/translate/ui/texttranslation/p0$d$b;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-direct {v7, p0}, Lcom/coloros/translate/ui/texttranslation/p0$d$b;-><init>(Lcom/coloros/translate/ui/texttranslation/p0;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Lcom/coloros/translate/repository/c;->b(ILjava/lang/String;Lw8/a;Lw8/a;Lw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->a:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n$a;->c(J)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "onStop"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->u(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->x(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->R()Landroidx/lifecycle/a0;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->b:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->w0(Z)V

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v1, "1"

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d;->a:Lcom/coloros/translate/utils/n$a;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/n;->P(Ljava/lang/String;Lcom/coloros/translate/utils/n$a;)V

    return-void
.end method

.method public onTranslateResult(Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslationViewModel"

    const-string v0, "onTranslateResult"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVoiceVolume(D)V
    .locals 0

    return-void
.end method
