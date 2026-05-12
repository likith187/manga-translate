.class public final Lcom/oplus/vfxsdk/common/Animator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/c;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/common/Animator$a;,
        Lcom/oplus/vfxsdk/common/Animator$b;,
        Lcom/oplus/vfxsdk/common/Animator$c;,
        Lcom/oplus/vfxsdk/common/Animator$d;,
        Lcom/oplus/vfxsdk/common/Animator$e;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/vfxsdk/common/Animator$d;

.field public static final TAG:Ljava/lang/String; = "VFX:Animator"


# instance fields
.field private final coeExpressions:Lcom/oplus/vfxsdk/common/k;

.field private final data:Lcom/oplus/vfxsdk/common/AnimatorValue;

.field private final frameCb:Lcom/oplus/vfxsdk/common/Animator$e;

.field private final iLinkProxy:Ld8/b;

.field private isAnimEnd:Z

.field private isPlayMainLooper:Z

.field private mAnimEndListener:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a;"
        }
    .end annotation
.end field

.field private mAnimEndListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/vfxsdk/common/c;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/common/Animator$c;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimMode:Lcom/oplus/vfxsdk/common/Animator$a;

.field private mAnimSpeed:F

.field private mAnimStartListener:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a;"
        }
    .end annotation
.end field

.field private mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

.field private mAnimStatusChanged:Z

.field private mAnimUpdateListener:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field

.field private mCurrTime:D

.field private mDirection:I

.field private mEndTime:D

.field private mPlayToDirty:Z

.field private mPlayToTime:D

.field private mStartTime:D

.field private mSyncPreTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/common/Animator$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/common/Animator$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/common/Animator;->Companion:Lcom/oplus/vfxsdk/common/Animator$d;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/vfxsdk/common/AnimatorValue;Lcom/oplus/vfxsdk/common/k;Ld8/b;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coeExpressions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->data:Lcom/oplus/vfxsdk/common/AnimatorValue;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/Animator;->coeExpressions:Lcom/oplus/vfxsdk/common/k;

    iput-object p3, p0, Lcom/oplus/vfxsdk/common/Animator;->iLinkProxy:Ld8/b;

    const-wide p1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 3
    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mStartTime:D

    const-wide/16 p1, 0x1

    .line 4
    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mEndTime:D

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimSpeed:F

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 7
    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mSyncPreTime:D

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mDirection:I

    .line 9
    sget-object p2, Lcom/oplus/vfxsdk/common/Animator$a;->ONCE:Lcom/oplus/vfxsdk/common/Animator$a;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimMode:Lcom/oplus/vfxsdk/common/Animator$a;

    .line 10
    sget-object p2, Lcom/oplus/vfxsdk/common/Animator$b;->Pause:Lcom/oplus/vfxsdk/common/Animator$b;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    .line 11
    iput-boolean p1, p0, Lcom/oplus/vfxsdk/common/Animator;->isPlayMainLooper:Z

    .line 12
    new-instance p1, Lcom/oplus/vfxsdk/common/Animator$e;

    invoke-direct {p1, p0}, Lcom/oplus/vfxsdk/common/Animator$e;-><init>(Lcom/oplus/vfxsdk/common/Animator;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->frameCb:Lcom/oplus/vfxsdk/common/Animator$e;

    .line 13
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimEndListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/vfxsdk/common/AnimatorValue;Lcom/oplus/vfxsdk/common/k;Ld8/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/common/Animator;-><init>(Lcom/oplus/vfxsdk/common/AnimatorValue;Lcom/oplus/vfxsdk/common/k;Ld8/b;)V

    return-void
.end method

.method public static final synthetic access$frameUpdate(Lcom/oplus/vfxsdk/common/Animator;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/common/Animator;->frameUpdate(D)V

    return-void
.end method

.method private final addAnimLine(Lcom/oplus/vfxsdk/common/AnimLine;)V
    .locals 5

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/AnimLine;->getAnimKeys()[Lcom/oplus/vfxsdk/common/r;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/oplus/vfxsdk/common/Animator$c;

    invoke-direct {v0, p0, p1}, Lcom/oplus/vfxsdk/common/Animator$c;-><init>(Lcom/oplus/vfxsdk/common/Animator;Lcom/oplus/vfxsdk/common/AnimLine;)V

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator$c;->f()F

    move-result p1

    float-to-double v1, p1

    iget-wide v3, p0, Lcom/oplus/vfxsdk/common/Animator;->mStartTime:D

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator$c;->f()F

    move-result p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/oplus/vfxsdk/common/Animator;->mStartTime:D

    :cond_1
    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator$c;->e()F

    move-result p1

    float-to-double v1, p1

    iget-wide v3, p0, Lcom/oplus/vfxsdk/common/Animator;->mEndTime:D

    cmpl-double p1, v1, v3

    if-lez p1, :cond_2

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator$c;->e()F

    move-result p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/oplus/vfxsdk/common/Animator;->mEndTime:D

    :cond_2
    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final clampValue(DDD)D
    .locals 0

    cmpl-double p0, p1, p5

    if-lez p0, :cond_0

    return-wide p5

    :cond_0
    cmpg-double p0, p1, p3

    if-gez p0, :cond_1

    return-wide p3

    :cond_1
    return-wide p1
.end method

.method private final frameUpdate(D)V
    .locals 13

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mSyncPreTime:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mSyncPreTime:D

    :cond_0
    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mSyncPreTime:D

    sub-double v0, p1, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mSyncPreTime:D

    :cond_1
    iget-boolean v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatusChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    sget-object v4, Lcom/oplus/vfxsdk/common/Animator$b;->Play:Lcom/oplus/vfxsdk/common/Animator$b;

    if-ne v0, v4, :cond_2

    iput-boolean v1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatusChanged:Z

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStartListener:Lw8/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/h0;

    :cond_2
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/oplus/vfxsdk/common/Animator$c;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-wide v6, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/oplus/vfxsdk/common/Animator$c;->i(Lcom/oplus/vfxsdk/common/Animator$c;DZILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    sget-object v4, Lcom/oplus/vfxsdk/common/Animator$b;->Play:Lcom/oplus/vfxsdk/common/Animator$b;

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimUpdateListener:Lw8/l;

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/h0;

    :cond_4
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    if-ne v0, v4, :cond_5

    iget-wide v4, p0, Lcom/oplus/vfxsdk/common/Animator;->mSyncPreTime:D

    sub-double v4, p1, v4

    goto :goto_1

    :cond_5
    move-wide v4, v2

    :goto_1
    iget-wide v6, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    iget v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimSpeed:F

    float-to-double v8, v0

    mul-double/2addr v8, v4

    iget v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mDirection:I

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    iget-wide v8, p0, Lcom/oplus/vfxsdk/common/Animator;->mEndTime:D

    cmpl-double v10, v6, v8

    const/4 v11, 0x1

    if-gtz v10, :cond_6

    cmpg-double v10, v6, v2

    if-gez v10, :cond_c

    :cond_6
    iget-object v10, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimMode:Lcom/oplus/vfxsdk/common/Animator$a;

    sget-object v12, Lcom/oplus/vfxsdk/common/Animator$a;->LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

    if-ne v10, v12, :cond_7

    iput-wide v2, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    goto :goto_3

    :cond_7
    sget-object v12, Lcom/oplus/vfxsdk/common/Animator$a;->REVERSE_LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

    if-ne v10, v12, :cond_8

    neg-int v0, v0

    iput v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mDirection:I

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->ONCE:Lcom/oplus/vfxsdk/common/Animator$a;

    if-ne v10, v0, :cond_c

    cmpl-double v0, v6, v8

    if-lez v0, :cond_9

    move-wide v2, v8

    :cond_9
    iput-wide v2, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mPlayToDirty:Z

    if-ne v0, v11, :cond_a

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Pause:Lcom/oplus/vfxsdk/common/Animator$b;

    goto :goto_2

    :cond_a
    if-nez v0, :cond_b

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Stop:Lcom/oplus/vfxsdk/common/Animator$b;

    :goto_2
    iput-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    iput-boolean v11, p0, Lcom/oplus/vfxsdk/common/Animator;->isAnimEnd:Z

    goto :goto_3

    :cond_b
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_c
    :goto_3
    iget-boolean v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mPlayToDirty:Z

    if-eqz v0, :cond_d

    iget-wide v2, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    iget-wide v6, p0, Lcom/oplus/vfxsdk/common/Animator;->mPlayToTime:D

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimSpeed:F

    float-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_d

    iput-boolean v1, p0, Lcom/oplus/vfxsdk/common/Animator;->mPlayToDirty:Z

    iput v11, p0, Lcom/oplus/vfxsdk/common/Animator;->mDirection:I

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Pause:Lcom/oplus/vfxsdk/common/Animator$b;

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    iget-wide v2, p0, Lcom/oplus/vfxsdk/common/Animator;->mPlayToTime:D

    iput-wide v2, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    iput-boolean v11, p0, Lcom/oplus/vfxsdk/common/Animator;->isAnimEnd:Z

    :cond_d
    iget-boolean v0, p0, Lcom/oplus/vfxsdk/common/Animator;->isAnimEnd:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimEndListener:Lw8/a;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln8/h0;

    :cond_e
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimEndListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/vfxsdk/common/c;

    invoke-interface {v2}, Lcom/oplus/vfxsdk/common/c;->a()V

    goto :goto_4

    :cond_f
    iput-boolean v1, p0, Lcom/oplus/vfxsdk/common/Animator;->isAnimEnd:Z

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimMode:Lcom/oplus/vfxsdk/common/Animator$a;

    sget-object v1, Lcom/oplus/vfxsdk/common/Animator$a;->ONCE:Lcom/oplus/vfxsdk/common/Animator$a;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    sget-object v1, Lcom/oplus/vfxsdk/common/Animator$b;->Stop:Lcom/oplus/vfxsdk/common/Animator$b;

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/oplus/vfxsdk/common/Animator;->reset()V

    :cond_10
    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mSyncPreTime:D

    return-void
.end method

.method private final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mDirection:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mPlayToDirty:Z

    return-void
.end method


# virtual methods
.method public final addAnimEndListener(Lcom/oplus/vfxsdk/common/c;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimEndListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCoeExpressions()Lcom/oplus/vfxsdk/common/k;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->coeExpressions:Lcom/oplus/vfxsdk/common/k;

    return-object p0
.end method

.method public final getData()Lcom/oplus/vfxsdk/common/AnimatorValue;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->data:Lcom/oplus/vfxsdk/common/AnimatorValue;

    return-object p0
.end method

.method public final getILinkProxy()Ld8/b;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->iLinkProxy:Ld8/b;

    return-object p0
.end method

.method public final getMAnimMode()Lcom/oplus/vfxsdk/common/Animator$a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimMode:Lcom/oplus/vfxsdk/common/Animator$a;

    return-object p0
.end method

.method public final getMAnimStatus()Lcom/oplus/vfxsdk/common/Animator$b;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    return-object p0
.end method

.method public final init()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->data:Lcom/oplus/vfxsdk/common/AnimatorValue;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getAnimLines()[Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/oplus/vfxsdk/common/Animator;->addAnimLine(Lcom/oplus/vfxsdk/common/AnimLine;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->data:Lcom/oplus/vfxsdk/common/AnimatorValue;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/AnimatorValue;->getEventLine()Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/oplus/vfxsdk/common/Animator;->addAnimLine(Lcom/oplus/vfxsdk/common/AnimLine;)V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    return-void
.end method

.method public final isPause()Z
    .locals 1

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Pause:Lcom/oplus/vfxsdk/common/Animator$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPlay()Z
    .locals 1

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Play:Lcom/oplus/vfxsdk/common/Animator$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPlayMainLooper()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/Animator;->isPlayMainLooper:Z

    return p0
.end method

.method public onUpdate(D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/common/Animator;->frameUpdate(D)V

    return-void
.end method

.method public pause()V
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Pause:Lcom/oplus/vfxsdk/common/Animator$b;

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    return-void
.end method

.method public play()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    sget-object v1, Lcom/oplus/vfxsdk/common/Animator$b;->Play:Lcom/oplus/vfxsdk/common/Animator$b;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/vfxsdk/common/Animator;->frameCb:Lcom/oplus/vfxsdk/common/Animator$e;

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatusChanged:Z

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    return-void
.end method

.method public final play(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    sget-object v1, Lcom/oplus/vfxsdk/common/Animator$b;->Play:Lcom/oplus/vfxsdk/common/Animator$b;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->frameCb:Lcom/oplus/vfxsdk/common/Animator$e;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatusChanged:Z

    .line 8
    :cond_1
    iput-object v1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    return-void
.end method

.method public final playTo(D)V
    .locals 7

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/oplus/vfxsdk/common/Animator;->mEndTime:D

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/vfxsdk/common/Animator;->clampValue(DDD)D

    move-result-wide p1

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/common/Animator;->isPlayMainLooper:Z

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/common/Animator;->play(Z)V

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    cmpg-double v0, v0, p1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mDirection:I

    iput-boolean v1, p0, Lcom/oplus/vfxsdk/common/Animator;->mPlayToDirty:Z

    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mPlayToTime:D

    return-void
.end method

.method public final removeAnimEndListener(Lcom/oplus/vfxsdk/common/c;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimEndListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final restart(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/vfxsdk/common/Animator;->reset()V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/Animator;->play(Z)V

    return-void
.end method

.method public final seekNext()V
    .locals 5

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Animator;->pause()V

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    const-wide v2, 0x3f91111111111111L    # 0.016666666666666666

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    iget-wide v2, p0, Lcom/oplus/vfxsdk/common/Animator;->mEndTime:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    :cond_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Animator$c;

    iget-wide v2, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/oplus/vfxsdk/common/Animator$c;->h(DZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public seekTo(D)V
    .locals 3

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Play:Lcom/oplus/vfxsdk/common/Animator$b;

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    iput-wide p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mCurrTime:D

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Animator$c;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/oplus/vfxsdk/common/Animator$c;->h(DZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Animator;->pause()V

    return-void
.end method

.method public final seekToEnd()V
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/vfxsdk/common/Animator$c;

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/Animator$c;->e()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/vfxsdk/common/Animator;->seekTo(D)V

    return-void
.end method

.method public final setAnimEndListener(Lw8/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimEndListener:Lw8/a;

    return-void
.end method

.method public final setAnimKeyValue(Ljava/lang/String;IF)V
    .locals 2

    const-string v0, "lineName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Animator$c;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator$c;->d()Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/AnimLine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/oplus/vfxsdk/common/Animator$c;->j(IF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setAnimLinePop(ILe8/d;)V
    .locals 2

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Animator$c;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator$c;->d()Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/AnimLine;->hashCode()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/oplus/vfxsdk/common/Animator$c;->k(Le8/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setAnimLineUpdate(ILe8/e;)V
    .locals 2

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Animator$c;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator$c;->d()Lcom/oplus/vfxsdk/common/AnimLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/AnimLine;->hashCode()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/oplus/vfxsdk/common/Animator$c;->l(Le8/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setAnimStartListener(Lw8/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStartListener:Lw8/a;

    return-void
.end method

.method public final setAnimUpdateListener(Lw8/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimUpdateListener:Lw8/l;

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oplus/vfxsdk/common/Animator$a;->LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oplus/vfxsdk/common/Animator$a;->ONCE:Lcom/oplus/vfxsdk/common/Animator$a;

    :goto_0
    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimMode:Lcom/oplus/vfxsdk/common/Animator$a;

    return-void
.end method

.method public final setMAnimMode(Lcom/oplus/vfxsdk/common/Animator$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimMode:Lcom/oplus/vfxsdk/common/Animator$a;

    return-void
.end method

.method public final setMAnimStatus(Lcom/oplus/vfxsdk/common/Animator$b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    return-void
.end method

.method public final setPlayMainLooper(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/common/Animator;->isPlayMainLooper:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimSpeed:F

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Stop:Lcom/oplus/vfxsdk/common/Animator$b;

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    invoke-direct {p0}, Lcom/oplus/vfxsdk/common/Animator;->reset()V

    return-void
.end method

.method public final switchAnimIndex(I)V
    .locals 2

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$b;->Play:Lcom/oplus/vfxsdk/common/Animator$b;

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimStatus:Lcom/oplus/vfxsdk/common/Animator$b;

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator;->mAnimLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Animator$c;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/common/Animator$c;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Animator;->pause()V

    return-void
.end method
