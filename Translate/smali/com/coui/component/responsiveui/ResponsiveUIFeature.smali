.class public final Lcom/coui/component/responsiveui/ResponsiveUIFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/component/responsiveui/IResponsiveUIFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;

.field private static final c:Z

.field private static final d:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroidx/lifecycle/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->Companion:Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ResponsiveUIFeature"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->c:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->a:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    iput-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->b:Landroidx/lifecycle/a0;

    .line 5
    invoke-static {}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->isSupportWindowFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->INSTANCE:Lcom/coui/component/responsiveui/status/WindowFeatureUtil;

    new-instance v1, Ls2/a;

    invoke-direct {v1, p0}, Ls2/a;-><init>(Lcom/coui/component/responsiveui/ResponsiveUIFeature;)V

    invoke-virtual {v0, p1, v1}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->trackWindowFeature(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->c:Z

    if-eqz v0, :cond_1

    .line 8
    const-string v0, "ResponsiveUIFeature"

    const-string v1, "[init.isSupportWindowFeature] false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature$2;

    invoke-direct {v0, p0}, Lcom/coui/component/responsiveui/ResponsiveUIFeature$2;-><init>(Lcom/coui/component/responsiveui/ResponsiveUIFeature;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;-><init>(Landroidx/activity/ComponentActivity;)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/component/responsiveui/ResponsiveUIFeature;Lcom/coui/component/responsiveui/status/WindowFeature;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->b(Lcom/coui/component/responsiveui/ResponsiveUIFeature;Lcom/coui/component/responsiveui/status/WindowFeature;)V

    return-void
.end method

.method public static final synthetic access$getActivityReference$p(Lcom/coui/component/responsiveui/ResponsiveUIFeature;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getFeatureMap$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final b(Lcom/coui/component/responsiveui/ResponsiveUIFeature;Lcom/coui/component/responsiveui/status/WindowFeature;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowFeature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->b:Landroidx/lifecycle/a0;

    invoke-direct {p0, v0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->c(Landroidx/lifecycle/a0;Ljava/lang/Object;)V

    return-void
.end method

.method private final c(Landroidx/lifecycle/a0;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final getFoldingState(Landroid/content/Context;)Lcom/coui/component/responsiveui/status/FoldingState;
    .locals 1

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->Companion:Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;

    invoke-virtual {v0, p0}, Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;->getFoldingState(Landroid/content/Context;)Lcom/coui/component/responsiveui/status/FoldingState;

    move-result-object p0

    return-object p0
.end method

.method public static final getOrCreate(Landroidx/activity/ComponentActivity;)Lcom/coui/component/responsiveui/IResponsiveUIFeature;
    .locals 1

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->Companion:Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;

    invoke-virtual {v0, p0}, Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;->getOrCreate(Landroidx/activity/ComponentActivity;)Lcom/coui/component/responsiveui/IResponsiveUIFeature;

    move-result-object p0

    return-object p0
.end method

.method public static final isSupportWindowFeature()Z
    .locals 1

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->Companion:Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIFeature$Companion;->isSupportWindowFeature()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getWindowFeatureLiveData()Landroidx/lifecycle/a0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/a0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->b:Landroidx/lifecycle/a0;

    return-object p0
.end method
