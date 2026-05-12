.class public final Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;

.field public static final SYSTEM_FOLDING_MODE_CLOSE:I = 0x0

.field public static final SYSTEM_FOLDING_MODE_KEY:Ljava/lang/String; = "oplus_system_folding_mode"

.field public static final SYSTEM_FOLDING_MODE_OPEN:I = 0x1

.field public static final SYSTEM_FOLDING_MODE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FoldSettingsHelper"

.field private static appContext:Landroid/content/Context;

.field private static final foldObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static foldStatus:I

.field private static observer:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;-><init>()V

    sput-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->INSTANCE:Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;

    const/4 v0, -0x1

    sput v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldStatus:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldObservers:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppContext$p()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getFoldObservers$p()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldObservers:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final getFoldStatus()I
    .locals 0

    sget p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldStatus:I

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "context.applicationContext"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->appContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "appContext"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oplus_system_folding_mode"

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldStatus:I

    return-void
.end method

.method public final isSupportFoldScreen()Z
    .locals 1

    sget p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldStatus:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final registerFoldObserver(Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;)V
    .locals 3

    const-string p0, "observer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->observer:Landroid/database/ContentObserver;

    if-nez p0, :cond_1

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$registerFoldObserver$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$registerFoldObserver$1;-><init>(Landroid/os/Handler;)V

    sget-object p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->appContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "appContext"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oplus_system_folding_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sput-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->observer:Landroid/database/ContentObserver;

    :cond_1
    sget-object p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setFoldStatus(I)V
    .locals 0

    sput p1, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldStatus:I

    return-void
.end method

.method public final unregisterFoldObserver(Lcom/coui/appcompat/baseview/util/FoldSettingsHelper$FoldSettingsObserver;)V
    .locals 1

    const-string p0, "observer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->foldObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->observer:Landroid/database/ContentObserver;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "appContext"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, p1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    sput-object p1, Lcom/coui/appcompat/baseview/util/FoldSettingsHelper;->observer:Landroid/database/ContentObserver;

    :cond_2
    return-void
.end method
