.class public final synthetic Lcom/oplus/anim/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/EffectiveAnimationView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/w;->a:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p2, p0, Lcom/oplus/anim/w;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/w;->a:Lcom/oplus/anim/EffectiveAnimationView;

    iget-object p0, p0, Lcom/oplus/anim/w;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView;->c(Lcom/oplus/anim/EffectiveAnimationView;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method
