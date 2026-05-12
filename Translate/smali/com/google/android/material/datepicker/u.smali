.class Lcom/google/android/material/datepicker/u;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/u$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/datepicker/j;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/j;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/j;

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/datepicker/u;)Lcom/google/android/material/datepicker/j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/j;

    return-object p0
.end method

.method private g(I)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/u$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/u$a;-><init>(Lcom/google/android/material/datepicker/u;I)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/j;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/j;->w()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/CalendarConstraints;->o()I

    move-result p0

    return p0
.end method

.method h(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/j;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/j;->w()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/datepicker/Month;->c:I

    sub-int/2addr p1, p0

    return p1
.end method

.method i(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/j;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/j;->w()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/CalendarConstraints;->n()Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/datepicker/Month;->c:I

    add-int/2addr p0, p1

    return p0
.end method

.method public j(Lcom/google/android/material/datepicker/u$b;I)V
    .locals 7

    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/u;->i(I)I

    move-result p2

    iget-object v0, p1, Lcom/google/android/material/datepicker/u$b;->a:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/google/android/material/datepicker/u$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/material/datepicker/h;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/j;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/j;->x()Lcom/google/android/material/datepicker/b;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/datepicker/t;->k()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, v0, Lcom/google/android/material/datepicker/b;->f:Lcom/google/android/material/datepicker/a;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/material/datepicker/b;->d:Lcom/google/android/material/datepicker/a;

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/j;

    invoke-virtual {v4}, Lcom/google/android/material/datepicker/j;->z()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/material/datepicker/DateSelector;->X()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p2, :cond_1

    iget-object v3, v0, Lcom/google/android/material/datepicker/b;->e:Lcom/google/android/material/datepicker/a;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/google/android/material/datepicker/u$b;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Lcom/google/android/material/datepicker/a;->d(Landroid/widget/TextView;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/u$b;->a:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/u;->g(I)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/u$b;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/google/android/material/R$layout;->mtrl_calendar_year:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance p1, Lcom/google/android/material/datepicker/u$b;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/u$b;-><init>(Landroid/widget/TextView;)V

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    check-cast p1, Lcom/google/android/material/datepicker/u$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/u;->j(Lcom/google/android/material/datepicker/u$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/u;->k(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/u$b;

    move-result-object p0

    return-object p0
.end method
