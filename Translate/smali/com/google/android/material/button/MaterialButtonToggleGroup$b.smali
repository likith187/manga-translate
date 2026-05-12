.class Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-static {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I

    move-result v2

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Ld0/h$f;->a(IIIIZZ)Ld0/h$f;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld0/h;->k0(Ljava/lang/Object;)V

    return-void
.end method
