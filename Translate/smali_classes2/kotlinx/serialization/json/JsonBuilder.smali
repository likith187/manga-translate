.class public final Lkotlinx/serialization/json/JsonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private allowComments:Z

.field private allowSpecialFloatingPointValues:Z

.field private allowStructuredMapKeys:Z

.field private allowTrailingComma:Z

.field private classDiscriminator:Ljava/lang/String;

.field private classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

.field private coerceInputValues:Z

.field private decodeEnumsCaseInsensitive:Z

.field private encodeDefaults:Z

.field private explicitNulls:Z

.field private ignoreUnknownKeys:Z

.field private isLenient:Z

.field private namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

.field private prettyPrint:Z

.field private prettyPrintIndent:Ljava/lang/String;

.field private serializersModule:Lkotlinx/serialization/modules/SerializersModule;

.field private useAlternativeNames:Z

.field private useArrayPolymorphism:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getEncodeDefaults()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getExplicitNulls()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getIgnoreUnknownKeys()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrint()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrintIndent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getCoerceInputValues()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminatorMode()Lkotlinx/serialization/json/ClassDiscriminatorMode;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseAlternativeNames()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->useAlternativeNames:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getNamingStrategy()Lkotlinx/serialization/json/JsonNamingStrategy;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getDecodeEnumsCaseInsensitive()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->decodeEnumsCaseInsensitive:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowTrailingComma()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowTrailingComma:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowComments()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowComments:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowSpecialFloatingPointValues()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowStructuredMapKeys()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method

.method public static synthetic getAllowComments$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method

.method public static synthetic getAllowTrailingComma$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method

.method public static synthetic getClassDiscriminatorMode$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method

.method public static synthetic getDecodeEnumsCaseInsensitive$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method

.method public static synthetic getNamingStrategy$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method

.method public static synthetic getPrettyPrintIndent$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public final build$kotlinx_serialization_json()Lkotlinx/serialization/json/JsonConfiguration;
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    const-string v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    sget-object v2, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "useArrayPolymorphism option can only be used if classDiscriminatorMode in a default POLYMORPHIC state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    const-string v2, "    "

    if-nez v1, :cond_4

    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indent should not be specified when default printing mode is used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_6

    const/16 v4, 0x9

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_6

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    new-instance v1, Lkotlinx/serialization/json/JsonConfiguration;

    move-object v3, v1

    iget-boolean v4, v0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    iget-boolean v5, v0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    iget-boolean v6, v0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    iget-boolean v7, v0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    iget-boolean v8, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    iget-boolean v9, v0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    iget-object v10, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    iget-boolean v11, v0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    iget-boolean v12, v0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    iget-object v13, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    iget-boolean v14, v0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    iget-boolean v15, v0, Lkotlinx/serialization/json/JsonBuilder;->useAlternativeNames:Z

    iget-object v2, v0, Lkotlinx/serialization/json/JsonBuilder;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    move-object/from16 v16, v2

    iget-boolean v2, v0, Lkotlinx/serialization/json/JsonBuilder;->decodeEnumsCaseInsensitive:Z

    move/from16 v17, v2

    iget-boolean v2, v0, Lkotlinx/serialization/json/JsonBuilder;->allowTrailingComma:Z

    move/from16 v18, v2

    iget-boolean v2, v0, Lkotlinx/serialization/json/JsonBuilder;->allowComments:Z

    move/from16 v19, v2

    iget-object v0, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    move-object/from16 v20, v0

    invoke-direct/range {v3 .. v20}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/JsonNamingStrategy;ZZZLkotlinx/serialization/json/ClassDiscriminatorMode;)V

    return-object v1
.end method

.method public final getAllowComments()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowComments:Z

    return p0
.end method

.method public final getAllowSpecialFloatingPointValues()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    return p0
.end method

.method public final getAllowStructuredMapKeys()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    return p0
.end method

.method public final getAllowTrailingComma()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowTrailingComma:Z

    return p0
.end method

.method public final getClassDiscriminator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    return-object p0
.end method

.method public final getClassDiscriminatorMode()Lkotlinx/serialization/json/ClassDiscriminatorMode;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    return-object p0
.end method

.method public final getCoerceInputValues()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    return p0
.end method

.method public final getDecodeEnumsCaseInsensitive()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->decodeEnumsCaseInsensitive:Z

    return p0
.end method

.method public final getEncodeDefaults()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    return p0
.end method

.method public final getExplicitNulls()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    return p0
.end method

.method public final getIgnoreUnknownKeys()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    return p0
.end method

.method public final getNamingStrategy()Lkotlinx/serialization/json/JsonNamingStrategy;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonBuilder;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-object p0
.end method

.method public final getPrettyPrint()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    return p0
.end method

.method public final getPrettyPrintIndent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    return-object p0
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object p0
.end method

.method public final getUseAlternativeNames()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->useAlternativeNames:Z

    return p0
.end method

.method public final getUseArrayPolymorphism()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    return p0
.end method

.method public final isLenient()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    return p0
.end method

.method public final setAllowComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->allowComments:Z

    return-void
.end method

.method public final setAllowSpecialFloatingPointValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    return-void
.end method

.method public final setAllowStructuredMapKeys(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    return-void
.end method

.method public final setAllowTrailingComma(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->allowTrailingComma:Z

    return-void
.end method

.method public final setClassDiscriminator(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    return-void
.end method

.method public final setClassDiscriminatorMode(Lkotlinx/serialization/json/ClassDiscriminatorMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    return-void
.end method

.method public final setCoerceInputValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    return-void
.end method

.method public final setDecodeEnumsCaseInsensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->decodeEnumsCaseInsensitive:Z

    return-void
.end method

.method public final setEncodeDefaults(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    return-void
.end method

.method public final setExplicitNulls(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    return-void
.end method

.method public final setIgnoreUnknownKeys(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    return-void
.end method

.method public final setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    return-void
.end method

.method public final setNamingStrategy(Lkotlinx/serialization/json/JsonNamingStrategy;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->namingStrategy:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-void
.end method

.method public final setPrettyPrint(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    return-void
.end method

.method public final setPrettyPrintIndent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    return-void
.end method

.method public final setSerializersModule(Lkotlinx/serialization/modules/SerializersModule;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method

.method public final setUseAlternativeNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->useAlternativeNames:Z

    return-void
.end method

.method public final setUseArrayPolymorphism(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    return-void
.end method
