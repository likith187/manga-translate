.class public final Lcom/oplus/vfxsdk/naive/parse/COERenderer$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/parse/COERenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;FFLh8/a;Lcom/oplus/vfxsdk/common/COEData;IZLd8/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$f;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    aget-object v1, p1, v0

    instance-of v2, v1, Ljava/lang/Float;

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v1, [F

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$f;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    aget-object v1, p1, v5

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, p1, v6

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    aget-object p1, p1, v0

    const-string v0, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [F

    invoke-static {p1}, Lkotlin/collections/i;->t([F)[Ljava/lang/Float;

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v6, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;Z[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$f;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    aget-object v1, p1, v5

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, p1, v6

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    aget-object p1, p1, v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v6, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;Z[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
