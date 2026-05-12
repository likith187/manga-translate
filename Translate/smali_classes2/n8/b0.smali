.class public final Ln8/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln8/b0$a;
    }
.end annotation


# static fields
.field public static final b:Ln8/b0$a;


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln8/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln8/b0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ln8/b0;->b:Ln8/b0$a;

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ln8/b0;->a:J

    return-void
.end method

.method public static final synthetic a(J)Ln8/b0;
    .locals 1

    new-instance v0, Ln8/b0;

    invoke-direct {v0, p0, p1}, Ln8/b0;-><init>(J)V

    return-object v0
.end method

.method public static b(J)J
    .locals 0

    return-wide p0
.end method

.method public static c(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Ln8/b0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Ln8/b0;

    invoke-virtual {p2}, Ln8/b0;->f()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Ln8/j0;->c(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ln8/b0;

    invoke-virtual {p1}, Ln8/b0;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Ln8/b0;->f()J

    move-result-wide p0

    invoke-static {p0, p1, v0, v1}, Ln8/j0;->b(JJ)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Ln8/b0;->a:J

    invoke-static {v0, v1, p1}, Ln8/b0;->c(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic f()J
    .locals 2

    iget-wide v0, p0, Ln8/b0;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Ln8/b0;->a:J

    invoke-static {v0, v1}, Ln8/b0;->d(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ln8/b0;->a:J

    invoke-static {v0, v1}, Ln8/b0;->e(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
