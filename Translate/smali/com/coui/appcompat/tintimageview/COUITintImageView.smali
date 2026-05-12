.class public Lcom/coui/appcompat/tintimageview/COUITintImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mTintManager:Lcom/coui/appcompat/tintimageview/COUITintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x10100d4

    const v1, 0x1010119

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/tintimageview/COUITintImageView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tintimageview/COUITintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tintimageview/COUITintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/tintimageview/COUITintImageView;->TINT_ATTRS:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/h0;->w(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/h0;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroidx/appcompat/widget/h0;->t()I

    move-result p3

    if-lez p3, :cond_1

    .line 6
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p3, 0x1

    .line 8
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/h0;->y()V

    .line 11
    invoke-static {p1}, Lcom/coui/appcompat/tintimageview/COUITintManager;->get(Landroid/content/Context;)Lcom/coui/appcompat/tintimageview/COUITintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tintimageview/COUITintImageView;->mTintManager:Lcom/coui/appcompat/tintimageview/COUITintManager;

    return-void
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tintimageview/COUITintImageView;->mTintManager:Lcom/coui/appcompat/tintimageview/COUITintManager;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/tintimageview/COUITintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
