.class Lcom/coui/appcompat/tooltips/COUIToolTips$1;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;
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
.field final synthetic this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Float;)F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$000(Lcom/coui/appcompat/tooltips/COUIToolTips;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->getValue(Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Float;F)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$100(Lcom/coui/appcompat/tooltips/COUIToolTips;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips$1;->setValue(Ljava/lang/Float;F)V

    return-void
.end method
