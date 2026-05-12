.class Lcom/coui/appcompat/picker/COUITimePicker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/picker/COUITimePicker;->getTimePicker()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/picker/COUITimePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUITimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .locals 3

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$300(Lcom/coui/appcompat/picker/COUITimePicker;)Z

    move-result p2

    const/4 p3, 0x1

    const/16 v0, 0xb

    const/16 v1, 0xc

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$000(Lcom/coui/appcompat/picker/COUITimePicker;)I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$000(Lcom/coui/appcompat/picker/COUITimePicker;)I

    move-result p2

    if-ne p2, p3, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p2

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/util/Calendar;->set(II)V

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$300(Lcom/coui/appcompat/picker/COUITimePicker;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$000(Lcom/coui/appcompat/picker/COUITimePicker;)I

    move-result p2

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/coui/appcompat/picker/COUITimePicker;->access$002(Lcom/coui/appcompat/picker/COUITimePicker;I)I

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$400(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUINumberPicker;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$000(Lcom/coui/appcompat/picker/COUITimePicker;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/picker/COUINumberPicker;->setValue(I)V

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$200(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$200(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$3;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_5
    return-void
.end method
