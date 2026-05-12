.class public final enum Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanelStatusTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

.field public static final enum INIT:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

.field public static final enum MINI:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

.field public static final enum NORMAL:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

.field public static final enum SMALL_LAND:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

.field public static final enum SPLIT_SCREEN:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

.field public static final enum TINY:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;


# direct methods
.method private static final synthetic $values()[Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;
    .locals 6

    sget-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->INIT:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    sget-object v1, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->NORMAL:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    sget-object v2, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->SMALL_LAND:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    sget-object v3, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->SPLIT_SCREEN:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    sget-object v4, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->MINI:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    sget-object v5, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->TINY:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    filled-new-array/range {v0 .. v5}, [Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->INIT:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    new-instance v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->NORMAL:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    new-instance v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    const-string v1, "SMALL_LAND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->SMALL_LAND:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    new-instance v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    const-string v1, "SPLIT_SCREEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->SPLIT_SCREEN:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    new-instance v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    const-string v1, "MINI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->MINI:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    new-instance v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    const-string v1, "TINY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->TINY:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-static {}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->$values()[Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->$VALUES:[Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;
    .locals 1

    const-class v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->$VALUES:[Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    return-object v0
.end method
