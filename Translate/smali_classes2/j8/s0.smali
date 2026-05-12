.class public final synthetic Lj8/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lorg/opencv/core/Mat;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/opencv/core/Mat;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/s0;->a:Lorg/opencv/core/Mat;

    iput-object p2, p0, Lj8/s0;->b:Ljava/util/List;

    iput p3, p0, Lj8/s0;->c:I

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj8/s0;->a:Lorg/opencv/core/Mat;

    iget-object v1, p0, Lj8/s0;->b:Ljava/util/List;

    iget p0, p0, Lj8/s0;->c:I

    invoke-static {v0, v1, p0, p1}, Lj8/u0;->c(Lorg/opencv/core/Mat;Ljava/util/List;II)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
