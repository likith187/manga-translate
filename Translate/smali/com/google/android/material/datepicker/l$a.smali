.class Lcom/google/android/material/datepicker/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/l;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/l$a;->a:Lcom/google/android/material/datepicker/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/datepicker/l$a;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->o(Lcom/google/android/material/datepicker/l;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/l$a;->a:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/l$a;->a:Lcom/google/android/material/datepicker/l;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->z()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method
