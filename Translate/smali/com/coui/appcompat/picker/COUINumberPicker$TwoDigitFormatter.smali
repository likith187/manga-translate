.class Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mDecimalFormat:Landroid/icu/text/DecimalFormat;

.field mJavaFormatter:Ljava/util/Formatter;

.field final synthetic this$0:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    return-void
.end method

.method private init(Ljava/util/Locale;)V
    .locals 2

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->mJavaFormatter:Ljava/util/Formatter;

    new-instance p1, Landroid/icu/text/DecimalFormat;

    const-string v0, "00"

    invoke-direct {p1, v0}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TwoDigitFormatter;->mDecimalFormat:Landroid/icu/text/DecimalFormat;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
