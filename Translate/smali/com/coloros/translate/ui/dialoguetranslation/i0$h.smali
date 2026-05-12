.class public final Lcom/coloros/translate/ui/dialoguetranslation/i0$h;
.super Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/i0;->q0(Lcom/coloros/translate/repository/local/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/repository/local/Conversation;

.field final synthetic b:Lcom/coloros/translate/ui/dialoguetranslation/i0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/local/Conversation;Lcom/coloros/translate/ui/dialoguetranslation/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method

.method private static final b(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->q0(Lcom/coloros/translate/repository/local/Conversation;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K0(Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tts onStart : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/base/q;->h(Z)Z

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F0(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Ln8/q;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->a:Lcom/coloros/translate/repository/local/Conversation;

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

    const-string v2, "tts code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DialogueTranslationViewModel"

    invoke-virtual {v0, v1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p2, p1}, Lcom/coloros/translate/utils/n;->k0(I)V

    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    :cond_0
    const/16 p0, -0x3e8

    const/4 p2, 0x0

    const/4 v1, 0x2

    if-eq p1, p0, :cond_3

    const/16 p0, -0x25a

    if-eq p1, p0, :cond_2

    const/16 p0, 0x259

    if-eq p1, p0, :cond_1

    sget p0, Lcom/coloros/translate/R$string;->network_error:I

    invoke-static {p0, v0, v1, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/coloros/translate/R$string;->network_error:I

    invoke-static {p0, v0, v1, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget p0, Lcom/coloros/translate/R$string;->network_error:I

    invoke-static {p0, v0, v1, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget p0, Lcom/coloros/translate/R$string;->no_network:I

    invoke-static {p0, v0, v1, p2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tts onStop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogueTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

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

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/base/q;->h(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v0

    new-instance v1, Ln8/q;

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->a:Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {v2}, Lcom/coloros/translate/repository/local/Conversation;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->b0()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$h;->b:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    new-instance v1, Lcom/coloros/translate/ui/dialoguetranslation/j0;

    invoke-direct {v1, p0, v0}, Lcom/coloros/translate/ui/dialoguetranslation/j0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i0;Lcom/coloros/translate/repository/local/Conversation;)V

    const-wide/16 v2, 0x32

    invoke-static {v2, v3, v1}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    const-string p0, "tts onStop not start"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTtsResult([B)V
    .locals 0

    return-void
.end method
