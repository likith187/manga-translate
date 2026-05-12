.class public final Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$registerFoldObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->registerFoldObserver(Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-object p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->INSTANCE:Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;

    invoke-static {}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->access$getAppContext$p()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "appContext"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oplus_system_folding_mode"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->setFoldStatus(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FoldSettings.onChange="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->getFoldStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FoldSettingsHelper"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->access$getFoldObservers$p()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;

    sget-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->INSTANCE:Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->getFoldStatus()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;->observe(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
