.class Lcom/coui/appcompat/picker/COUITimePicker$Format;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUITimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Format"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/picker/COUITimePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUITimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {v0, p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$700(Lcom/coui/appcompat/picker/COUITimePicker;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$800(Lcom/coui/appcompat/picker/COUITimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUITimePicker;->access$900(Lcom/coui/appcompat/picker/COUITimePicker;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$1000(Lcom/coui/appcompat/picker/COUITimePicker;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUITimePicker;->access$1100(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->access$1000(Lcom/coui/appcompat/picker/COUITimePicker;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMMdd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUITimePicker;->access$1200(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->access$1300(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/picker/COUITimePicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUITimePicker;->access$1300(Lcom/coui/appcompat/picker/COUITimePicker;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const p0, 0x8001a

    invoke-static {p1, v0, v1, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
