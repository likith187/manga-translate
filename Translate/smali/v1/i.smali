.class public final Lv1/i;
.super Lv1/e;
.source "SourceFile"


# instance fields
.field private final a:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv1/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lv1/i;->a:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public a(Lv1/f;)Ljava/lang/Object;
    .locals 1

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lv1/f;->b(Lv1/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lv1/i;->a:Ljava/math/BigDecimal;

    return-object p0
.end method
