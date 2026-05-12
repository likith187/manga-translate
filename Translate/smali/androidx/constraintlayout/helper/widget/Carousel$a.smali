.class Landroidx/constraintlayout/helper/widget/Carousel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/helper/widget/Carousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/constraintlayout/helper/widget/Carousel;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel$a;->a:Landroidx/constraintlayout/helper/widget/Carousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel$a;->a:Landroidx/constraintlayout/helper/widget/Carousel;

    invoke-static {v0}, Landroidx/constraintlayout/helper/widget/Carousel;->F(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel$a;->a:Landroidx/constraintlayout/helper/widget/Carousel;

    invoke-static {v0}, Landroidx/constraintlayout/helper/widget/Carousel;->G(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel$a;->a:Landroidx/constraintlayout/helper/widget/Carousel;

    invoke-static {v0}, Landroidx/constraintlayout/helper/widget/Carousel;->I(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/helper/widget/Carousel$b;

    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel$a;->a:Landroidx/constraintlayout/helper/widget/Carousel;

    invoke-static {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->H(Landroidx/constraintlayout/helper/widget/Carousel;)I

    const/4 p0, 0x0

    throw p0
.end method
