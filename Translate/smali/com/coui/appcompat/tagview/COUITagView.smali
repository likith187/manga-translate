.class public final Lcom/coui/appcompat/tagview/COUITagView;
.super Lcom/coui/appcompat/tagview/COUITagBackgroundView;
.source "SourceFile"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private leftImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private style:I

.field private tagBackground:Lcom/coui/appcompat/tagview/COUITagBackgroundView;

.field private tagView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tagview/COUITagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tagview/COUITagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/coui/appcompat/tagview/COUITagView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    .line 7
    :goto_0
    iput v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->style:I

    .line 8
    invoke-virtual {p0}, Lcom/coui/appcompat/tagview/COUITagView;->init()V

    .line 9
    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    .line 10
    sget-object v1, Lcom/support/reddot/R$styleable;->COUITagView:[I

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "mContext!!.obtainStyledA\u2026,\n            0\n        )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget p3, Lcom/support/reddot/R$styleable;->COUITagView_couiTagViewLeftDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 13
    sget v0, Lcom/support/reddot/R$styleable;->COUITagView_couiTagViewLeftDrawableTint:I

    .line 14
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 15
    sget v1, Lcom/support/reddot/R$styleable;->COUITagView_couiDrawableTagViewImage:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 16
    sget v3, Lcom/support/reddot/R$styleable;->COUITagView_couiDrawableTagViewImageTint:I

    .line 17
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 18
    sget v4, Lcom/support/reddot/R$styleable;->COUITagView_couiTagViewText:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 19
    sget v5, Lcom/support/reddot/R$styleable;->COUITagView_couiTagViewTextColor:I

    .line 20
    iget-object v6, p0, Lcom/coui/appcompat/tagview/COUITagView;->mContext:Landroid/content/Context;

    sget v7, Lcom/support/appcompat/R$color;->coui_color_white:I

    invoke-static {v6, v7}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 21
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 22
    sget v6, Lcom/support/reddot/R$styleable;->COUITagView_couiTagViewTextSize:I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v7, Lcom/support/reddot/R$dimen;->coui_default_tag_textsize:I

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 24
    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 25
    const-string v6, "leftImageView"

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz p3, :cond_3

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_2
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 28
    :cond_3
    iget-object p3, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    if-nez p3, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p3, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    :goto_1
    const-string p3, "imageView"

    if-eqz v1, :cond_7

    if-eqz v3, :cond_5

    .line 30
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    invoke-static {p3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    invoke-static {p3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_8
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :goto_2
    const-string p3, "tagView"

    if-eqz v4, :cond_a

    .line 34
    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    if-nez v0, :cond_9

    invoke-static {p3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_9
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 35
    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    if-nez v0, :cond_b

    invoke-static {p3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_b
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    if-nez v0, :cond_c

    invoke-static {p3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v8

    :cond_c
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    if-nez p0, :cond_d

    invoke-static {p3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v8, p0

    :goto_4
    int-to-float p0, p1

    invoke-virtual {v8, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 38
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/support/reddot/R$layout;->coui_tag_view_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/reddot/R$id;->tagBackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "inflate.findViewById(R.id.tagBackground)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/coui/appcompat/tagview/COUITagBackgroundView;

    iput-object v1, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagBackground:Lcom/coui/appcompat/tagview/COUITagBackgroundView;

    sget v1, Lcom/support/reddot/R$id;->tagLeftImageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "inflate.findViewById(R.id.tagLeftImageView)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    sget v1, Lcom/support/reddot/R$id;->tagImageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "inflate.findViewById(R.id.tagImageView)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/support/reddot/R$id;->tagTextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate.findViewById(R.id.tagTextView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, "imageView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, "imageView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final setImageResoure(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, "imageView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->imageView:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final setLeftImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, "leftImageView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final setLeftImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, "leftImageView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final setLeftImageResoure(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, "leftImageView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->leftImageView:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final setTagText(Ljava/lang/String;)V
    .locals 3

    const-string v0, "tagText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, "tagView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setTagTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tagView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setTagTextSize(I)V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagView;->tagView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tagView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x0

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
