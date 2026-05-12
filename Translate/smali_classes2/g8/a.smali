.class public final synthetic Lg8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;

.field public final synthetic b:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/a;->a:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;

    iput-object p2, p0, Lg8/a;->b:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg8/a;->a:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;

    iget-object p0, p0, Lg8/a;->b:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;

    invoke-static {v0, p0}, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;->a(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)V

    return-void
.end method
