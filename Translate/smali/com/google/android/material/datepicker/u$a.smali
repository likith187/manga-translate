.class Lcom/google/android/material/datepicker/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/u;->g(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/datepicker/u;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/u;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/u$a;->b:Lcom/google/android/material/datepicker/u;

    iput p2, p0, Lcom/google/android/material/datepicker/u$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/google/android/material/datepicker/u$a;->a:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/u$a;->b:Lcom/google/android/material/datepicker/u;

    invoke-static {v0}, Lcom/google/android/material/datepicker/u;->f(Lcom/google/android/material/datepicker/u;)Lcom/google/android/material/datepicker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/j;->y()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->b:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/Month;->b(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/u$a;->b:Lcom/google/android/material/datepicker/u;

    invoke-static {v0}, Lcom/google/android/material/datepicker/u;->f(Lcom/google/android/material/datepicker/u;)Lcom/google/android/material/datepicker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/j;->w()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->f(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/u$a;->b:Lcom/google/android/material/datepicker/u;

    invoke-static {v0}, Lcom/google/android/material/datepicker/u;->f(Lcom/google/android/material/datepicker/u;)Lcom/google/android/material/datepicker/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/j;->F(Lcom/google/android/material/datepicker/Month;)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/u$a;->b:Lcom/google/android/material/datepicker/u;

    invoke-static {p0}, Lcom/google/android/material/datepicker/u;->f(Lcom/google/android/material/datepicker/u;)Lcom/google/android/material/datepicker/j;

    move-result-object p0

    sget-object p1, Lcom/google/android/material/datepicker/j$l;->DAY:Lcom/google/android/material/datepicker/j$l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/j;->G(Lcom/google/android/material/datepicker/j$l;)V

    return-void
.end method
