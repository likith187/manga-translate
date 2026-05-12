.class Lcom/google/android/material/checkbox/MaterialCheckBox$a;
.super Landroidx/vectordrawable/graphics/drawable/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/checkbox/MaterialCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/checkbox/MaterialCheckBox;


# direct methods
.method constructor <init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$a;->b:Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/b;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$a;->b:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->n:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/b;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$a;->b:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object v1, v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->n:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->b(Lcom/google/android/material/checkbox/MaterialCheckBox;)[I

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox$a;->b:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p1, p0}, Lv/a;->n(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
