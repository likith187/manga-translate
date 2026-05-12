.class public final synthetic Lcom/coui/appcompat/animation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/animation/COUISpringDragHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/animation/COUISpringDragHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/animation/d;->a:Lcom/coui/appcompat/animation/COUISpringDragHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/animation/d;->a:Lcom/coui/appcompat/animation/COUISpringDragHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->c(Lcom/coui/appcompat/animation/COUISpringDragHelper;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V

    return-void
.end method
