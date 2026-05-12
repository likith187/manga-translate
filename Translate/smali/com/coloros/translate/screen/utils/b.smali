.class public abstract Lcom/coloros/translate/screen/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez p1, :cond_0

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x18

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    aget p0, p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x318

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string p0, "screen_trans_shot_black_name"

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x18

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    :goto_0
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, 0xc000000

    or-int/2addr p0, p1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method
