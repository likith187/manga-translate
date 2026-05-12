.class public final enum Lcom/coui/appcompat/uiutil/AnimLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/appcompat/uiutil/AnimLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coui/appcompat/uiutil/AnimLevel;

.field public static final enum HIGN_END:Lcom/coui/appcompat/uiutil/AnimLevel;

.field public static final enum LOW_END:Lcom/coui/appcompat/uiutil/AnimLevel;

.field public static final enum MID_END:Lcom/coui/appcompat/uiutil/AnimLevel;

.field public static final enum ULTRA_LOW_END:Lcom/coui/appcompat/uiutil/AnimLevel;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/coui/appcompat/uiutil/AnimLevel;

    const-string v1, "HIGN_END"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/coui/appcompat/uiutil/AnimLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coui/appcompat/uiutil/AnimLevel;->HIGN_END:Lcom/coui/appcompat/uiutil/AnimLevel;

    new-instance v1, Lcom/coui/appcompat/uiutil/AnimLevel;

    const-string v2, "MID_END"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/coui/appcompat/uiutil/AnimLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/coui/appcompat/uiutil/AnimLevel;->MID_END:Lcom/coui/appcompat/uiutil/AnimLevel;

    new-instance v2, Lcom/coui/appcompat/uiutil/AnimLevel;

    const-string v3, "LOW_END"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/coui/appcompat/uiutil/AnimLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/coui/appcompat/uiutil/AnimLevel;->LOW_END:Lcom/coui/appcompat/uiutil/AnimLevel;

    new-instance v3, Lcom/coui/appcompat/uiutil/AnimLevel;

    const-string v4, "ULTRA_LOW_END"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/coui/appcompat/uiutil/AnimLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/coui/appcompat/uiutil/AnimLevel;->ULTRA_LOW_END:Lcom/coui/appcompat/uiutil/AnimLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/coui/appcompat/uiutil/AnimLevel;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/uiutil/AnimLevel;->$VALUES:[Lcom/coui/appcompat/uiutil/AnimLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/coui/appcompat/uiutil/AnimLevel;->mIntValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/coui/appcompat/uiutil/AnimLevel;
    .locals 5

    .line 2
    invoke-static {}, Lcom/coui/appcompat/uiutil/AnimLevel;->values()[Lcom/coui/appcompat/uiutil/AnimLevel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcom/coui/appcompat/uiutil/AnimLevel;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AnimLevel Invalid int value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coui/appcompat/uiutil/AnimLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/uiutil/AnimLevel;

    return-object p0
.end method

.method public static values()[Lcom/coui/appcompat/uiutil/AnimLevel;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/AnimLevel;->$VALUES:[Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {v0}, [Lcom/coui/appcompat/uiutil/AnimLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/appcompat/uiutil/AnimLevel;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/uiutil/AnimLevel;->mIntValue:I

    return p0
.end method
