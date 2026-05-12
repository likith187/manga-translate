.class Lcom/google/android/material/textfield/y;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/material/textfield/TextInputLayout;

.field private final b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;

.field private final f:Lcom/google/android/material/internal/CheckableImageButton;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/PorterDuff$Mode;

.field private j:I

.field private k:Landroid/widget/ImageView$ScaleType;

.field private l:Landroid/view/View$OnLongClickListener;

.field private m:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/h0;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/y;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const v2, 0x800003

    const/4 v3, -0x2

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->design_text_input_start_icon:I

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p1, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lcom/google/android/material/textfield/t;->e(Lcom/google/android/material/internal/CheckableImageButton;)V

    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/y;->j(Landroidx/appcompat/widget/h0;)V

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/y;->i(Landroidx/appcompat/widget/h0;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private C()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->c:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/y;->m:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o0()Z

    return-void
.end method

.method private i(Landroidx/appcompat/widget/h0;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/R$id;->textinput_prefix_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/m0;->l0(Landroid/view/View;I)V

    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextAppearance:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/y;->o(I)V

    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/y;->p(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixText:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h0;->p(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/y;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j(Landroidx/appcompat/widget/h0;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li4/c;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/m;->c(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/y;->u(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/y;->v(Landroid/view/View$OnLongClickListener;)V

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    invoke-static {v1, p1, v2}, Li4/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/h0;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/y;->h:Landroid/content/res/ColorStateList;

    :cond_1
    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/h0;->k(II)I

    move-result v1

    invoke-static {v1, v0}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/y;->i:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/y;->s(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/y;->r(Ljava/lang/CharSequence;)V

    :cond_3
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconCheckable:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/h0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/y;->q(Z)V

    :cond_4
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconMinSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/y;->t(I)V

    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconScaleType:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconScaleType:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/h0;->k(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/material/textfield/t;->b(I)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/y;->w(Landroid/widget/ImageView$ScaleType;)V

    :cond_5
    return-void
.end method


# virtual methods
.method A(Ld0/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ld0/h;->t0(Landroid/view/View;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Ld0/h;->J0(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, p0}, Ld0/h;->J0(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method B()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/y;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/core/view/m0;->A(Landroid/view/View;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    invoke-static {v2, v1, v3, p0, v0}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    return-void
.end method

.method a()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method b()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method c()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/y;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1}, Landroidx/core/view/m;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Landroidx/core/view/m0;->A(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-static {p0}, Landroidx/core/view/m0;->A(Landroid/view/View;)I

    move-result p0

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method d()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method e()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method f()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method g()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/y;->j:I

    return p0
.end method

.method h()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->k:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method k()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/y;->m:Z

    invoke-direct {p0}, Lcom/google/android/material/textfield/y;->C()V

    return-void
.end method

.method m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->h:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1, p0}, Lcom/google/android/material/textfield/t;->d(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method n(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/y;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/material/textfield/y;->C()V

    return-void
.end method

.method o(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-static {p0, p1}, Landroidx/core/widget/j;->o(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/y;->B()V

    return-void
.end method

.method p(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method q(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    return-void
.end method

.method r(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/y;->e()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method s(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/y;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/y;->h:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/y;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/textfield/t;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/y;->z(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/y;->m()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/y;->z(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/y;->u(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/y;->v(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/y;->r(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method t(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/y;->j:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/material/textfield/y;->j:I

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/t;->g(Lcom/google/android/material/internal/CheckableImageButton;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "startIconSize cannot be less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method u(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->l:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, p0}, Lcom/google/android/material/textfield/t;->h(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method v(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/y;->l:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/t;->i(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method w(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/y;->k:Landroid/widget/ImageView$ScaleType;

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/t;->j(Lcom/google/android/material/internal/CheckableImageButton;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method x(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/y;->h:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, p1, p0}, Lcom/google/android/material/textfield/t;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method y(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/y;->i:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object p0, p0, Lcom/google/android/material/textfield/y;->h:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/material/textfield/t;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method z(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/y;->k()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/y;->f:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/y;->B()V

    invoke-direct {p0}, Lcom/google/android/material/textfield/y;->C()V

    :cond_1
    return-void
.end method
