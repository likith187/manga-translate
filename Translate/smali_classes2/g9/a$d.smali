.class public final enum Lg9/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lg9/a$d;

.field public static final enum BLOCKING:Lg9/a$d;

.field public static final enum CPU_ACQUIRED:Lg9/a$d;

.field public static final enum DORMANT:Lg9/a$d;

.field public static final enum PARKING:Lg9/a$d;

.field public static final enum TERMINATED:Lg9/a$d;


# direct methods
.method private static final synthetic $values()[Lg9/a$d;
    .locals 5

    sget-object v0, Lg9/a$d;->CPU_ACQUIRED:Lg9/a$d;

    sget-object v1, Lg9/a$d;->BLOCKING:Lg9/a$d;

    sget-object v2, Lg9/a$d;->PARKING:Lg9/a$d;

    sget-object v3, Lg9/a$d;->DORMANT:Lg9/a$d;

    sget-object v4, Lg9/a$d;->TERMINATED:Lg9/a$d;

    filled-new-array {v0, v1, v2, v3, v4}, [Lg9/a$d;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg9/a$d;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg9/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg9/a$d;->CPU_ACQUIRED:Lg9/a$d;

    new-instance v0, Lg9/a$d;

    const-string v1, "BLOCKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg9/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg9/a$d;->BLOCKING:Lg9/a$d;

    new-instance v0, Lg9/a$d;

    const-string v1, "PARKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lg9/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg9/a$d;->PARKING:Lg9/a$d;

    new-instance v0, Lg9/a$d;

    const-string v1, "DORMANT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lg9/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg9/a$d;->DORMANT:Lg9/a$d;

    new-instance v0, Lg9/a$d;

    const-string v1, "TERMINATED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lg9/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg9/a$d;->TERMINATED:Lg9/a$d;

    invoke-static {}, Lg9/a$d;->$values()[Lg9/a$d;

    move-result-object v0

    sput-object v0, Lg9/a$d;->$VALUES:[Lg9/a$d;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lg9/a$d;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lg9/a$d;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lg9/a$d;
    .locals 1

    const-class v0, Lg9/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg9/a$d;

    return-object p0
.end method

.method public static values()[Lg9/a$d;
    .locals 1

    sget-object v0, Lg9/a$d;->$VALUES:[Lg9/a$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg9/a$d;

    return-object v0
.end method
