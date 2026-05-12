.class public final enum Lcom/coloros/translate/utils/p0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/coloros/translate/utils/p0;

.field public static final enum OTHER:Lcom/coloros/translate/utils/p0;

.field public static final enum SUMMARY:Lcom/coloros/translate/utils/p0;

.field public static final enum TRANSLATION:Lcom/coloros/translate/utils/p0;


# direct methods
.method private static final synthetic $values()[Lcom/coloros/translate/utils/p0;
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/p0;->TRANSLATION:Lcom/coloros/translate/utils/p0;

    sget-object v1, Lcom/coloros/translate/utils/p0;->SUMMARY:Lcom/coloros/translate/utils/p0;

    sget-object v2, Lcom/coloros/translate/utils/p0;->OTHER:Lcom/coloros/translate/utils/p0;

    filled-new-array {v0, v1, v2}, [Lcom/coloros/translate/utils/p0;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coloros/translate/utils/p0;

    const-string v1, "TRANSLATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/utils/p0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/utils/p0;->TRANSLATION:Lcom/coloros/translate/utils/p0;

    new-instance v0, Lcom/coloros/translate/utils/p0;

    const-string v1, "SUMMARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/utils/p0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/utils/p0;->SUMMARY:Lcom/coloros/translate/utils/p0;

    new-instance v0, Lcom/coloros/translate/utils/p0;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/utils/p0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/utils/p0;->OTHER:Lcom/coloros/translate/utils/p0;

    invoke-static {}, Lcom/coloros/translate/utils/p0;->$values()[Lcom/coloros/translate/utils/p0;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/p0;->$VALUES:[Lcom/coloros/translate/utils/p0;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/p0;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lcom/coloros/translate/utils/p0;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/translate/utils/p0;
    .locals 1

    const-class v0, Lcom/coloros/translate/utils/p0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/utils/p0;

    return-object p0
.end method

.method public static values()[Lcom/coloros/translate/utils/p0;
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/p0;->$VALUES:[Lcom/coloros/translate/utils/p0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/translate/utils/p0;

    return-object v0
.end method
