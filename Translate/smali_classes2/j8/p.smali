.class public final synthetic Lj8/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Lj8/u;->a(Ljava/lang/Float;)D

    move-result-wide p0

    return-wide p0
.end method
