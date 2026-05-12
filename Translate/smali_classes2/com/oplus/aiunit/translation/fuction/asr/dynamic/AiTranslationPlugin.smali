.class public final Lcom/oplus/aiunit/translation/fuction/asr/dynamic/AiTranslationPlugin;
.super Lcom/oplus/aisubsystem/core/plugin/AiPlugin;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/oplus/aisubsystem/core/plugin/AiPlugin;-><init>(Landroid/content/Context;Lcom/oplus/plugin/dynamic/api/PluginSettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getPluginName()Ljava/lang/String;
    .locals 0

    const-string p0, "ai_omni"

    return-object p0
.end method
