.class public abstract Lx2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx2/k$a;,
        Lx2/k$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lx2/k$a;
    .locals 1

    new-instance v0, Lx2/e$b;

    invoke-direct {v0}, Lx2/e$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lx2/a;
.end method

.method public abstract c()Lx2/k$b;
.end method
