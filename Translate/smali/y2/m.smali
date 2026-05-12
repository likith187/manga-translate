.class public abstract Ly2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ly2/m$a;
    .locals 2

    new-instance v0, Ly2/c$b;

    invoke-direct {v0}, Ly2/c$b;-><init>()V

    sget-object v1, Lw2/d;->DEFAULT:Lw2/d;

    invoke-virtual {v0, v1}, Ly2/c$b;->d(Lw2/d;)Ly2/m$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[B
.end method

.method public abstract d()Lw2/d;
.end method

.method public e(Lw2/d;)Ly2/m;
    .locals 2

    invoke-static {}, Ly2/m;->a()Ly2/m$a;

    move-result-object v0

    invoke-virtual {p0}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly2/m$a;->b(Ljava/lang/String;)Ly2/m$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly2/m$a;->d(Lw2/d;)Ly2/m$a;

    move-result-object p1

    invoke-virtual {p0}, Ly2/m;->c()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ly2/m$a;->c([B)Ly2/m$a;

    move-result-object p0

    invoke-virtual {p0}, Ly2/m$a;->a()Ly2/m;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ly2/m;->d()Lw2/d;

    move-result-object v1

    invoke-virtual {p0}, Ly2/m;->c()[B

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly2/m;->c()[B

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "TransportContext(%s, %s, %s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
