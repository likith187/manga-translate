.class Lcom/oplus/anim/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/anim/o;


# direct methods
.method constructor <init>(Lcom/oplus/anim/o;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/anim/o$a;->a:Lcom/oplus/anim/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/oplus/anim/o$a;->a:Lcom/oplus/anim/o;

    invoke-static {p1}, Lcom/oplus/anim/o;->n(Lcom/oplus/anim/o;)Li6/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/anim/o$a;->a:Lcom/oplus/anim/o;

    invoke-static {p1}, Lcom/oplus/anim/o;->n(Lcom/oplus/anim/o;)Li6/c;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/anim/o$a;->a:Lcom/oplus/anim/o;

    invoke-static {p0}, Lcom/oplus/anim/o;->o(Lcom/oplus/anim/o;)Ll6/b;

    move-result-object p0

    invoke-virtual {p0}, Ll6/b;->k()F

    move-result p0

    invoke-virtual {p1, p0}, Li6/c;->M(F)V

    :cond_0
    return-void
.end method
