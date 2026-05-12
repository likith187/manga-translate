.class Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-static {v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$000(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-static {v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$000(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateIconViewLocationIfNeed()V

    return-void
.end method
