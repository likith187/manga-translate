.class final Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/roundRect/COUIRoundDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "COUIRoundDrawableState"
.end annotation


# instance fields
.field public alpha:I

.field public colorFilter:Landroid/graphics/ColorFilter;

.field public fillColor:Landroid/content/res/ColorStateList;

.field public radius:F

.field public strokeColor:Landroid/content/res/ColorStateList;

.field public strokeTintList:Landroid/content/res/ColorStateList;

.field public strokeWidth:F

.field public tintList:Landroid/content/res/ColorStateList;

.field public tintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 3
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 4
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 5
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 6
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xff

    .line 8
    iput v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 11
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 12
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 13
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 14
    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 15
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xff

    .line 16
    iput v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->alpha:I

    .line 17
    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 18
    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 19
    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    .line 20
    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeTintList:Landroid/content/res/ColorStateList;

    .line 21
    iget-object v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->tintList:Landroid/content/res/ColorStateList;

    .line 22
    iget v0, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    iput v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->strokeWidth:F

    .line 23
    iget p1, p1, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    iput p1, p0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;->radius:F

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;-><init>(Lcom/coui/appcompat/roundRect/COUIRoundDrawable$COUIRoundDrawableState;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->access$002(Lcom/coui/appcompat/roundRect/COUIRoundDrawable;Z)Z

    return-object v0
.end method
