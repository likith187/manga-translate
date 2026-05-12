.class public Lcom/coui/appcompat/textview/COUITextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "COUITextViewDebug"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDebug:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/textview/COUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/textview/COUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/coui/appcompat/textview/COUITextView;->mDebug:Z

    .line 5
    iput-object p1, p0, Lcom/coui/appcompat/textview/COUITextView;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/textview/COUITextView;->setDebug(Ljava/lang/Boolean;)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, p2, p3, v1}, Lcom/coui/appcompat/textview/COUITextView;->viewAttrsHasAddLineSpace(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0, p2, p3, v1}, Lcom/coui/appcompat/textview/COUITextView;->findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I

    move-result p2

    if-eq p2, v1, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/textview/COUITextView;->applyLineSpaceFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    .line 12
    :cond_1
    iget-boolean p1, p0, Lcom/coui/appcompat/textview/COUITextView;->mDebug:Z

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "textSize: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", lineHeight: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", fontHeight: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Multiplier: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    const-string p1, "COUITextViewDebug"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private applyLineSpaceFromViewAppearance(Landroid/content/res/Resources$Theme;I)V
    .locals 1

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUITextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUITextAppearance_android_lineSpacingMultiplier:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I
    .locals 1

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUITextView:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextView_android_textAppearance:I

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static viewAttrsHasAddLineSpace(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z
    .locals 0

    sget-object p0, Lcom/support/appcompat/R$styleable;->COUITextView:[I

    invoke-virtual {p1, p2, p0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$styleable;->COUITextView_android_lineSpacingMultiplier:I

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    cmpl-float p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public setDebug(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/textview/COUITextView;->mDebug:Z

    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/coui/appcompat/textview/COUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/textview/COUITextView;->applyLineSpaceFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    return-void
.end method
