.class Lcom/coui/appcompat/picker/COUILunarDatePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/picker/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$000(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {v2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {v4}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$200(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object p1

    invoke-virtual {p1, v5, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->change(III)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$300(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object p1

    invoke-virtual {p1, v3, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->change(III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$400(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object p1

    invoke-virtual {p1, v1, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->change(III)V

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/picker/COUILunarDatePicker;)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$500(Lcom/coui/appcompat/picker/COUILunarDatePicker;Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$600(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$700(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/picker/COUILunarDatePicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUILunarDatePicker;->access$800(Lcom/coui/appcompat/picker/COUILunarDatePicker;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
