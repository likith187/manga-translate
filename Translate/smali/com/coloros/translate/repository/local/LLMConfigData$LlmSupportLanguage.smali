.class public final Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/repository/local/LLMConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LlmSupportLanguage"
.end annotation


# instance fields
.field private sourceLanguage:Ljava/lang/String;

.field private targetLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSourceLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final setSourceLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;->sourceLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setTargetLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;->targetLanguage:Ljava/lang/String;

    return-void
.end method
