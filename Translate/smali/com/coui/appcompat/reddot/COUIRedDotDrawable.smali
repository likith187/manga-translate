.class public Lcom/coui/appcompat/reddot/COUIRedDotDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

.field private mPointMode:I

.field private mPointNumber:I

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/graphics/RectF;)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->mPointMode:I

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->mPointNumber:I

    iput-object p4, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->mRectF:Landroid/graphics/RectF;

    new-instance p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    sget-object v3, Lcom/support/reddot/R$styleable;->COUIHintRedDot:[I

    const/4 v4, 0x0

    sget v5, Lcom/support/reddot/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->mPointMode:I

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->mPointNumber:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
