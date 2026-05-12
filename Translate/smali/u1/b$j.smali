.class public final Lu1/b$j;
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
    .locals 1

    const-string p0, "arguments"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lkotlin/collections/o;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    const-string p0, "ONE"

    :goto_0
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p0, "ZERO"

    goto :goto_0

    :goto_1
    return-object p1

    :cond_1
    new-instance p0, Lu1/a;

    const-string p1, "not requires one argument"

    invoke-direct {p0, p1}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method
