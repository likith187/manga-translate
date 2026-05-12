.class public final Lo8/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo8/c$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lo8/c$a;I)I
    .locals 0

    invoke-direct {p0, p1}, Lo8/c$a;->c(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lo8/c$a;I)I
    .locals 0

    invoke-direct {p0, p1}, Lo8/c$a;->d(I)I

    move-result p0

    return p0
.end method

.method private final c(I)I
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lb9/d;->c(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method private final d(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
