.class public final enum Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnchorViewTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

.field public static final enum BOTTOM:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

.field public static final enum END:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

.field public static final enum NAVIGATION:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

.field public static final enum NORMAL:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

.field public static final enum START:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

.field public static final enum TOOLBAR:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

.field public static final enum TOP:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;


# direct methods
.method private static final synthetic $values()[Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;
    .locals 7

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NORMAL:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    sget-object v1, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOOLBAR:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    sget-object v2, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NAVIGATION:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    sget-object v3, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->START:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    sget-object v4, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->END:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    sget-object v5, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOP:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    sget-object v6, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->BOTTOM:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    filled-new-array/range {v0 .. v6}, [Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NORMAL:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    const-string v1, "TOOLBAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOOLBAR:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    const-string v1, "NAVIGATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NAVIGATION:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    const-string v1, "START"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->START:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    const-string v1, "END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->END:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    const-string v1, "TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOP:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    new-instance v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    const-string v1, "BOTTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->BOTTOM:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-static {}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->$values()[Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->$VALUES:[Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;
    .locals 1

    const-class v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->$VALUES:[Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    return-object v0
.end method
