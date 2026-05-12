.class public Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scrollbar/COUIScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final couiScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

.field private height:I

.field private isDynamicHeight:Z

.field public scrollbar_drawable_default_inset:I

.field public scrollbar_drawable_pressed_inset:I

.field public scroller_margin_bottom:I

.field public scroller_margin_top:I

.field public scroller_min_height:I

.field public scroller_width:I

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;

.field private thumbNormalColor:I

.field private thumbPressedColor:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->isDynamicHeight:Z

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->couiScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/scrollbar/R$dimen;->coui_scrollbar_wight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->width:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/scrollbar/R$dimen;->coui_scrollbar_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->height:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/scrollbar/R$dimen;->coui_scrollbar_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scroller_margin_top:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/scrollbar/R$dimen;->coui_scrollbar_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scroller_margin_bottom:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/scrollbar/R$dimen;->coui_scrollbar_drawable_default_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scrollbar_drawable_default_inset:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/scrollbar/R$dimen;->coui_scrollbar_drawable_pressed_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scrollbar_drawable_pressed_inset:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/scrollbar/R$color;->coui_scrollbar_color:I

    invoke-static {v0, v1}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->thumbNormalColor:I

    invoke-interface {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;->getCOUIScrollableView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/scrollbar/R$color;->coui_scrollbar_color:I

    invoke-static {p1, v0}, Lr/a;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->thumbPressedColor:I

    return-void
.end method

.method private makeDefaultThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->thumbPressedColor:I

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->width:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v8, v2, v4

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->access$100()[I

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/InsetDrawable;

    iget v6, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scrollbar_drawable_pressed_inset:I

    iget v5, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scroller_margin_top:I

    iget v7, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scroller_margin_bottom:I

    move-object v2, v10

    move v4, v6

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v9, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v2, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->thumbNormalColor:I

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v12, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->access$200()[I

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget v15, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scrollbar_drawable_default_inset:I

    iget v14, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scroller_margin_top:I

    iget v0, v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scroller_margin_bottom:I

    move-object v11, v3

    move v13, v15

    move/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1
.end method


# virtual methods
.method public build()Lcom/coui/appcompat/scrollbar/COUIScrollBar;
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->makeDefaultThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    new-instance v0, Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    iget-object v2, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->couiScrollable:Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;

    iget v3, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->width:I

    iget v4, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->height:I

    iget-object v5, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v6, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->isDynamicHeight:Z

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;-><init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;IILandroid/graphics/drawable/Drawable;ZLcom/coui/appcompat/scrollbar/COUIScrollBar$1;)V

    return-object v0
.end method

.method public dynamicHeight(Z)Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->isDynamicHeight:Z

    return-object p0
.end method

.method public height(I)Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->height:I

    return-object p0
.end method

.method public marginBottom(I)Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scroller_margin_bottom:I

    return-object p0
.end method

.method public marginTop(I)Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->scroller_margin_top:I

    return-object p0
.end method

.method public thumbDrawable(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public width(I)Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->width:I

    return-object p0
.end method
