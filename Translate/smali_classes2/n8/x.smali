.class public final Ln8/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln8/x$a;
    }
.end annotation


# static fields
.field public static final b:Ln8/x$a;


# instance fields
.field private final a:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln8/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln8/x$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ln8/x;->b:Ln8/x$a;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ln8/x;->a:B

    return-void
.end method

.method public static final synthetic a(B)Ln8/x;
    .locals 1

    new-instance v0, Ln8/x;

    invoke-direct {v0, p0}, Ln8/x;-><init>(B)V

    return-object v0
.end method

.method public static b(B)B
    .locals 0

    return p0
.end method

.method public static c(BLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ln8/x;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ln8/x;

    invoke-virtual {p1}, Ln8/x;->f()B

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(B)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Byte;->hashCode(B)I

    move-result p0

    return p0
.end method

.method public static e(B)Ljava/lang/String;
    .locals 0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ln8/x;

    invoke-virtual {p1}, Ln8/x;->f()B

    move-result p1

    invoke-virtual {p0}, Ln8/x;->f()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-byte p0, p0, Ln8/x;->a:B

    invoke-static {p0, p1}, Ln8/x;->c(BLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic f()B
    .locals 0

    iget-byte p0, p0, Ln8/x;->a:B

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-byte p0, p0, Ln8/x;->a:B

    invoke-static {p0}, Ln8/x;->d(B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-byte p0, p0, Ln8/x;->a:B

    invoke-static {p0}, Ln8/x;->e(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
