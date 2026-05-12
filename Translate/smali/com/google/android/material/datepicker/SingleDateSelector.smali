.class public Lcom/google/android/material/datepicker/SingleDateSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/DateSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/DateSelector<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/SingleDateSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/Long;

.field private c:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/SingleDateSelector$b;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/SingleDateSelector$b;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/SingleDateSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/SingleDateSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/datepicker/SingleDateSelector;->d()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->a:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    return-object p1
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public B(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    if-nez p0, :cond_0

    sget p0, Lcom/google/android/material/R$string;->mtrl_picker_date_header_unselected:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/h;->m(J)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_date_header_selected:I

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public D(Landroid/content/Context;)I
    .locals 1

    sget p0, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    const-class v0, Lcom/google/android/material/datepicker/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Li4/b;->d(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public G()Ljava/util/Collection;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public N()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public X()Ljava/util/Collection;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public bridge synthetic a0()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/SingleDateSelector;->e()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    if-nez p0, :cond_0

    sget p0, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection_none:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/h;->m(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection:I

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q0(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/p;)Landroid/view/View;
    .locals 9

    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_text_input_date:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$id;->mtrl_picker_text_input_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isDateInputKeyboardMissingSeparatorCharacters()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setInputType(I)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->c:Ljava/text/SimpleDateFormat;

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    move-object v4, p3

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/material/datepicker/t;->f()Ljava/text/SimpleDateFormat;

    move-result-object p3

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p3

    :goto_2
    move-object v3, p3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, v4}, Lcom/google/android/material/datepicker/t;->g(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :goto_3
    invoke-virtual {v8, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->b:Ljava/lang/Long;

    if-eqz p3, :cond_4

    invoke-virtual {v4, p3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance p3, Lcom/google/android/material/datepicker/SingleDateSelector$a;

    move-object v1, p3

    move-object v2, p0

    move-object v5, v8

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/material/datepicker/SingleDateSelector$a;-><init>(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/p;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    filled-new-array {p2}, [Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/datepicker/DateSelector;->v0([Landroid/widget/EditText;)V

    return-object p1
.end method
