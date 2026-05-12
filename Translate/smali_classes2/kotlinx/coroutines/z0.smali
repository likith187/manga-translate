.class public final Lkotlinx/coroutines/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/a1;


# instance fields
.field private final a:Lkotlinx/coroutines/q1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/q1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/z0;->a:Lkotlinx/coroutines/q1;

    return-void
.end method


# virtual methods
.method public c()Lkotlinx/coroutines/q1;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/z0;->a:Lkotlinx/coroutines/q1;

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
