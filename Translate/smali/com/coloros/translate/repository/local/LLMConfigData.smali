.class public final Lcom/coloros/translate/repository/local/LLMConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;
    }
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private llmSupportLanguage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/local/LLMConfigData;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final getLlmSupportLanguage()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/translate/repository/local/LLMConfigData;->llmSupportLanguage:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/local/LLMConfigData;->language:Ljava/lang/String;

    return-void
.end method

.method public final setLlmSupportLanguage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/translate/repository/local/LLMConfigData$LlmSupportLanguage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/repository/local/LLMConfigData;->llmSupportLanguage:Ljava/util/ArrayList;

    return-void
.end method
