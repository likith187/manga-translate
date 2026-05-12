.class public final enum Lcom/ai/slp/library/mt/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/ai/slp/library/mt/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ai/slp/library/mt/c$a;
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ai/slp/library/mt/c;

.field public static final enum CHINESE:Lcom/ai/slp/library/mt/c;

.field public static final Companion:Lcom/ai/slp/library/mt/c$a;

.field public static final enum ENGLISH:Lcom/ai/slp/library/mt/c;

.field public static final enum FRENCH:Lcom/ai/slp/library/mt/c;

.field public static final enum GERMAN:Lcom/ai/slp/library/mt/c;

.field public static final enum HINDI:Lcom/ai/slp/library/mt/c;

.field public static final enum INDONESIA:Lcom/ai/slp/library/mt/c;

.field public static final enum ITALIAN:Lcom/ai/slp/library/mt/c;

.field public static final enum JAPANESE:Lcom/ai/slp/library/mt/c;

.field public static final enum KOREAN:Lcom/ai/slp/library/mt/c;

.field public static final enum SPANISH:Lcom/ai/slp/library/mt/c;

.field public static final enum THAILAND:Lcom/ai/slp/library/mt/c;

.field public static final enum Vietnamese:Lcom/ai/slp/library/mt/c;

.field private static final dataMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ai/slp/library/mt/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chName:Ljava/lang/String;

.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ai/slp/library/mt/c;

    const-string v1, "\u4e2d\u6587"

    const-string v2, "zh"

    const-string v3, "CHINESE"

    const/4 v12, 0x0

    invoke-direct {v0, v3, v12, v1, v2}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ai/slp/library/mt/c;->CHINESE:Lcom/ai/slp/library/mt/c;

    new-instance v1, Lcom/ai/slp/library/mt/c;

    const-string v2, "\u82f1\u6587"

    const-string v3, "en"

    const-string v4, "ENGLISH"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/ai/slp/library/mt/c;->ENGLISH:Lcom/ai/slp/library/mt/c;

    new-instance v2, Lcom/ai/slp/library/mt/c;

    const-string v3, "\u97e9\u6587"

    const-string v4, "ko"

    const-string v5, "KOREAN"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/ai/slp/library/mt/c;->KOREAN:Lcom/ai/slp/library/mt/c;

    new-instance v3, Lcom/ai/slp/library/mt/c;

    const-string v4, "\u6cd5\u6587"

    const-string v5, "fr"

    const-string v6, "FRENCH"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/ai/slp/library/mt/c;->FRENCH:Lcom/ai/slp/library/mt/c;

    new-instance v4, Lcom/ai/slp/library/mt/c;

    const-string v5, "\u65e5\u6587"

    const-string v6, "ja"

    const-string v7, "JAPANESE"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/ai/slp/library/mt/c;->JAPANESE:Lcom/ai/slp/library/mt/c;

    new-instance v5, Lcom/ai/slp/library/mt/c;

    const-string v6, "\u897f\u73ed\u7259\u6587"

    const-string v7, "es"

    const-string v8, "SPANISH"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/ai/slp/library/mt/c;->SPANISH:Lcom/ai/slp/library/mt/c;

    new-instance v6, Lcom/ai/slp/library/mt/c;

    const-string v7, "\u8d8a\u5357\u6587"

    const-string v8, "vi"

    const-string v9, "Vietnamese"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/ai/slp/library/mt/c;->Vietnamese:Lcom/ai/slp/library/mt/c;

    new-instance v7, Lcom/ai/slp/library/mt/c;

    const-string v8, "\u5370\u5730\u6587"

    const-string v9, "hi"

    const-string v10, "HINDI"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/ai/slp/library/mt/c;->HINDI:Lcom/ai/slp/library/mt/c;

    new-instance v8, Lcom/ai/slp/library/mt/c;

    const-string v9, "\u610f\u5927\u5229\u6587"

    const-string v10, "it"

    const-string v11, "ITALIAN"

    const/16 v13, 0x8

    invoke-direct {v8, v11, v13, v9, v10}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/ai/slp/library/mt/c;->ITALIAN:Lcom/ai/slp/library/mt/c;

    new-instance v9, Lcom/ai/slp/library/mt/c;

    const-string v10, "\u5370\u5c3c\u6587"

    const-string v11, "id"

    const-string v13, "INDONESIA"

    const/16 v14, 0x9

    invoke-direct {v9, v13, v14, v10, v11}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/ai/slp/library/mt/c;->INDONESIA:Lcom/ai/slp/library/mt/c;

    new-instance v10, Lcom/ai/slp/library/mt/c;

    const-string v11, "\u6cf0\u6587"

    const-string v13, "th"

    const-string v14, "THAILAND"

    const/16 v15, 0xa

    invoke-direct {v10, v14, v15, v11, v13}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/ai/slp/library/mt/c;->THAILAND:Lcom/ai/slp/library/mt/c;

    new-instance v11, Lcom/ai/slp/library/mt/c;

    const-string v13, "\u5fb7\u6587"

    const-string v14, "de"

    const-string v15, "GERMAN"

    const/16 v12, 0xb

    invoke-direct {v11, v15, v12, v13, v14}, Lcom/ai/slp/library/mt/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/ai/slp/library/mt/c;->GERMAN:Lcom/ai/slp/library/mt/c;

    filled-new-array/range {v0 .. v11}, [Lcom/ai/slp/library/mt/c;

    move-result-object v0

    sput-object v0, Lcom/ai/slp/library/mt/c;->$VALUES:[Lcom/ai/slp/library/mt/c;

    new-instance v0, Lcom/ai/slp/library/mt/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ai/slp/library/mt/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ai/slp/library/mt/c;->Companion:Lcom/ai/slp/library/mt/c$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ai/slp/library/mt/c;->dataMaps:Ljava/util/HashMap;

    invoke-static {}, Lcom/ai/slp/library/mt/c;->values()[Lcom/ai/slp/library/mt/c;

    move-result-object v0

    array-length v1, v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v1, :cond_0

    aget-object v2, v0, v12

    sget-object v3, Lcom/ai/slp/library/mt/c;->dataMaps:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/ai/slp/library/mt/c;->chName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ai/slp/library/mt/c;->chName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ai/slp/library/mt/c;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDataMaps$cp()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/ai/slp/library/mt/c;->dataMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final createNewLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ai/slp/library/mt/a;
    .locals 1

    sget-object v0, Lcom/ai/slp/library/mt/c;->Companion:Lcom/ai/slp/library/mt/c$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ai/slp/library/mt/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ai/slp/library/mt/a;

    move-result-object p0

    return-object p0
.end method

.method public static final getLanguageOfName(Ljava/lang/String;)Lcom/ai/slp/library/mt/a;
    .locals 1

    sget-object v0, Lcom/ai/slp/library/mt/c;->Companion:Lcom/ai/slp/library/mt/c$a;

    invoke-virtual {v0, p0}, Lcom/ai/slp/library/mt/c$a;->b(Ljava/lang/String;)Lcom/ai/slp/library/mt/a;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ai/slp/library/mt/c;
    .locals 1

    const-class v0, Lcom/ai/slp/library/mt/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ai/slp/library/mt/c;

    return-object p0
.end method

.method public static values()[Lcom/ai/slp/library/mt/c;
    .locals 1

    sget-object v0, Lcom/ai/slp/library/mt/c;->$VALUES:[Lcom/ai/slp/library/mt/c;

    invoke-virtual {v0}, [Lcom/ai/slp/library/mt/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ai/slp/library/mt/c;

    return-object v0
.end method


# virtual methods
.method public getChName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/c;->chName:Ljava/lang/String;

    return-object p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/c;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
