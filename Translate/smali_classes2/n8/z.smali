.class public final Ln8/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln8/z$a;
    }
.end annotation


# static fields
.field public static final b:Ln8/z$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln8/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln8/z$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ln8/z;->b:Ln8/z$a;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln8/z;->a:I

    return-void
.end method

.method public static final synthetic a(I)Ln8/z;
    .locals 1

    new-instance v0, Ln8/z;

    invoke-direct {v0, p0}, Ln8/z;-><init>(I)V

    return-object v0
.end method

.method public static b(I)I
    .locals 0

    return p0
.end method

.method public static c(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ln8/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ln8/z;

    invoke-virtual {p1}, Ln8/z;->f()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ln8/z;

    invoke-virtual {p1}, Ln8/z;->f()I

    move-result p1

    invoke-virtual {p0}, Ln8/z;->f()I

    move-result p0

    invoke-static {p0, p1}, Ln8/j0;->a(II)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Ln8/z;->a:I

    invoke-static {p0, p1}, Ln8/z;->c(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic f()I
    .locals 0

    iget p0, p0, Ln8/z;->a:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Ln8/z;->a:I

    invoke-static {p0}, Ln8/z;->d(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Ln8/z;->a:I

    invoke-static {p0}, Ln8/z;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
