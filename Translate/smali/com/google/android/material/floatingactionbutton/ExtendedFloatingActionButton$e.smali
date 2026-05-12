.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(ILcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/f;

.field final synthetic c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->b:Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->a:Z

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->b:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->a()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->b:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->onAnimationEnd()V

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->a:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->b:Lcom/google/android/material/floatingactionbutton/f;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->g(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$l;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->b:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/f;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;->a:Z

    return-void
.end method
