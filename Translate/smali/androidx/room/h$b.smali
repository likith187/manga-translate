.class public final enum Landroidx/room/h$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/room/h$b;

.field public static final enum AUTOMATIC:Landroidx/room/h$b;

.field public static final enum TRUNCATE:Landroidx/room/h$b;

.field public static final enum WRITE_AHEAD_LOGGING:Landroidx/room/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/room/h$b;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/h$b;->AUTOMATIC:Landroidx/room/h$b;

    new-instance v1, Landroidx/room/h$b;

    const-string v2, "TRUNCATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/room/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/room/h$b;->TRUNCATE:Landroidx/room/h$b;

    new-instance v2, Landroidx/room/h$b;

    const-string v3, "WRITE_AHEAD_LOGGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/room/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/room/h$b;->WRITE_AHEAD_LOGGING:Landroidx/room/h$b;

    filled-new-array {v0, v1, v2}, [Landroidx/room/h$b;

    move-result-object v0

    sput-object v0, Landroidx/room/h$b;->$VALUES:[Landroidx/room/h$b;

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

.method private static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/h$b;
    .locals 1

    const-class v0, Landroidx/room/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/room/h$b;

    return-object p0
.end method

.method public static values()[Landroidx/room/h$b;
    .locals 1

    sget-object v0, Landroidx/room/h$b;->$VALUES:[Landroidx/room/h$b;

    invoke-virtual {v0}, [Landroidx/room/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/h$b;

    return-object v0
.end method


# virtual methods
.method resolve(Landroid/content/Context;)Landroidx/room/h$b;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-object v0, Landroidx/room/h$b;->AUTOMATIC:Landroidx/room/h$b;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "activity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/room/h$b;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroidx/room/h$b;->WRITE_AHEAD_LOGGING:Landroidx/room/h$b;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/room/h$b;->TRUNCATE:Landroidx/room/h$b;

    return-object p0
.end method
