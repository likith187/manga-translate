.class public final enum Lcom/coloros/translate/widget/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/coloros/translate/widget/e;

.field public static final enum NEED_DISMISS_DIALOG:Lcom/coloros/translate/widget/e;

.field public static final enum NORMAL:Lcom/coloros/translate/widget/e;


# direct methods
.method private static final synthetic $values()[Lcom/coloros/translate/widget/e;
    .locals 2

    sget-object v0, Lcom/coloros/translate/widget/e;->NORMAL:Lcom/coloros/translate/widget/e;

    sget-object v1, Lcom/coloros/translate/widget/e;->NEED_DISMISS_DIALOG:Lcom/coloros/translate/widget/e;

    filled-new-array {v0, v1}, [Lcom/coloros/translate/widget/e;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coloros/translate/widget/e;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/widget/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/widget/e;->NORMAL:Lcom/coloros/translate/widget/e;

    new-instance v0, Lcom/coloros/translate/widget/e;

    const-string v1, "NEED_DISMISS_DIALOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/widget/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/widget/e;->NEED_DISMISS_DIALOG:Lcom/coloros/translate/widget/e;

    invoke-static {}, Lcom/coloros/translate/widget/e;->$values()[Lcom/coloros/translate/widget/e;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/widget/e;->$VALUES:[Lcom/coloros/translate/widget/e;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/widget/e;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lcom/coloros/translate/widget/e;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/translate/widget/e;
    .locals 1

    const-class v0, Lcom/coloros/translate/widget/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/widget/e;

    return-object p0
.end method

.method public static values()[Lcom/coloros/translate/widget/e;
    .locals 1

    sget-object v0, Lcom/coloros/translate/widget/e;->$VALUES:[Lcom/coloros/translate/widget/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/translate/widget/e;

    return-object v0
.end method
