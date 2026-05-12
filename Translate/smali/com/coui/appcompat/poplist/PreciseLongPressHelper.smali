.class public Lcom/coui/appcompat/poplist/PreciseLongPressHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;
    }
.end annotation


# instance fields
.field private mLastTouchDownXY:[F

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnPreciseLongClickListener:Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mTarget:Landroid/view/View;

.field private mTouchListenerTransfer:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mLastTouchDownXY:[F

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$1;-><init>(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PreciseLongPressHelper$2;-><init>(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mTarget:Landroid/view/View;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mOnPreciseLongClickListener:Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mTouchListenerTransfer:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)[F
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mLastTouchDownXY:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/PreciseLongPressHelper;)Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mOnPreciseLongClickListener:Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;

    return-object p0
.end method


# virtual methods
.method public setTouchListenerTransfer(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mTouchListenerTransfer:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setup()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mTarget:Landroid/view/View;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseLongPressHelper;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
