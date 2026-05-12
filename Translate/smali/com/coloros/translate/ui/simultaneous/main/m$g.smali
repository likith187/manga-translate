.class public final Lcom/coloros/translate/ui/simultaneous/main/m$g;
.super Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/m;->q0(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/m;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->B(Lcom/coloros/translate/ui/simultaneous/main/m;Z)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousMainViewModel"

    const-string v1, "tts onStart"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SimultaneousMainViewModel"

    invoke-virtual {p0, v0, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->k0(I)V

    return-void
.end method

.method public onStop()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "tts onStop"

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/coloros/translate/ui/simultaneous/main/m;->B(Lcom/coloros/translate/ui/simultaneous/main/m;Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->u(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const-string v1, "tts onStop empty"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {v1, v4}, Lcom/coloros/translate/ui/simultaneous/main/m;->B(Lcom/coloros/translate/ui/simultaneous/main/m;Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->c0()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tts onStop muteMusic false"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0, v3}, Lcom/coloros/translate/base/q;->h(Z)Z

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$g;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0, v4}, Lcom/coloros/translate/ui/simultaneous/main/m;->q0(Z)Z

    return-void
.end method

.method public onTtsResult([B)V
    .locals 0

    return-void
.end method
