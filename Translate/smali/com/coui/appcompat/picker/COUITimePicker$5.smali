.class Lcom/coui/appcompat/picker/COUITimePicker$5;
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

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .locals 0

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$500(Lcom/coui/appcompat/picker/COUITimePicker;)Z

    move-result p2

    const/16 p3, 0xc

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p2}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUINumberPicker;->getValue()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$200(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$200(Lcom/coui/appcompat/picker/COUITimePicker;)Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$5;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->access$100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/coui/appcompat/picker/COUITimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    :cond_1
    return-void
.end method
