.class public final Lkotlin/text/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/n;
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
    invoke-direct {p0}, Lkotlin/text/n$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lkotlin/text/n$a;I)I
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/text/n$a;->b(I)I

    move-result p0

    return p0
.end method

.method private final b(I)I
    .locals 0

    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_0

    or-int/lit8 p1, p1, 0x40

    :cond_0
    return p1
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "literal"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "quote(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
