.class public final synthetic Lj8/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 0

    iget-object p0, p0, Lj8/g;->a:Ljava/util/List;

    invoke-static {p0, p1, p2}, Lj8/h;->f(Ljava/util/List;D)D

    move-result-wide p0

    return-wide p0
.end method
