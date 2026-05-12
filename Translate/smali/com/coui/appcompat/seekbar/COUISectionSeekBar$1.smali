.class Lcom/coui/appcompat/seekbar/COUISectionSeekBar$1;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/seekbar/COUISectionSeekBar;
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
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$1;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$000(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$1;->getValue(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;F)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$100(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$1;->setValue(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;F)V

    return-void
.end method
