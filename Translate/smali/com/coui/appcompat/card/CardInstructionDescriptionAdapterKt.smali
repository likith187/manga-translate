.class public final Lcom/coui/appcompat/card/CardInstructionDescriptionAdapterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$getDimenPx(Landroid/view/View;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/card/CardInstructionDescriptionAdapterKt;->getDimenPx(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method private static final getDimenPx(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
