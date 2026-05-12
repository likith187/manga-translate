.class public final Lcom/coloros/translate/screen/translate/engine/picker/e$b$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/translate/engine/picker/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field final synthetic c:Lcom/coloros/translate/screen/translate/engine/picker/e$b;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/screen/translate/engine/picker/e$b;Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$b;->c:Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$b;->a:Landroid/view/View;

    sget p1, Lcom/coloros/translate/screen/R$id;->language_type:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$b;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$b;->c:Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$b;->c:Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->f:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->e(Lcom/coloros/translate/screen/translate/engine/picker/e;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/coloros/translate/screen/R$string;->language_source:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b$b;->c:Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->f:Lcom/coloros/translate/screen/translate/engine/picker/e;

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->e(Lcom/coloros/translate/screen/translate/engine/picker/e;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/coloros/translate/screen/R$string;->language_target:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
