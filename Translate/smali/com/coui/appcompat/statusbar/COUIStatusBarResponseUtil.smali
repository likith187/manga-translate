.class public Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;,
        Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;
    }
.end annotation


# static fields
.field public static final DELAY:I = 0x3e8

.field private static final MSG_REGISTER:I = 0x0

.field private static final MSG_UNREGISTER:I = 0x1

.field private static final RECEIVER_EXPORTED:I = 0x2

.field private static final RECEIVER_NOT_EXPORTED:I = 0x4


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBroadcastDelayRunnable:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

.field private mContext:Landroid/content/Context;

.field private mDelay:I

.field private mH:Landroid/os/Handler;

.field private mIsRegistered:Z

.field private mStatusBarClickListener:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;

.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "COUIStatusBarResponseUtil"

    iput-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mDelay:I

    iput-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->initReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->unregisterRegister(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;)Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mStatusBarClickListener:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;

    return-object p0
.end method

.method private initReceiver(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mIsRegistered:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$1;-><init>(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;)V

    iput-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oplus.clicktop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/appcompat/view/COUICompatUtil;->getInstance()Lcom/coui/appcompat/view/COUICompatUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/view/COUICompatUtil;->getClickTopName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mIsRegistered:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterRegister(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mIsRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mIsRegistered:Z

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mH:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mBroadcastDelayRunnable:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mBroadcastDelayRunnable:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->setMsg(I)V

    iget-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mBroadcastDelayRunnable:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

    iget v2, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mH:Landroid/os/Handler;

    iput-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mBroadcastDelayRunnable:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mH:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mBroadcastDelayRunnable:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

    iget-object v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;-><init>(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mBroadcastDelayRunnable:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->setMsg(I)V

    iget-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mBroadcastDelayRunnable:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;

    iget p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "COUIStatusBarResponseUtil"

    const-string v0, "onResume call multiple times"

    invoke-static {p0, v0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDelay(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mDelay:I

    return-void
.end method

.method public setStatusBarClickListener(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->mStatusBarClickListener:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$StatusBarClickListener;

    return-void
.end method
