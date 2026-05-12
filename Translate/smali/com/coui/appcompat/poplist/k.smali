.class public final synthetic Lcom/coui/appcompat/poplist/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/SmallScreenAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/k;->a:Lcom/coui/appcompat/poplist/SmallScreenAnimationController;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/k;->a:Lcom/coui/appcompat/poplist/SmallScreenAnimationController;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/poplist/SmallScreenAnimationController;->b(Lcom/coui/appcompat/poplist/SmallScreenAnimationController;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    return-void
.end method
