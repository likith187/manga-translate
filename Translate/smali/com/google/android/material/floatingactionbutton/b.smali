.class abstract Lcom/google/android/material/floatingactionbutton/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/f;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field private final c:Ljava/util/ArrayList;

.field private final d:Lcom/google/android/material/floatingactionbutton/a;

.field private e:Lx3/h;

.field private f:Lx3/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;

    return-void
.end method

.method static synthetic j(Lcom/google/android/material/floatingactionbutton/b;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->b()V

    return-void
.end method

.method public d()Lx3/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Lx3/h;

    return-object p0
.end method

.method public e()Landroid/animation/AnimatorSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b;->l()Lx3/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/b;->k(Lx3/h;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/b;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final i(Lx3/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Lx3/h;

    return-void
.end method

.method k(Lx3/h;)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lx3/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lx3/h;->f(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lx3/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lx3/h;->f(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lx3/h;->f(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lx3/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->M:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lx3/h;->f(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lx3/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->N:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lx3/h;->f(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "paddingStart"

    invoke-virtual {p1, v1}, Lx3/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->O:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lx3/h;->f(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "paddingEnd"

    invoke-virtual {p1, v1}, Lx3/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->P:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lx3/h;->f(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "labelOpacity"

    invoke-virtual {p1, v1}, Lx3/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v3, Lcom/google/android/material/floatingactionbutton/b$a;

    const-class v4, Ljava/lang/Float;

    const-string v5, "LABEL_OPACITY_PROPERTY"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/material/floatingactionbutton/b$a;-><init>(Lcom/google/android/material/floatingactionbutton/b;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v3}, Lx3/h;->f(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p0, v0}, Lx3/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p0
.end method

.method public final l()Lx3/h;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->f:Lx3/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lx3/h;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->a:Landroid/content/Context;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->b()I

    move-result v1

    invoke-static {v0, v1}, Lx3/h;->d(Landroid/content/Context;I)Lx3/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lx3/h;

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/b;->e:Lx3/h;

    invoke-static {p0}, Lc0/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx3/h;

    return-object p0
.end method

.method public onAnimationEnd()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/b;->d:Lcom/google/android/material/floatingactionbutton/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/a;->c(Landroid/animation/Animator;)V

    return-void
.end method
