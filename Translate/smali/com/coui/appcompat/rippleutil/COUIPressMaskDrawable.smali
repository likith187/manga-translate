.class public Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;
.super Lcom/coui/appcompat/roundRect/COUIRoundDrawable;
.source "SourceFile"


# instance fields
.field private mCornerRadius:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;->mCornerRadius:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/rippleutil/COUIPressMaskDrawable;->mCornerRadius:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->setRadius(F)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/roundRect/COUIRoundDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
