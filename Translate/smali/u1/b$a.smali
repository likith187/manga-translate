.class public final Lu1/b$a;
.super Lv1/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv1/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/math/BigDecimal;
    .locals 2

    const-string p0, "arguments"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {p1}, Lkotlin/collections/o;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    return-object p0

    :cond_0
    new-instance p0, Lu1/a;

    const-string p1, "cos requires one argument"

    invoke-direct {p0, p1}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method
