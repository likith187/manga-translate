.class final Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/parse/COERenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;FFLh8/a;Lcom/oplus/vfxsdk/common/COEData;IZLd8/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

.field final synthetic this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;->$engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;->invoke(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anim"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;->$engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-direct {v0, v1, p1, v2}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$a;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V

    invoke-virtual {p2, v0}, Lcom/oplus/vfxsdk/common/Animator;->setAnimStartListener(Lw8/a;)V

    .line 3
    new-instance v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$b;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;->this$0:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;->$engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-direct {v0, v1, p1, p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b$b;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V

    invoke-virtual {p2, v0}, Lcom/oplus/vfxsdk/common/Animator;->setAnimEndListener(Lw8/a;)V

    return-void
.end method
