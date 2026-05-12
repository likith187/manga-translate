.class final Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tips/COUIMarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartScrollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tips/COUIMarqueeTextView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tips/COUIMarqueeTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;->this$0:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;->this$0:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->continueRoll()V

    return-void
.end method
