.class public final Lkotlinx/coroutines/q1;
.super Lkotlinx/coroutines/internal/p;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/a1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/p;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lkotlinx/coroutines/q1;
    .locals 0

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/internal/r;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
