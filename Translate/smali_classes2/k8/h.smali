.class public final synthetic Lk8/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntToDoubleFunction;


# instance fields
.field public final synthetic a:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/h;->a:[B

    return-void
.end method


# virtual methods
.method public final applyAsDouble(I)D
    .locals 0

    iget-object p0, p0, Lk8/h;->a:[B

    invoke-static {p0, p1}, Lk8/i;->b([BI)D

    move-result-wide p0

    return-wide p0
.end method
