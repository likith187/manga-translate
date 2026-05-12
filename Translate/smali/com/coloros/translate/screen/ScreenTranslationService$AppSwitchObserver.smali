.class Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/ScreenTranslationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppSwitchObserver"
.end annotation


# instance fields
.field private final mNotSupportTagList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;->mNotSupportTagList:Ljava/util/HashSet;

    const-string p0, "com.tencent.av.ui.VideoInviteActivity"

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p0, "com.tencent.av.ui.AVActivity"

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p0, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p0, "com.android.incallui.OppoInCallActivity"

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .locals 2

    iget-object p1, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityEnter targetName is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenTranslationService"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;->mNotSupportTagList:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .locals 2

    iget-object p1, p1, Lcom/oplus/app/OplusAppExitInfo;->targetName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityExit targetName is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenTranslationService"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/ScreenTranslationService$AppSwitchObserver;->mNotSupportTagList:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .locals 1

    iget-object p0, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAppEnter app is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenTranslationService"

    invoke-static {v0, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.android.permissioncontroller"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    const-string p1, "com.oplus.screenshot"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .locals 1

    iget-object p0, p1, Lcom/oplus/app/OplusAppExitInfo;->targetName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAppExit app is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenTranslationService"

    invoke-static {v0, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.android.permissioncontroller"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    const-string p1, "com.oplus.screenshot"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
