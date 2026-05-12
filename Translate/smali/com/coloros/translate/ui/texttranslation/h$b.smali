.class public final Lcom/coloros/translate/ui/texttranslation/h$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/ui/texttranslation/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field private final f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/coloros/translate/R$id;->ori_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h$b;->a:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/R$id;->result_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h$b;->b:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h$b;->c:Lcom/coui/appcompat/checkbox/COUICheckBox;

    sget v0, Lcom/coloros/translate/R$id;->ai_mark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/h$b;->f:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final b()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h$b;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final c()Lcom/coui/appcompat/checkbox/COUICheckBox;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h$b;->c:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-object p0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h$b;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h$b;->b:Landroid/widget/TextView;

    return-object p0
.end method
