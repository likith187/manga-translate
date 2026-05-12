.class public final enum Ly0/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Ly0/a;

.field public static final enum STATE_ERROR:Ly0/a;

.field public static final enum STATE_PAUSE:Ly0/a;

.field public static final enum STATE_START:Ly0/a;

.field public static final enum STATE_STOP:Ly0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ly0/a;

    const-string v1, "STATE_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly0/a;->STATE_START:Ly0/a;

    new-instance v1, Ly0/a;

    const-string v2, "STATE_STOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ly0/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly0/a;->STATE_STOP:Ly0/a;

    new-instance v2, Ly0/a;

    const-string v3, "STATE_PAUSE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ly0/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ly0/a;->STATE_PAUSE:Ly0/a;

    new-instance v3, Ly0/a;

    const-string v4, "STATE_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ly0/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly0/a;->STATE_ERROR:Ly0/a;

    filled-new-array {v0, v1, v2, v3}, [Ly0/a;

    move-result-object v0

    sput-object v0, Ly0/a;->$VALUES:[Ly0/a;

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

.method public static valueOf(Ljava/lang/String;)Ly0/a;
    .locals 1

    const-class v0, Ly0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly0/a;

    return-object p0
.end method

.method public static values()[Ly0/a;
    .locals 1

    sget-object v0, Ly0/a;->$VALUES:[Ly0/a;

    invoke-virtual {v0}, [Ly0/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly0/a;

    return-object v0
.end method
