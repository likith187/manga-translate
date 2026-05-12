.class Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$1;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;
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


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)F
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->getVisualProgress()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$1;->getValue(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;F)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$000(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;F)V

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$100(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$1;->setValue(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;F)V

    return-void
.end method
