.class public final Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builtins"
.end annotation

.annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

.field private static final KebabCase:Lkotlinx/serialization/json/JsonNamingStrategy;

.field private static final SnakeCase:Lkotlinx/serialization/json/JsonNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->$$INSTANCE:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

    new-instance v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$SnakeCase$1;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$SnakeCase$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->SnakeCase:Lkotlinx/serialization/json/JsonNamingStrategy;

    new-instance v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$KebabCase$1;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins$KebabCase$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->KebabCase:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$convertCamelCase(Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;Ljava/lang/String;C)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->convertCamelCase(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final convertCamelCase(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    move-object v3, p0

    move v2, v1

    move v4, v2

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {v0}, Lkotlin/text/r;->T0(Ljava/lang/CharSequence;)C

    move-result v6

    if-eq v6, p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v3, p0

    move v4, v1

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getKebabCase$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method

.method public static synthetic getSnakeCase$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getKebabCase()Lkotlinx/serialization/json/JsonNamingStrategy;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->KebabCase:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-object p0
.end method

.method public final getSnakeCase()Lkotlinx/serialization/json/JsonNamingStrategy;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->SnakeCase:Lkotlinx/serialization/json/JsonNamingStrategy;

    return-object p0
.end method
