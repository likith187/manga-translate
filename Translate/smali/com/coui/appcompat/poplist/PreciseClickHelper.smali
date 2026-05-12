.class public Lcom/coui/appcompat/poplist/PreciseClickHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;
    }
.end annotation


# instance fields
.field private mLastTouchDownXY:[F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnPreciseClickListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mLastTouchDownXY:[F

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseClickHelper$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PreciseClickHelper$1;-><init>(Lcom/coui/appcompat/poplist/PreciseClickHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;-><init>(Lcom/coui/appcompat/poplist/PreciseClickHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mTarget:Landroid/view/View;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mOnPreciseClickListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/PreciseClickHelper;)[F
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mLastTouchDownXY:[F

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/PreciseClickHelper;)Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mOnPreciseClickListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-object p0
.end method


# virtual methods
.method getTargetView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mTarget:Landroid/view/View;

    return-object p0
.end method

.method public setup()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mTarget:Landroid/view/View;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public unSet()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
