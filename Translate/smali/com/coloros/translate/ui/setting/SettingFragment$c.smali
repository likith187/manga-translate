.class public final Lcom/coloros/translate/ui/setting/SettingFragment$c;
.super Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/SettingFragment;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/setting/SettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/SettingFragment$c;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SettingFragment"

    const-string v2, "playText tts onStart"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingFragment$c;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/setting/SettingFragment;->B(Lcom/coloros/translate/ui/setting/SettingFragment;Z)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playText tts code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SettingFragment"

    invoke-virtual {v0, v1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p2, p1}, Lcom/coloros/translate/utils/n;->k0(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingFragment$c;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/coloros/translate/ui/setting/SettingFragment;->B(Lcom/coloros/translate/ui/setting/SettingFragment;Z)V

    const/16 p0, -0x3e8

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, p0, :cond_2

    const/16 p0, -0x25a

    if-eq p1, p0, :cond_1

    const/16 p0, 0x259

    if-eq p1, p0, :cond_0

    sget p0, Lcom/coloros/translate/R$string;->network_error:I

    invoke-static {p0, p2, v1, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/coloros/translate/R$string;->network_error:I

    invoke-static {p0, p2, v1, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/coloros/translate/R$string;->network_error:I

    invoke-static {p0, p2, v1, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget p0, Lcom/coloros/translate/R$string;->no_network:I

    invoke-static {p0, p2, v1, v0}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "playText tts onStop"

    const-string v2, "SettingFragment"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/setting/SettingFragment$c;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    invoke-static {v1}, Lcom/coloros/translate/ui/setting/SettingFragment;->z(Lcom/coloros/translate/ui/setting/SettingFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "playText tts not start"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/setting/SettingFragment$c;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/setting/SettingFragment;->B(Lcom/coloros/translate/ui/setting/SettingFragment;Z)V

    return-void
.end method

.method public onTtsResult([B)V
    .locals 0

    return-void
.end method
