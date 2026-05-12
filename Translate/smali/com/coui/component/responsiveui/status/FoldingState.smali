.class public final enum Lcom/coui/component/responsiveui/status/FoldingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/component/responsiveui/status/FoldingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coui/component/responsiveui/status/FoldingState;

.field public static final enum FOLD:Lcom/coui/component/responsiveui/status/FoldingState;

.field public static final enum UNFOLD:Lcom/coui/component/responsiveui/status/FoldingState;

.field public static final enum UNKNOWN:Lcom/coui/component/responsiveui/status/FoldingState;


# direct methods
.method private static final synthetic $values()[Lcom/coui/component/responsiveui/status/FoldingState;
    .locals 3

    sget-object v0, Lcom/coui/component/responsiveui/status/FoldingState;->FOLD:Lcom/coui/component/responsiveui/status/FoldingState;

    sget-object v1, Lcom/coui/component/responsiveui/status/FoldingState;->UNFOLD:Lcom/coui/component/responsiveui/status/FoldingState;

    sget-object v2, Lcom/coui/component/responsiveui/status/FoldingState;->UNKNOWN:Lcom/coui/component/responsiveui/status/FoldingState;

    filled-new-array {v0, v1, v2}, [Lcom/coui/component/responsiveui/status/FoldingState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/component/responsiveui/status/FoldingState;

    const-string v1, "FOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coui/component/responsiveui/status/FoldingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/component/responsiveui/status/FoldingState;->FOLD:Lcom/coui/component/responsiveui/status/FoldingState;

    new-instance v0, Lcom/coui/component/responsiveui/status/FoldingState;

    const-string v1, "UNFOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coui/component/responsiveui/status/FoldingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/component/responsiveui/status/FoldingState;->UNFOLD:Lcom/coui/component/responsiveui/status/FoldingState;

    new-instance v0, Lcom/coui/component/responsiveui/status/FoldingState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/coui/component/responsiveui/status/FoldingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/component/responsiveui/status/FoldingState;->UNKNOWN:Lcom/coui/component/responsiveui/status/FoldingState;

    invoke-static {}, Lcom/coui/component/responsiveui/status/FoldingState;->$values()[Lcom/coui/component/responsiveui/status/FoldingState;

    move-result-object v0

    sput-object v0, Lcom/coui/component/responsiveui/status/FoldingState;->$VALUES:[Lcom/coui/component/responsiveui/status/FoldingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coui/component/responsiveui/status/FoldingState;
    .locals 1

    const-class v0, Lcom/coui/component/responsiveui/status/FoldingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/component/responsiveui/status/FoldingState;

    return-object p0
.end method

.method public static values()[Lcom/coui/component/responsiveui/status/FoldingState;
    .locals 1

    sget-object v0, Lcom/coui/component/responsiveui/status/FoldingState;->$VALUES:[Lcom/coui/component/responsiveui/status/FoldingState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/component/responsiveui/status/FoldingState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
