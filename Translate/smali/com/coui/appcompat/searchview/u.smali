.class public final synthetic Lcom/coui/appcompat/searchview/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/WindowInsetsAnimationController;

.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;

.field public final synthetic f:Landroid/view/animation/Interpolator;

.field public final synthetic h:Landroid/graphics/Insets;

.field public final synthetic i:Landroid/graphics/Insets;

.field public final synthetic j:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/u;->a:Landroid/view/WindowInsetsAnimationController;

    iput-object p2, p0, Lcom/coui/appcompat/searchview/u;->b:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/coui/appcompat/searchview/u;->c:Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;

    iput-object p4, p0, Lcom/coui/appcompat/searchview/u;->f:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/coui/appcompat/searchview/u;->h:Landroid/graphics/Insets;

    iput-object p6, p0, Lcom/coui/appcompat/searchview/u;->i:Landroid/graphics/Insets;

    iput-object p7, p0, Lcom/coui/appcompat/searchview/u;->j:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/searchview/u;->a:Landroid/view/WindowInsetsAnimationController;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/u;->b:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/searchview/u;->c:Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/u;->f:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/coui/appcompat/searchview/u;->h:Landroid/graphics/Insets;

    iget-object v5, p0, Lcom/coui/appcompat/searchview/u;->i:Landroid/graphics/Insets;

    iget-object v6, p0, Lcom/coui/appcompat/searchview/u;->j:Landroid/view/animation/Interpolator;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->b(Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
