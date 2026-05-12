.class public final enum Lcom/coloros/translate/screen/widget/PaintCustomView$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/widget/PaintCustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum LEFT:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum LEFT_BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum LEFT_TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum RIGHT:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum RIGHT_TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field public static final enum TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;


# direct methods
.method private static final synthetic $values()[Lcom/coloros/translate/screen/widget/PaintCustomView$c;
    .locals 9

    sget-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v1, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v2, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v3, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v4, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v5, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT_TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v6, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT_BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v7, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT_TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v8, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    filled-new-array/range {v0 .. v8}, [Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "BOTTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT_TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "LEFT_BOTTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT_BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "RIGHT_TOP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT_TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    const-string v1, "RIGHT_BOTTOM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    invoke-static {}, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->$values()[Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->$VALUES:[Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->$ENTRIES:Lr8/a;

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

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/translate/screen/widget/PaintCustomView$c;
    .locals 1

    const-class v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    return-object p0
.end method

.method public static values()[Lcom/coloros/translate/screen/widget/PaintCustomView$c;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->$VALUES:[Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    return-object v0
.end method
