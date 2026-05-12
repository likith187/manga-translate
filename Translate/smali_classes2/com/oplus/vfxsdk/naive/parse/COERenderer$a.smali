.class public final Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/parse/COERenderer$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/common/o;

.field final synthetic b:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/common/o;Lcom/oplus/vfxsdk/naive/parse/COERenderer;I)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;->a:Lcom/oplus/vfxsdk/common/o;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;->b:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iput p3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;->c:I

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
    .locals 9

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;->a:Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->f()Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    sget-object v1, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;->b:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iget p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;->c:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameterCache(ILjava/lang/String;Z[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;->b:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iget p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;->c:I

    check-cast p2, [F

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget v6, p2, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array p2, v4, [Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameterCache(ILjava/lang/String;Z[Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
