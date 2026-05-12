.class public final synthetic Lk8/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>([BIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/g;->a:[B

    iput p2, p0, Lk8/g;->b:I

    iput p3, p0, Lk8/g;->c:I

    iput p4, p0, Lk8/g;->d:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lk8/g;->a:[B

    iget v1, p0, Lk8/g;->b:I

    iget v2, p0, Lk8/g;->c:I

    iget p0, p0, Lk8/g;->d:I

    check-cast p1, Laa/e;

    invoke-static {v0, v1, v2, p0, p1}, Lk8/i;->c([BIIILaa/e;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
