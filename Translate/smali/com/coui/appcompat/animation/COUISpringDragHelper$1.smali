.class Lcom/coui/appcompat/animation/COUISpringDragHelper$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/animation/COUISpringDragHelper;->getAttachPosition()Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/animation/COUISpringDragHelper;

.field final synthetic val$stable:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/animation/COUISpringDragHelper;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$1;->this$0:Lcom/coui/appcompat/animation/COUISpringDragHelper;

    iput-object p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$1;->val$stable:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
