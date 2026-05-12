.class public Lj8/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj8/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;

.field b:Ljava/util/List;

.field c:Ljava/util/List;

.field d:Laa/e;


# direct methods
.method public constructor <init>([Laa/d;Laa/h;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Laa/e;

    iget-wide v1, p2, Laa/h;->a:D

    double-to-int v1, v1

    iget-wide v2, p2, Laa/h;->b:D

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Laa/e;-><init>(IIII)V

    invoke-static {p1, v0}, Lk8/e;->k(Ljava/util/List;Laa/e;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lj8/m0$a;->a:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lj8/m0$a;->a(Laa/h;II)V

    return-void
.end method

.method private a(Laa/h;II)V
    .locals 1

    iget-object v0, p0, Lj8/m0$a;->a:Ljava/util/List;

    invoke-static {v0, p2}, Lk8/e;->e(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lj8/m0$a;->b:Ljava/util/List;

    invoke-static {p2, p3}, Lk8/e;->e(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {p2}, Lk8/e;->m(Ljava/util/List;)Laa/e;

    move-result-object p2

    invoke-static {p2, p1}, Lk8/e;->j(Laa/e;Laa/h;)Laa/e;

    move-result-object p1

    iput-object p1, p0, Lj8/m0$a;->d:Laa/e;

    return-void
.end method
