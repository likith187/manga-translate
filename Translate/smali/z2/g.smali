.class public abstract Lz2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lz2/g;
    .locals 4

    new-instance v0, Lz2/b;

    sget-object v1, Lz2/g$a;->FATAL_ERROR:Lz2/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lz2/b;-><init>(Lz2/g$a;J)V

    return-object v0
.end method

.method public static d(J)Lz2/g;
    .locals 2

    new-instance v0, Lz2/b;

    sget-object v1, Lz2/g$a;->OK:Lz2/g$a;

    invoke-direct {v0, v1, p0, p1}, Lz2/b;-><init>(Lz2/g$a;J)V

    return-object v0
.end method

.method public static e()Lz2/g;
    .locals 4

    new-instance v0, Lz2/b;

    sget-object v1, Lz2/g$a;->TRANSIENT_ERROR:Lz2/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lz2/b;-><init>(Lz2/g$a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lz2/g$a;
.end method
