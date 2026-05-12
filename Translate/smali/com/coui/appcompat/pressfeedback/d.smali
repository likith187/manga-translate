.class public final synthetic Lcom/coui/appcompat/pressfeedback/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/d;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/d;->a:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->a(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V

    return-void
.end method
