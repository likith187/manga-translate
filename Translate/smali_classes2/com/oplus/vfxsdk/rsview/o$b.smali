.class public final Lcom/oplus/vfxsdk/rsview/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/rsview/o;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/common/o;

.field final synthetic b:Lcom/oplus/vfxsdk/rsview/o;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/common/o;Lcom/oplus/vfxsdk/rsview/o;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/o$b;->a:Lcom/oplus/vfxsdk/common/o;

    iput-object p2, p0, Lcom/oplus/vfxsdk/rsview/o$b;->b:Lcom/oplus/vfxsdk/rsview/o;

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
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/o$b;->a:Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->f()Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Vec2:Lcom/oplus/vfxsdk/common/u;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/o$b;->a:Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->f()Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Vec3:Lcom/oplus/vfxsdk/common/u;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/o$b;->a:Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->f()Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Vec4:Lcom/oplus/vfxsdk/common/u;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/o$b;->a:Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->f()Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Color:Lcom/oplus/vfxsdk/common/u;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/o$b;->b:Lcom/oplus/vfxsdk/rsview/o;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/rsview/o;->a0(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/o$b;->b:Lcom/oplus/vfxsdk/rsview/o;

    new-instance v0, Lkotlin/jvm/internal/g0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/g0;-><init>(I)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/g0;->a(Ljava/lang/Object;)V

    check-cast p2, [F

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {v1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lkotlin/jvm/internal/g0;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/g0;->c()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lkotlin/jvm/internal/g0;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/rsview/o;->a0(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
