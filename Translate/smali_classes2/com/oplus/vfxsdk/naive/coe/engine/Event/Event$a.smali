.class public final enum Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

.field public static final enum MESSAGE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

.field public static final enum NONE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

.field public static final enum SET_SCREEN_SIZE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

.field public static final enum SET_SURFACE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

.field public static final enum SET_VIEWPORT:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

.field public static final enum TOUCH:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

.field public static final enum UNIFORM:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

.field public static final enum UPDATE_MESH:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;


# direct methods
.method private static synthetic $values()[Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;
    .locals 8

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->NONE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->TOUCH:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    sget-object v2, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->UNIFORM:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->UPDATE_MESH:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    sget-object v4, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->MESSAGE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    sget-object v5, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->SET_SURFACE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    sget-object v6, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->SET_VIEWPORT:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    sget-object v7, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->SET_SCREEN_SIZE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    filled-new-array/range {v0 .. v7}, [Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->NONE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    const-string v1, "TOUCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->TOUCH:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    const-string v1, "UNIFORM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->UNIFORM:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    const-string v1, "UPDATE_MESH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->UPDATE_MESH:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    const-string v1, "MESSAGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->MESSAGE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    const-string v1, "SET_SURFACE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->SET_SURFACE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    const-string v1, "SET_VIEWPORT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->SET_VIEWPORT:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    const-string v1, "SET_SCREEN_SIZE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->SET_SCREEN_SIZE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    invoke-static {}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->$values()[Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->$VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;
    .locals 1

    const-class v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->$VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    invoke-virtual {v0}, [Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    return-object v0
.end method
