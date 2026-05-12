.class Lcom/coui/appcompat/edittext/COUIInputView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->handleWithPassword()V
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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$7;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$7;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mInputType:I

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 p1, 0x91

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$7;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mInputType:I

    if-eq p2, p1, :cond_4

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    :goto_2
    return-void
.end method
