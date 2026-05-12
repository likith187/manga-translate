.class public final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$d;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$d;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_1
    move v6, v0

    if-eqz v5, :cond_3

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$d;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coloros/translate/R$dimen;->dp_17:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_3
    :goto_1
    return-void
.end method
