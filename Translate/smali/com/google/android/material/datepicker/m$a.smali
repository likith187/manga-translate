.class Lcom/google/android/material/datepicker/m$a;
.super Lcom/google/android/material/datepicker/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/m;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/m;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/m$a;->a:Lcom/google/android/material/datepicker/m;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/m$a;->a:Lcom/google/android/material/datepicker/m;

    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/m$a;->a:Lcom/google/android/material/datepicker/m;

    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/p;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
