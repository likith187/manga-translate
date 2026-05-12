.class public final Lcom/coloros/translate/ui/dialoguetranslation/c1$e;
.super Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/c1;->b0(Lcom/coloros/translate/repository/local/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

.field final synthetic b:Lcom/coloros/translate/repository/local/Conversation;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->b(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method

.method private static final b(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->b0(Lcom/coloros/translate/repository/local/Conversation;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->j0(Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/base/q;->h(Z)Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "FaceToFaceTranslationViewModel"

    const-string v2, "tts onStart"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->h0(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Ln8/q;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {p0, v2}, Lcom/coloros/translate/base/q;->h(Z)Z

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->k0(I)V

    sget-object p0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "no net work"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget p0, Lcom/coloros/translate/R$string;->network_error:I

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, v2, p1, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "tts onStop"

    const-string v2, "FaceToFaceTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->O()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln8/q;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/base/q;->h(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Ln8/q;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->T()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/d1;

    invoke-direct {v1, p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/d1;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V

    const-wide/16 v2, 0x32

    invoke-static {v2, v3, v1}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    const-string p0, "tts not start"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTtsResult([B)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "FaceToFaceTranslationViewModel"

    const-string v0, "tts onTtsResult"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
