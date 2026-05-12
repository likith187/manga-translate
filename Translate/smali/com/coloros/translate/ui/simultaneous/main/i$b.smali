.class public final Lcom/coloros/translate/ui/simultaneous/main/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/i;->i(Landroid/view/View;[Landroid/view/View;ZZLw8/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/l;

.field final synthetic b:Z

.field final synthetic c:Lw8/l;

.field final synthetic f:Z


# direct methods
.method public constructor <init>(Lw8/l;ZLw8/l;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;->a:Lw8/l;

    iput-boolean p2, p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;->b:Z

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;->c:Lw8/l;

    iput-boolean p4, p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;->c:Lw8/l;

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;->a:Lw8/l;

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/i$b;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
