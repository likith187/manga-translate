.class Lcom/coui/appcompat/poplist/SmallScreenAnimationController$2;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/SmallScreenAnimationController;
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
.method public getValue(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;)F
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->access$200(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController$2;->getValue(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;F)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->access$300(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController$2;->setValue(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;F)V

    return-void
.end method
