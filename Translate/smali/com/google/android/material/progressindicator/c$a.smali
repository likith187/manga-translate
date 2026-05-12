.class Lcom/google/android/material/progressindicator/c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/progressindicator/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c$a;->a:Lcom/google/android/material/progressindicator/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/c$a;->a:Lcom/google/android/material/progressindicator/c;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/c;->i(Lcom/google/android/material/progressindicator/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object p0, p0, Lcom/google/android/material/progressindicator/c$a;->a:Lcom/google/android/material/progressindicator/c;

    invoke-static {p0}, Lcom/google/android/material/progressindicator/c;->k(Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/a;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/a;->c:[I

    array-length p0, p0

    rem-int/2addr v0, p0

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/c;->j(Lcom/google/android/material/progressindicator/c;I)I

    return-void
.end method
