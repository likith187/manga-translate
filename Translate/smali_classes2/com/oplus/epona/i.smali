.class public final enum Lcom/oplus/epona/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/epona/i;

.field public static final enum FAILED:Lcom/oplus/epona/i;

.field public static final enum PERMISSION_DENY:Lcom/oplus/epona/i;

.field public static final enum SUCCESS:Lcom/oplus/epona/i;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oplus/epona/i;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/epona/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/epona/i;->SUCCESS:Lcom/oplus/epona/i;

    new-instance v1, Lcom/oplus/epona/i;

    const-string v2, "FAILED"

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/epona/i;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oplus/epona/i;->FAILED:Lcom/oplus/epona/i;

    new-instance v2, Lcom/oplus/epona/i;

    const/4 v3, 0x2

    const/4 v4, -0x2

    const-string v5, "PERMISSION_DENY"

    invoke-direct {v2, v5, v3, v4}, Lcom/oplus/epona/i;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/oplus/epona/i;->PERMISSION_DENY:Lcom/oplus/epona/i;

    filled-new-array {v0, v1, v2}, [Lcom/oplus/epona/i;

    move-result-object v0

    sput-object v0, Lcom/oplus/epona/i;->$VALUES:[Lcom/oplus/epona/i;

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

    iput p3, p0, Lcom/oplus/epona/i;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/epona/i;
    .locals 1

    const-class v0, Lcom/oplus/epona/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/i;

    return-object p0
.end method

.method public static values()[Lcom/oplus/epona/i;
    .locals 1

    sget-object v0, Lcom/oplus/epona/i;->$VALUES:[Lcom/oplus/epona/i;

    invoke-virtual {v0}, [Lcom/oplus/epona/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/epona/i;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/oplus/epona/i;->code:I

    return p0
.end method
