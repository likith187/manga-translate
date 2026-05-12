.class public final synthetic Lcom/oplus/anim/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/anim/p;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/v;->a:Lcom/oplus/anim/EffectiveAnimationView;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/v;->a:Lcom/oplus/anim/EffectiveAnimationView;

    check-cast p1, Lcom/oplus/anim/a;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setComposition(Lcom/oplus/anim/a;)V

    return-void
.end method
