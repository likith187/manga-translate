.class public final synthetic Lcom/coui/appcompat/panel/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/g;->a:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    iput-object p2, p0, Lcom/coui/appcompat/panel/g;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/g;->a:Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    iget-object p0, p0, Lcom/coui/appcompat/panel/g;->b:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->b(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
