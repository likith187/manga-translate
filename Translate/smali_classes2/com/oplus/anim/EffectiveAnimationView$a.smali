.class Lcom/oplus/anim/EffectiveAnimationView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/anim/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView$a;->a:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$a;->a:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationView;->d(Lcom/oplus/anim/EffectiveAnimationView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$a;->a:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationView;->d(Lcom/oplus/anim/EffectiveAnimationView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$a;->a:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationView;->e(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/p;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView$a;->a:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/oplus/anim/EffectiveAnimationView;->f(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/p;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/oplus/anim/EffectiveAnimationView;->e(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/p;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lcom/oplus/anim/p;->a(Ljava/lang/Object;)V

    return-void
.end method
