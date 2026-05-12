.class public abstract Lcom/coloros/translate/screen/translate/business/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crop before, x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BitmapCropHelper"

    invoke-static {v5, v4}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/coloros/translate/screen/R$dimen;->translation_selector_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v5

    invoke-static {p0}, Lk2/b;->e(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lk2/b;->a()I

    move-result v7

    add-int/2addr v6, v7

    :cond_1
    invoke-static {}, Lk2/b;->b()I

    move-result v7

    if-ne v6, v7, :cond_2

    add-int/2addr v3, v5

    :cond_2
    iget v6, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    invoke-static {}, Lk2/b;->c()I

    move-result v7

    if-ne v6, v7, :cond_3

    add-int/2addr v2, v5

    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ne v6, v5, :cond_4

    add-int/2addr v2, v5

    const/4 v0, 0x0

    :cond_4
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lk2/b;->d(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, v5

    if-ne p1, p0, :cond_5

    sub-int/2addr v1, v5

    add-int/2addr v3, v5

    :cond_5
    add-int p0, v0, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-gt p0, p1, :cond_7

    add-int p0, v1, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-le p0, p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p2, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    return-object v4
.end method
