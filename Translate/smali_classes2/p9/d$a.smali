.class public final Lp9/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/d;
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
    invoke-direct {p0}, Lp9/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Z
    .locals 3

    invoke-static {}, Lorg/conscrypt/Conscrypt;->version()Lorg/conscrypt/Conscrypt$Version;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/Conscrypt$Version;->major()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lorg/conscrypt/Conscrypt$Version;->major()I

    move-result p0

    if-le p0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/conscrypt/Conscrypt$Version;->minor()I

    move-result p1

    if-eq p1, p2, :cond_3

    invoke-virtual {p0}, Lorg/conscrypt/Conscrypt$Version;->minor()I

    move-result p0

    if-le p0, p2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lorg/conscrypt/Conscrypt$Version;->patch()I

    move-result p0

    if-lt p0, p3, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public final b()Lp9/d;
    .locals 1

    invoke-virtual {p0}, Lp9/d$a;->c()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance p0, Lp9/d;

    invoke-direct {p0, v0}, Lp9/d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 0

    invoke-static {}, Lp9/d;->p()Z

    move-result p0

    return p0
.end method
