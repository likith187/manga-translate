.class Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->performFeedback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x131

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method
