.class public final Lcom/oplus/vfxsdk/rsview/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/rsview/g;->j(Landroid/view/View;)Lcom/oplus/vfxsdk/rsview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/rsview/g;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/rsview/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/g$c;->a:Lcom/oplus/vfxsdk/rsview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    const-string p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "COE_LOGGER"

    const-string p1, "COE:ShadowDrawable=>Host onViewAttachedToWindow"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "COE_LOGGER"

    const-string v0, "COE:ShadowDrawable=>Host onViewDetachedFromWindow"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/g$c;->a:Lcom/oplus/vfxsdk/rsview/g;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->k()Lcom/oplus/vfxsdk/rsview/g;

    return-void
.end method
