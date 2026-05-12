.class public final enum Le3/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Le3/d$c;

.field public static final enum DEVICE_CHARGING:Le3/d$c;

.field public static final enum DEVICE_IDLE:Le3/d$c;

.field public static final enum NETWORK_UNMETERED:Le3/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Le3/d$c;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le3/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le3/d$c;->NETWORK_UNMETERED:Le3/d$c;

    new-instance v1, Le3/d$c;

    const-string v2, "DEVICE_IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Le3/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le3/d$c;->DEVICE_IDLE:Le3/d$c;

    new-instance v2, Le3/d$c;

    const-string v3, "DEVICE_CHARGING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Le3/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Le3/d$c;->DEVICE_CHARGING:Le3/d$c;

    filled-new-array {v0, v1, v2}, [Le3/d$c;

    move-result-object v0

    sput-object v0, Le3/d$c;->$VALUES:[Le3/d$c;

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

.method public static valueOf(Ljava/lang/String;)Le3/d$c;
    .locals 1

    const-class v0, Le3/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le3/d$c;

    return-object p0
.end method

.method public static values()[Le3/d$c;
    .locals 1

    sget-object v0, Le3/d$c;->$VALUES:[Le3/d$c;

    invoke-virtual {v0}, [Le3/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le3/d$c;

    return-object v0
.end method
