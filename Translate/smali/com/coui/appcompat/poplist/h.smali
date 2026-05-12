.class public final synthetic Lcom/coui/appcompat/poplist/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/h;->a:Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/h;->a:Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;->b(Lcom/coui/appcompat/poplist/DefaultScreenAnimationController;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    return-void
.end method
