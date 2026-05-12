.class Lcom/coui/appcompat/scroll/SpringOverScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/scroll/SpringOverScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$000(Lcom/coui/appcompat/scroll/SpringOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$000(Lcom/coui/appcompat/scroll/SpringOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$100(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;J)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$200(Lcom/coui/appcompat/scroll/SpringOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$200(Lcom/coui/appcompat/scroll/SpringOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$100(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;J)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$400(Lcom/coui/appcompat/scroll/SpringOverScroller;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$302(Lcom/coui/appcompat/scroll/SpringOverScroller;J)J

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {v0, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$402(Lcom/coui/appcompat/scroll/SpringOverScroller;J)J

    iget-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$502(Lcom/coui/appcompat/scroll/SpringOverScroller;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->this$0:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-static {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$600(Lcom/coui/appcompat/scroll/SpringOverScroller;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2
    return-void
.end method
