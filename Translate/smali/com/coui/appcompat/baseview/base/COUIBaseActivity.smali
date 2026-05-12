.class public abstract Lcom/coui/appcompat/baseview/base/COUIBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/baseview/delegate/ActivityConfig;


# instance fields
.field private activityDelegate:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getNeedFoldObserver()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getOrientation(I)I
.end method

.method public final getStatusBarView()Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/coui/appcompat/baseview/util/SystemBarUtil;->getStatusBarView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getStatusType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHomeAsUpEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;-><init>(Lcom/coui/appcompat/baseview/base/COUIBaseActivity;)V

    iput-object p1, p0, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->activityDelegate:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;

    invoke-virtual {p1}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->onCreate()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object p0, p0, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->activityDelegate:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;

    if-nez p0, :cond_0

    const-string p0, "activityDelegate"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->onDestroy()V

    return-void
.end method

.method public onFoldModeChange(I)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->activityDelegate:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;

    if-nez v0, :cond_0

    const-string v0, "activityDelegate"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object p0, p0, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->activityDelegate:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;

    if-nez p0, :cond_0

    const-string p0, "activityDelegate"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public permissionAllGranted()V
    .locals 0

    return-void
.end method

.method public permissionsGranted(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "permissionGrantedList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public permissionsNotGranted(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "permissionNotGrantedList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final requestRuntimePermissions([Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->activityDelegate:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;

    if-nez p0, :cond_0

    const-string p0, "activityDelegate"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method

.method public shouldRequestPermission()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showPermissionRationale(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "permissionRationaleList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
