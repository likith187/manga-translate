.class public abstract Lx2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx2/o$a;,
        Lx2/o$b;,
        Lx2/o$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lx2/o$a;
    .locals 1

    new-instance v0, Lx2/i$b;

    invoke-direct {v0}, Lx2/i$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lx2/o$b;
.end method

.method public abstract c()Lx2/o$c;
.end method
