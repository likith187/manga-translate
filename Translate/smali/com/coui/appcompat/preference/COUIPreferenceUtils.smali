.class public Lcom/coui/appcompat/preference/COUIPreferenceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFALUT_RADIUS:I = 0xe

.field static final DELAY_TIME:I = 0x46

.field public static final ICON_SIZE_DP_LARGE:I = 0x32

.field public static final ICON_SIZE_DP_MEDIUM:I = 0x20

.field public static final ICON_SIZE_DP_MEDIUM_LARGE:I = 0x24

.field public static final ICON_SIZE_DP_SMALL:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindAssignmentView(Landroidx/preference/l;Ljava/lang/CharSequence;I)V
    .locals 1

    sget v0, Lcom/support/preference/R$id;->assignment:I

    invoke-virtual {p0, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bindView(Landroidx/preference/l;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindView(Landroidx/preference/l;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static bindView(Landroidx/preference/l;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 3

    .line 2
    sget v0, Lcom/support/preference/R$id;->coui_preference_widget_jump:I

    invoke-virtual {p0, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    const p1, 0x1020006

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    .line 7
    sget v0, Lcom/support/preference/R$id;->img_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_3
    :goto_1
    sget p1, Lcom/support/preference/R$id;->coui_statusText1:I

    invoke-virtual {p0, p1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_5
    :goto_2
    invoke-static {p0, p3, p4}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindAssignmentView(Landroidx/preference/l;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static setIconStyle(Landroidx/preference/l;Landroid/content/Context;IZIZ)V
    .locals 1

    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    if-eqz v0, :cond_3

    if-eqz p5, :cond_0

    check-cast p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setHasBorder(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setBorderRectRadius(I)V

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setType(I)V

    goto :goto_1

    :cond_0
    check-cast p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-eqz p5, :cond_2

    const/16 v0, 0xe

    if-ne p2, v0, :cond_2

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_icon_min_radius:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p5

    if-ge p2, p5, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/preference/R$dimen;->coui_preference_icon_min_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_icon_max_radius:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p5

    if-le p2, p5, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/preference/R$dimen;->coui_preference_icon_max_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :cond_2
    :goto_0
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setHasBorder(Z)V

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setBorderRectRadius(I)V

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setType(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static setSummaryView(Landroid/content/Context;Landroidx/preference/l;)V
    .locals 1

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance p0, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public static setSummaryViewColor(Landroidx/preference/l;Landroid/content/res/ColorStateList;)V
    .locals 1

    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static setTitleViewColor(Landroid/content/Context;Landroidx/preference/l;Landroid/content/res/ColorStateList;)V
    .locals 0

    const p0, 0x1020016

    invoke-virtual {p1, p0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
