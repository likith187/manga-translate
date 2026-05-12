.class Lcom/google/android/material/datepicker/RangeDateSelector$a;
.super Lcom/google/android/material/datepicker/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/RangeDateSelector;->x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/p;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic l:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic m:Lcom/google/android/material/textfield/TextInputLayout;

.field final synthetic n:Lcom/google/android/material/datepicker/p;

.field final synthetic o:Lcom/google/android/material/datepicker/RangeDateSelector;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->o:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object p6, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->l:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p7, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->m:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p8, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->n:Lcom/google/android/material/datepicker/p;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/e;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->o:Lcom/google/android/material/datepicker/RangeDateSelector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/RangeDateSelector;->a(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->o:Lcom/google/android/material/datepicker/RangeDateSelector;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->l:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->m:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->n:Lcom/google/android/material/datepicker/p;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/material/datepicker/RangeDateSelector;->b(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/p;)V

    return-void
.end method

.method g(Ljava/lang/Long;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->o:Lcom/google/android/material/datepicker/RangeDateSelector;

    invoke-static {v0, p1}, Lcom/google/android/material/datepicker/RangeDateSelector;->a(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object p1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->o:Lcom/google/android/material/datepicker/RangeDateSelector;

    iget-object v0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->l:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->m:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/datepicker/RangeDateSelector$a;->n:Lcom/google/android/material/datepicker/p;

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/material/datepicker/RangeDateSelector;->b(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/p;)V

    return-void
.end method
