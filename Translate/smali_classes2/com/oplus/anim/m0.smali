.class public final enum Lcom/oplus/anim/m0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/anim/m0;

.field public static final enum AUTOMATIC:Lcom/oplus/anim/m0;

.field public static final enum HARDWARE:Lcom/oplus/anim/m0;

.field public static final enum SOFTWARE:Lcom/oplus/anim/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/oplus/anim/m0;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/m0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/m0;->AUTOMATIC:Lcom/oplus/anim/m0;

    new-instance v1, Lcom/oplus/anim/m0;

    const-string v2, "HARDWARE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oplus/anim/m0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/anim/m0;->HARDWARE:Lcom/oplus/anim/m0;

    new-instance v2, Lcom/oplus/anim/m0;

    const-string v3, "SOFTWARE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oplus/anim/m0;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oplus/anim/m0;->SOFTWARE:Lcom/oplus/anim/m0;

    filled-new-array {v0, v1, v2}, [Lcom/oplus/anim/m0;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/m0;->$VALUES:[Lcom/oplus/anim/m0;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/anim/m0;
    .locals 1

    const-class v0, Lcom/oplus/anim/m0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/m0;

    return-object p0
.end method

.method public static values()[Lcom/oplus/anim/m0;
    .locals 1

    sget-object v0, Lcom/oplus/anim/m0;->$VALUES:[Lcom/oplus/anim/m0;

    invoke-virtual {v0}, [Lcom/oplus/anim/m0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/anim/m0;

    return-object v0
.end method


# virtual methods
.method public useSoftwareRendering(IZI)Z
    .locals 3

    sget-object v0, Lcom/oplus/anim/m0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    if-eqz p2, :cond_0

    const/16 p0, 0x1c

    if-ge p1, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    if-le p3, p0, :cond_1

    return v1

    :cond_1
    const/16 p0, 0x19

    if-gt p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method
