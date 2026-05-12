.class public final Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;->a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    const-string v1, "COE_LOGGER"

    if-eq p2, v0, :cond_4

    const v0, -0x56ac2893

    if-eq p2, v0, :cond_2

    const v0, 0x311a1d6c

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    const-string p1, "VFX:BaseTextureView=>screen is on"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;->a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getAutoStopWhenLock()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "VFX:BaseTextureView=> auto restart"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;->a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->start()Ln8/h0;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;->a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->refreshSurface()V

    goto :goto_1

    :cond_4
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "VFX:BaseTextureView=>screen is off"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;->a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getAutoStopWhenLock()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "VFX:BaseTextureView=> auto stop"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;->a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->stop()Ln8/h0;

    :cond_6
    :goto_1
    return-void
.end method
