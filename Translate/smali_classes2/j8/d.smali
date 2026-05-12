.class public final synthetic Lj8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj8/d;->a:I

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 0

    iget p0, p0, Lj8/d;->a:I

    invoke-static {p0, p1, p2}, Lj8/h;->d(ID)D

    move-result-wide p0

    return-wide p0
.end method
