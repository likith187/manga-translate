.class Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastDelayRunnable"
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mMsg:I

.field final synthetic this$0:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->this$0:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "COUIStatusBarResponseUtil"

    const-string v0, "lost mContextRef , failed to execute mBroadcastDelayRunnable"

    invoke-static {p0, v0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->mMsg:I

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->this$0:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-static {p0, v0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->access$000(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->this$0:Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;

    invoke-static {v1, v0}, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;->access$100(Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    :goto_0
    return-void
.end method

.method public setMsg(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/statusbar/COUIStatusBarResponseUtil$BroadcastDelayRunnable;->mMsg:I

    return-void
.end method
