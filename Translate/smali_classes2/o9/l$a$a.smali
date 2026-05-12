.class final Lo9/l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)Z
    .locals 0

    const-string p0, "requestHeaders"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public b(ILjava/util/List;Z)Z
    .locals 0

    const-string p0, "responseHeaders"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public c(ILo9/b;)V
    .locals 0

    const-string p0, "errorCode"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(ILt9/f;IZ)Z
    .locals 0

    const-string p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long p0, p3

    invoke-interface {p2, p0, p1}, Lt9/f;->A(J)V

    const/4 p0, 0x1

    return p0
.end method
