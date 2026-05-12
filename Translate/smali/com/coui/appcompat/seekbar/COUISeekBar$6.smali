.class Lcom/coui/appcompat/seekbar/COUISeekBar$6;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    sget-object p1, Ld0/h$a;->L:Ld0/h$a;

    invoke-virtual {p2, p1}, Ld0/h;->b(Ld0/h$a;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, p1, v0, v1}, Ld0/h$g;->a(IFFF)Ld0/h$g;

    move-result-object p1

    invoke-virtual {p2, p1}, Ld0/h;->z0(Ld0/h$g;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$900(Lcom/coui/appcompat/seekbar/COUISeekBar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ld0/h;->A0(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$1000(Lcom/coui/appcompat/seekbar/COUISeekBar;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ld0/h;->H0(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Ld0/h;->a(I)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p0

    if-ge p1, p0, :cond_1

    const/16 p0, 0x1000

    invoke-virtual {p2, p0}, Ld0/h;->a(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/16 p1, 0x1000

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p2

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$1100(Lcom/coui/appcompat/seekbar/COUISeekBar;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2, v0, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(IZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$1000(Lcom/coui/appcompat/seekbar/COUISeekBar;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return p3

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p2

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$1100(Lcom/coui/appcompat/seekbar/COUISeekBar;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(IZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$6;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$1000(Lcom/coui/appcompat/seekbar/COUISeekBar;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return p3
.end method
