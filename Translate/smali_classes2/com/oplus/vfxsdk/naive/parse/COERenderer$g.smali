.class public final Lcom/oplus/vfxsdk/naive/parse/COERenderer$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/parse/COERenderer;->initRenderPass()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/naive/coe/engine/Pass;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$g;->a:Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

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
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$g;->a:Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
