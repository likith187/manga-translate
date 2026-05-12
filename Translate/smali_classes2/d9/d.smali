.class public final enum Ld9/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Ld9/d;

.field public static final enum DAYS:Ld9/d;

.field public static final enum HOURS:Ld9/d;

.field public static final enum MICROSECONDS:Ld9/d;

.field public static final enum MILLISECONDS:Ld9/d;

.field public static final enum MINUTES:Ld9/d;

.field public static final enum NANOSECONDS:Ld9/d;

.field public static final enum SECONDS:Ld9/d;


# instance fields
.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private static final synthetic $values()[Ld9/d;
    .locals 7

    sget-object v0, Ld9/d;->NANOSECONDS:Ld9/d;

    sget-object v1, Ld9/d;->MICROSECONDS:Ld9/d;

    sget-object v2, Ld9/d;->MILLISECONDS:Ld9/d;

    sget-object v3, Ld9/d;->SECONDS:Ld9/d;

    sget-object v4, Ld9/d;->MINUTES:Ld9/d;

    sget-object v5, Ld9/d;->HOURS:Ld9/d;

    sget-object v6, Ld9/d;->DAYS:Ld9/d;

    filled-new-array/range {v0 .. v6}, [Ld9/d;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld9/d;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "NANOSECONDS"

    invoke-direct {v0, v3, v1, v2}, Ld9/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Ld9/d;->NANOSECONDS:Ld9/d;

    new-instance v0, Ld9/d;

    const/4 v1, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "MICROSECONDS"

    invoke-direct {v0, v3, v1, v2}, Ld9/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Ld9/d;->MICROSECONDS:Ld9/d;

    new-instance v0, Ld9/d;

    const/4 v1, 0x2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "MILLISECONDS"

    invoke-direct {v0, v3, v1, v2}, Ld9/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Ld9/d;->MILLISECONDS:Ld9/d;

    new-instance v0, Ld9/d;

    const/4 v1, 0x3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "SECONDS"

    invoke-direct {v0, v3, v1, v2}, Ld9/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Ld9/d;->SECONDS:Ld9/d;

    new-instance v0, Ld9/d;

    const/4 v1, 0x4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v3, "MINUTES"

    invoke-direct {v0, v3, v1, v2}, Ld9/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Ld9/d;->MINUTES:Ld9/d;

    new-instance v0, Ld9/d;

    const/4 v1, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "HOURS"

    invoke-direct {v0, v3, v1, v2}, Ld9/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Ld9/d;->HOURS:Ld9/d;

    new-instance v0, Ld9/d;

    const/4 v1, 0x6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "DAYS"

    invoke-direct {v0, v3, v1, v2}, Ld9/d;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    sput-object v0, Ld9/d;->DAYS:Ld9/d;

    invoke-static {}, Ld9/d;->$values()[Ld9/d;

    move-result-object v0

    sput-object v0, Ld9/d;->$VALUES:[Ld9/d;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Ld9/d;->$ENTRIES:Lr8/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ld9/d;->timeUnit:Ljava/util/concurrent/TimeUnit;

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

    sget-object v0, Ld9/d;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ld9/d;
    .locals 1

    const-class v0, Ld9/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld9/d;

    return-object p0
.end method

.method public static values()[Ld9/d;
    .locals 1

    sget-object v0, Ld9/d;->$VALUES:[Ld9/d;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld9/d;

    return-object v0
.end method


# virtual methods
.method public final getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;
    .locals 0

    iget-object p0, p0, Ld9/d;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method
