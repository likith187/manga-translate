.class public final synthetic Lj8/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj8/t0;->a:I

    iput-object p2, p0, Lj8/t0;->b:[B

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    iget v0, p0, Lj8/t0;->a:I

    iget-object p0, p0, Lj8/t0;->b:[B

    invoke-static {v0, p0, p1}, Lj8/u0;->f(I[BI)I

    move-result p0

    return p0
.end method
