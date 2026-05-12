.class Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUILoadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;Lcom/coui/appcompat/progressbar/COUILoadProgress$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$AccessibilityEventSender;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
