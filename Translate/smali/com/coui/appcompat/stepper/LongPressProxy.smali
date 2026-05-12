.class Lcom/coui/appcompat/stepper/LongPressProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;
    }
.end annotation


# static fields
.field public static final CLICK_EVENT:I = 0x1

.field public static final LONG_CLICK_EVENT:I = 0x2


# instance fields
.field private mGestureDetectorCompat:Landroidx/core/view/i;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHandler:Landroid/os/Handler;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;-><init>(Lcom/coui/appcompat/stepper/LongPressProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/coui/appcompat/stepper/LongPressProxy$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/stepper/LongPressProxy$1;-><init>(Lcom/coui/appcompat/stepper/LongPressProxy;)V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance p1, Landroidx/core/view/i;

    iget-object p2, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, p2, v0}, Landroidx/core/view/i;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mGestureDetectorCompat:Landroidx/core/view/i;

    invoke-direct {p0}, Lcom/coui/appcompat/stepper/LongPressProxy;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/stepper/LongPressProxy;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/stepper/LongPressProxy;->lambda$init$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/coui/appcompat/stepper/LongPressProxy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/stepper/LongPressProxy;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/stepper/LongPressProxy;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mView:Landroid/view/View;

    return-object p0
.end method

.method private init()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mView:Landroid/view/View;

    new-instance v1, Lcom/coui/appcompat/stepper/d;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/stepper/d;-><init>(Lcom/coui/appcompat/stepper/LongPressProxy;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mGestureDetectorCompat:Landroidx/core/view/i;

    invoke-virtual {p1, p2}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return v1
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mView:Landroid/view/View;

    :cond_0
    iput-object v1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method
