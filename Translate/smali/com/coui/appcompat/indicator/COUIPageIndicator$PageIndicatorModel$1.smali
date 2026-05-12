.class Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel$1;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/d;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel$1;->this$1:Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;)F
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->getCurrentPosition()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel$1;->getValue(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;F)V
    .locals 2

    float-to-double v0, p2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-float v0, p0

    sub-float/2addr p2, v0

    .line 3
    invoke-static {p1, p0, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;->access$100(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;IF)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel$1;->setValue(Lcom/coui/appcompat/indicator/COUIPageIndicator$PageIndicatorModel;F)V

    return-void
.end method
