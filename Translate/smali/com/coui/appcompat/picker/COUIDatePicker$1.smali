.class Lcom/coui/appcompat/picker/COUIDatePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/picker/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/picker/COUIDatePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUIDatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .locals 1

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$100(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$000(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$200(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$100(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$300(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$100(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$400(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$100(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;->set(II)V

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$100(Lcom/coui/appcompat/picker/COUIDatePicker;)Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$500(Lcom/coui/appcompat/picker/COUIDatePicker;Lcom/coui/appcompat/picker/COUIDatePicker$IncompleteDate;)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$600(Lcom/coui/appcompat/picker/COUIDatePicker;)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$700(Lcom/coui/appcompat/picker/COUIDatePicker;)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUIDatePicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUIDatePicker;->access$800(Lcom/coui/appcompat/picker/COUIDatePicker;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
