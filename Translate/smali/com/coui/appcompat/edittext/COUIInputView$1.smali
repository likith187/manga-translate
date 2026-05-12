.class Lcom/coui/appcompat/edittext/COUIInputView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUIInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v3}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUIInputView;->getTitlePaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v3, v3, Lcom/coui/appcompat/edittext/COUIInputView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v4, v4, Lcom/coui/appcompat/edittext/COUIInputView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIInputView;->getEdittextPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->setMargin(Landroid/view/View;II)V

    return-void
.end method
