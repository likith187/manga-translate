.class public final Lcom/coui/appcompat/tablayout/COUITabItem;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field final mCustomLayout:I

.field final mIcon:Landroid/graphics/drawable/Drawable;

.field final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUITabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/support/tablayout/R$styleable;->COUITabItem:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/h0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/h0;

    move-result-object p1

    .line 4
    sget p2, Lcom/support/tablayout/R$styleable;->COUITabItem_android_text:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/h0;->p(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabItem;->mText:Ljava/lang/CharSequence;

    .line 5
    sget p2, Lcom/support/tablayout/R$styleable;->COUITabItem_android_icon:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 6
    sget p2, Lcom/support/tablayout/R$styleable;->COUITabItem_android_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUITabItem;->mCustomLayout:I

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->y()V

    return-void
.end method
