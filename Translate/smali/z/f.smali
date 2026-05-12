.class public final Lz/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/f$b;,
        Lz/f$a;
    }
.end annotation


# static fields
.field private static final b:Lz/f;


# instance fields
.field private final a:Lz/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, Lz/f;->a([Ljava/util/Locale;)Lz/f;

    move-result-object v0

    sput-object v0, Lz/f;->b:Lz/f;

    return-void
.end method

.method private constructor <init>(Lz/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/f;->a:Lz/g;

    return-void
.end method

.method public static varargs a([Ljava/util/Locale;)Lz/f;
    .locals 0

    invoke-static {p0}, Lz/f$b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p0}, Lz/f;->h(Landroid/os/LocaleList;)Lz/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lz/f;
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lz/f$a;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lz/f;->a([Ljava/util/Locale;)Lz/f;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-static {}, Lz/f;->d()Lz/f;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lz/f;
    .locals 1

    sget-object v0, Lz/f;->b:Lz/f;

    return-object v0
.end method

.method public static h(Landroid/os/LocaleList;)Lz/f;
    .locals 2

    new-instance v0, Lz/f;

    new-instance v1, Lz/h;

    invoke-direct {v1, p0}, Lz/h;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lz/f;-><init>(Lz/g;)V

    return-object v0
.end method


# virtual methods
.method public c(I)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lz/f;->a:Lz/g;

    invoke-interface {p0, p1}, Lz/g;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lz/f;->a:Lz/g;

    invoke-interface {p0}, Lz/g;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lz/f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lz/f;->a:Lz/g;

    check-cast p1, Lz/f;

    iget-object p1, p1, Lz/f;->a:Lz/g;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()I
    .locals 0

    iget-object p0, p0, Lz/f;->a:Lz/g;

    invoke-interface {p0}, Lz/g;->size()I

    move-result p0

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz/f;->a:Lz/g;

    invoke-interface {p0}, Lz/g;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lz/f;->a:Lz/g;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz/f;->a:Lz/g;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
