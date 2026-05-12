.class public final Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;,
        Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$Companion;

.field public static final REQUEST_PERMISSION_CODE:I = 0x3e8


# instance fields
.field private final activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

.field private observer:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;

.field private final permissionNotGrantedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRationaleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->Companion:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/baseview/base/COUIBaseActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionNotGrantedList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionRequestList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionRationaleList:Ljava/util/ArrayList;

    return-void
.end method

.method private final checkAndRequestPermissions([Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lkotlin/collections/i;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-static {v1, v0}, Lr/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionNotGrantedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionNotGrantedList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private final checkPermissionRationale()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionNotGrantedList:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/o;->r0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-static {v2, v1}, Landroidx/core/app/a;->r(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionRationaleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionRequestList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private final showPermissionRationale()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    iget-object p0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionRationaleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->showPermissionRationale(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->getStatusType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/y0;->b(Landroid/view/Window;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-static {v0}, Lcom/coui/appcompat/baseview/util/SystemBarUtil;->setStatusBarTransparentAndBlackFont(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v1}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->isHomeAsUpEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->s(Z)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->getNeedFoldObserver()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->INSTANCE:Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;

    iget-object v1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->init(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->isSupportFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->getFoldStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->getOrientation(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    new-instance v1, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;

    iget-object v2, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;-><init>(Lcom/coui/appcompat/baseview/base/COUIBaseActivity;)V

    iput-object v1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->observer:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->registerFoldObserver(Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;)V

    :cond_3
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->getNeedFoldObserver()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->INSTANCE:Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->isSupportFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->observer:Lcom/coui/appcompat/baseview/delegate/ActivityDelegate$FoldModeObserver;

    if-nez p0, :cond_0

    const-string p0, "observer"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->unregisterFoldObserver(Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;)V

    :cond_1
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    array-length p1, p3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_1
    if-ge v0, v2, :cond_2

    aget v3, p3, v0

    if-nez v3, :cond_1

    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->permissionsGranted(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->permissionsNotGranted(Ljava/util/ArrayList;)V

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->showPermissionRationale()V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {v0}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->shouldRequestPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->checkAndRequestPermissions([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    invoke-virtual {p0}, Lcom/coui/appcompat/baseview/base/COUIBaseActivity;->permissionAllGranted()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->checkPermissionRationale()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->showPermissionRationale()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->activity:Lcom/coui/appcompat/baseview/base/COUIBaseActivity;

    iget-object p0, p0, Lcom/coui/appcompat/baseview/delegate/ActivityDelegate;->permissionRequestList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/16 v0, 0x3e8

    invoke-static {p1, p0, v0}, Landroidx/core/app/a;->o(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method
