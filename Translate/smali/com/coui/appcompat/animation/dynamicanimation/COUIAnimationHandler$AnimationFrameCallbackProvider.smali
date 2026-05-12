.class abstract Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AnimationFrameCallbackProvider"
.end annotation


# instance fields
.field final mDispatcher:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;

    return-void
.end method


# virtual methods
.method abstract postFrameCallback()V
.end method
