.class final Lcom/coloros/translate/engine/asr/voicetranslate/c$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/asr/voicetranslate/c;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/engine/asr/voicetranslate/c;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/asr/voicetranslate/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$b;->this$0:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/engine/asr/voicetranslate/c;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c$b;->invoke$lambda$0(Lcom/coloros/translate/engine/asr/voicetranslate/c;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/engine/asr/voicetranslate/c;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/k;->AIUNIT_DISCONNECT:Lcom/coloros/translate/utils/k;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/utils/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {p0, v1, v0, p1}, Lcom/coloros/translate/engine/asr/voicetranslate/c;->r(Lcom/coloros/translate/engine/asr/voicetranslate/c;IILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/b0;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/c$b;->this$0:Lcom/coloros/translate/engine/asr/voicetranslate/c;

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/d;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/c;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/c$b;->invoke()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method
