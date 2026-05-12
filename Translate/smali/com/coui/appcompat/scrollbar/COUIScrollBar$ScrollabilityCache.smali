.class Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scrollbar/COUIScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final FADING:I = 0x2

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final OPAQUE:[F

.field private static final TRANSPARENT:[F


# instance fields
.field public final RUNNABLE_RETRY_MIN_TIME:I

.field public fadeStartTime:J

.field public host:Landroid/view/View;

.field public interpolatorValues:[F

.field public final scrollBarDefaultDelayBeforeFade:I

.field public final scrollBarFadeDuration:I

.field public final scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->OPAQUE:[F

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v3

    sput-object v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->TRANSPARENT:[F

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x32

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->RUNNABLE_RETRY_MIN_TIME:I

    new-instance p1, Landroid/graphics/Interpolator;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->state:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->scrollBarFadeDuration:I

    iput-object p2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->host:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->fadeStartTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    sget-object v2, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->OPAQUE:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    iget v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->scrollBarFadeDuration:I

    add-int/2addr v0, v2

    sget-object v2, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->TRANSPARENT:[F

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->state:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->host:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$ScrollabilityCache;->host:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
