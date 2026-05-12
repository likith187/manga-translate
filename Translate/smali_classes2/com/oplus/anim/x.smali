.class public final synthetic Lcom/oplus/anim/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/EffectiveAnimationView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/x;->a:Lcom/oplus/anim/EffectiveAnimationView;

    iput p2, p0, Lcom/oplus/anim/x;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/x;->a:Lcom/oplus/anim/EffectiveAnimationView;

    iget p0, p0, Lcom/oplus/anim/x;->b:I

    invoke-static {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView;->a(Lcom/oplus/anim/EffectiveAnimationView;I)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method
