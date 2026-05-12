.class public final enum Lcom/coloros/translate/screen/translate/business/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/coloros/translate/screen/translate/business/l;

.field public static final enum FULL:Lcom/coloros/translate/screen/translate/business/l;

.field public static final enum NONE:Lcom/coloros/translate/screen/translate/business/l;

.field public static final enum ZONE:Lcom/coloros/translate/screen/translate/business/l;


# direct methods
.method private static final synthetic $values()[Lcom/coloros/translate/screen/translate/business/l;
    .locals 3

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->NONE:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v1, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v2, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    filled-new-array {v0, v1, v2}, [Lcom/coloros/translate/screen/translate/business/l;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coloros/translate/screen/translate/business/l;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/translate/business/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/translate/business/l;->NONE:Lcom/coloros/translate/screen/translate/business/l;

    new-instance v0, Lcom/coloros/translate/screen/translate/business/l;

    const-string v1, "ZONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/translate/business/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    new-instance v0, Lcom/coloros/translate/screen/translate/business/l;

    const-string v1, "FULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/translate/business/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    invoke-static {}, Lcom/coloros/translate/screen/translate/business/l;->$values()[Lcom/coloros/translate/screen/translate/business/l;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/translate/business/l;->$VALUES:[Lcom/coloros/translate/screen/translate/business/l;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/translate/business/l;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/translate/screen/translate/business/l;
    .locals 1

    const-class v0, Lcom/coloros/translate/screen/translate/business/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/translate/business/l;

    return-object p0
.end method

.method public static values()[Lcom/coloros/translate/screen/translate/business/l;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->$VALUES:[Lcom/coloros/translate/screen/translate/business/l;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/translate/screen/translate/business/l;

    return-object v0
.end method
