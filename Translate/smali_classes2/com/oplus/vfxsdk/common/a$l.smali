.class final Lcom/oplus/vfxsdk/common/a$l;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/a;->G(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $time:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/a$l;->$time:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a$l;->invoke(Lcom/oplus/vfxsdk/common/Animator;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/vfxsdk/common/Animator;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p0, p0, Lcom/oplus/vfxsdk/common/a$l;->$time:F

    float-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/vfxsdk/common/Animator;->seekTo(D)V

    return-void
.end method
