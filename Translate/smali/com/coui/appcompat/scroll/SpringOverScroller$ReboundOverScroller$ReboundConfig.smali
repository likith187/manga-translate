.class Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReboundConfig"
.end annotation


# instance fields
.field mFriction:D

.field mTension:D


# direct methods
.method constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    double-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->frictionFromOrigamiValue(F)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    double-to-float p1, p3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->tensionFromOrigamiValue(F)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    return-void
.end method

.method private frictionFromOrigamiValue(F)F
    .locals 1

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x41000000    # 8.0f

    sub-float/2addr p1, p0

    const/high16 p0, 0x40400000    # 3.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x41c80000    # 25.0f

    add-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method private tensionFromOrigamiValue(F)D
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x41f00000    # 30.0f

    sub-float/2addr p1, p0

    const p0, 0x4067ae14    # 3.62f

    mul-float/2addr p1, p0

    const/high16 p0, 0x43420000    # 194.0f

    add-float/2addr p1, p0

    float-to-double p0, p1

    :goto_0
    return-wide p0
.end method


# virtual methods
.method setFriction(D)V
    .locals 0

    double-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->frictionFromOrigamiValue(F)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    return-void
.end method

.method setTension(D)V
    .locals 0

    double-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->tensionFromOrigamiValue(F)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    return-void
.end method
