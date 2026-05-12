.class Lcom/coui/appcompat/picker/COUITimePicker$7;
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

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .locals 1

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$600(Lcom/coui/appcompat/picker/COUITimePicker;I)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result p1

    add-int/lit16 p1, p1, 0x76c

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$200(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$200(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$7;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
