.class public final Le9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le9/b$a;
    }
.end annotation


# static fields
.field public static final Companion:Le9/b$a;

.field private static final LEXICAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Le9/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final NIL:Le9/b;

.field public static final SIZE_BITS:I = 0x80

.field public static final SIZE_BYTES:I = 0x10


# instance fields
.field private final leastSignificantBits:J

.field private final mostSignificantBits:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Le9/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le9/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Le9/b;->Companion:Le9/b$a;

    new-instance v0, Le9/b;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Le9/b;-><init>(JJ)V

    sput-object v0, Le9/b;->NIL:Le9/b;

    new-instance v0, Le9/a;

    invoke-direct {v0}, Le9/a;-><init>()V

    sput-object v0, Le9/b;->LEXICAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le9/b;->mostSignificantBits:J

    iput-wide p3, p0, Le9/b;->leastSignificantBits:J

    return-void
.end method

.method private static final LEXICAL_ORDER$lambda$2(Le9/b;Le9/b;)I
    .locals 4

    iget-wide v0, p0, Le9/b;->mostSignificantBits:J

    iget-wide v2, p1, Le9/b;->mostSignificantBits:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ln8/b0;->b(J)J

    move-result-wide v0

    iget-wide p0, p1, Le9/b;->mostSignificantBits:J

    invoke-static {p0, p1}, Ln8/b0;->b(J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Le9/b;->leastSignificantBits:J

    invoke-static {v0, v1}, Ln8/b0;->b(J)J

    move-result-wide v0

    iget-wide p0, p1, Le9/b;->leastSignificantBits:J

    invoke-static {p0, p1}, Ln8/b0;->b(J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static synthetic a(Le9/b;Le9/b;)I
    .locals 0

    invoke-static {p0, p1}, Le9/b;->LEXICAL_ORDER$lambda$2(Le9/b;Le9/b;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLEXICAL_ORDER$cp()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Le9/b;->LEXICAL_ORDER:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic access$getNIL$cp()Le9/b;
    .locals 1

    sget-object v0, Le9/b;->NIL:Le9/b;

    return-object v0
.end method

.method public static synthetic getLeastSignificantBits$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMostSignificantBits$annotations()V
    .locals 0

    return-void
.end method

.method private final toLongs(Lw8/p;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw8/p;",
            ")TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le9/b;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Le9/b;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final toULongs(Lw8/p;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw8/p;",
            ")TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le9/b;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ln8/b0;->b(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ln8/b0;->a(J)Ln8/b0;

    move-result-object v0

    invoke-virtual {p0}, Le9/b;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ln8/b0;->b(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ln8/b0;->a(J)Ln8/b0;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le9/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Le9/b;->mostSignificantBits:J

    check-cast p1, Le9/b;

    iget-wide v5, p1, Le9/b;->mostSignificantBits:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Le9/b;->leastSignificantBits:J

    iget-wide p0, p1, Le9/b;->leastSignificantBits:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getLeastSignificantBits()J
    .locals 2

    iget-wide v0, p0, Le9/b;->leastSignificantBits:J

    return-wide v0
.end method

.method public final getMostSignificantBits()J
    .locals 2

    iget-wide v0, p0, Le9/b;->mostSignificantBits:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Le9/b;->mostSignificantBits:J

    iget-wide v2, p0, Le9/b;->leastSignificantBits:J

    xor-long/2addr v0, v2

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int p0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toByteArray()[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-wide v1, p0, Le9/b;->mostSignificantBits:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Le9/d;->c(J[BI)V

    iget-wide v1, p0, Le9/b;->leastSignificantBits:J

    const/16 p0, 0x8

    invoke-static {v1, v2, v0, p0}, Le9/d;->c(J[BI)V

    return-object v0
.end method

.method public final toHexString()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-wide v1, p0, Le9/b;->leastSignificantBits:J

    const/16 v3, 0x10

    const/16 v4, 0x8

    invoke-static {v1, v2, v0, v3, v4}, Le9/d;->b(J[BII)V

    iget-wide v1, p0, Le9/b;->mostSignificantBits:J

    const/4 p0, 0x0

    invoke-static {v1, v2, v0, p0, v4}, Le9/d;->b(J[BII)V

    invoke-static {v0}, Lkotlin/text/r;->s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x24

    new-array v0, v0, [B

    iget-wide v1, p0, Le9/b;->leastSignificantBits:J

    const/16 v3, 0x18

    const/4 v4, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Le9/d;->b(J[BII)V

    const/16 v1, 0x17

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    iget-wide v3, p0, Le9/b;->leastSignificantBits:J

    const/16 v1, 0x30

    ushr-long/2addr v3, v1

    const/16 v1, 0x13

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v1, v5}, Le9/d;->b(J[BII)V

    const/16 v1, 0x12

    aput-byte v2, v0, v1

    iget-wide v3, p0, Le9/b;->mostSignificantBits:J

    const/16 v1, 0xe

    invoke-static {v3, v4, v0, v1, v5}, Le9/d;->b(J[BII)V

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    iget-wide v3, p0, Le9/b;->mostSignificantBits:J

    const/16 v1, 0x10

    ushr-long/2addr v3, v1

    const/16 v1, 0x9

    invoke-static {v3, v4, v0, v1, v5}, Le9/d;->b(J[BII)V

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    iget-wide v1, p0, Le9/b;->mostSignificantBits:J

    const/16 p0, 0x20

    ushr-long/2addr v1, p0

    const/4 p0, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, p0, v3}, Le9/d;->b(J[BII)V

    invoke-static {v0}, Lkotlin/text/r;->s([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
