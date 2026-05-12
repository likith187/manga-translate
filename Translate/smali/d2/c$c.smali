.class public final Ld2/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/c;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld2/c;


# direct methods
.method constructor <init>(Ld2/c;)V
    .locals 0

    iput-object p1, p0, Ld2/c$c;->a:Ld2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "GuideManager"

    const-string v0, "ServiceConnection onBindingDied"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "GuideManager"

    iget-object p0, p0, Ld2/c$c;->a:Ld2/c;

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, p1, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/coloros/translate/engine/ITranServiceBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/translate/engine/ITranServiceBinder;

    move-result-object p2

    invoke-static {p0, p2}, Ld2/c;->d(Ld2/c;Lcom/coloros/translate/engine/ITranServiceBinder;)V

    invoke-static {p0}, Ld2/c;->c(Ld2/c;)Lcom/coloros/translate/engine/ITranServiceBinder;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/coloros/translate/engine/ITranServiceBinder;->isDownloadOfflinePackage()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p0}, Ld2/c;->e(Ld2/c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ld2/c;->l()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "GuideManager"

    const-string v0, "onServiceDisconnected"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
