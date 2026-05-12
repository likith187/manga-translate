.class public final Lcom/coloros/translate/ui/simultaneous/history/h0$c;
.super Lcom/coloros/translate/ui/simultaneous/history/h0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/ui/simultaneous/history/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field final synthetic j:Lcom/coloros/translate/ui/simultaneous/history/h0;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$c;->j:Lcom/coloros/translate/ui/simultaneous/history/h0;

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/h0$d;-><init>(Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V

    sget p1, Lcom/coloros/translate/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$c;->h:Landroid/widget/TextView;

    sget p1, Lcom/coloros/translate/R$id;->tx_date_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$c;->i:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final g(Ln8/q;Lcom/coloros/translate/ui/simultaneous/history/k0;)V
    .locals 1

    const-string v0, "detailsInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p2}, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->d(Lcom/coloros/translate/ui/simultaneous/history/k0;)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$c;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0$c;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
