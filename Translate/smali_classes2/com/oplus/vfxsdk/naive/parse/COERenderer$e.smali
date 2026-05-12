.class public final Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/e;


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

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le8/e$a;->a(Le8/e;Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [F

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "builtin_translate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$getLayout$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F

    move-result-object p1

    aget v0, p2, v2

    aput v0, p1, v2

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$getLayout$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F

    move-result-object p1

    aget p2, p2, v1

    aput p2, p1, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "builtin_scale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$getScale$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F

    move-result-object p1

    aget v0, p2, v2

    aput v0, p1, v2

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$getScale$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F

    move-result-object p1

    aget p2, p2, v1

    aput p2, p1, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "builtin_rotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$getRotation$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F

    move-result-object p1

    aget v0, p2, v2

    aput v0, p1, v2

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$getRotation$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F

    move-result-object p1

    aget p2, p2, v1

    aput p2, p1, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "builtin_layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$getLayout$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F

    move-result-object p1

    aget v0, p2, v2

    const/4 v2, 0x2

    aput v0, p1, v2

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$getLayout$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F

    move-result-object p1

    const/4 v0, 0x3

    aget p2, p2, v1

    aput p2, p1, v0

    :goto_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->access$updateTransform(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb79913a -> :sswitch_3
        -0x79af09 -> :sswitch_2
        0x210cb22e -> :sswitch_1
        0x38c38832 -> :sswitch_0
    .end sparse-switch
.end method
