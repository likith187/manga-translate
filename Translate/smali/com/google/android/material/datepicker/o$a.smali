.class Lcom/google/android/material/datepicker/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/o;->j(Lcom/google/android/material/datepicker/o$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final synthetic b:Lcom/google/android/material/datepicker/o;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/o;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/o$a;->b:Lcom/google/android/material/datepicker/o;

    iput-object p2, p0, Lcom/google/android/material/datepicker/o$a;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/datepicker/o$a;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/n;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/n;->r(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/o$a;->b:Lcom/google/android/material/datepicker/o;

    invoke-static {p1}, Lcom/google/android/material/datepicker/o;->f(Lcom/google/android/material/datepicker/o;)Lcom/google/android/material/datepicker/j$m;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/o$a;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/n;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/google/android/material/datepicker/n;->d(I)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/material/datepicker/j$m;->a(J)V

    :cond_0
    return-void
.end method
