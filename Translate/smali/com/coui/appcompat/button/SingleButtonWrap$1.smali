.class Lcom/coui/appcompat/button/SingleButtonWrap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/button/SingleButtonWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/button/SingleButtonWrap;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/button/SingleButtonWrap;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap$1;->this$0:Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap$1;->this$0:Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-static {v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->access$000(Lcom/coui/appcompat/button/SingleButtonWrap;)Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap$1;->this$0:Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-static {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->access$000(Lcom/coui/appcompat/button/SingleButtonWrap;)Lcom/coui/appcompat/button/COUIButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
