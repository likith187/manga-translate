.class public Landroidx/constraintlayout/widget/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/c$a$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field public final c:Landroidx/constraintlayout/widget/c$d;

.field public final d:Landroidx/constraintlayout/widget/c$c;

.field public final e:Landroidx/constraintlayout/widget/c$b;

.field public final f:Landroidx/constraintlayout/widget/c$e;

.field public g:Ljava/util/HashMap;

.field h:Landroidx/constraintlayout/widget/c$a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/widget/c$d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$d;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    new-instance v0, Landroidx/constraintlayout/widget/c$c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    new-instance v0, Landroidx/constraintlayout/widget/c$b;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    new-instance v0, Landroidx/constraintlayout/widget/c$e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$e;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/c$a;ILandroidx/constraintlayout/widget/ConstraintLayout$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/c$a;->g(ILandroidx/constraintlayout/widget/ConstraintLayout$b;)V

    return-void
.end method

.method static synthetic b(Landroidx/constraintlayout/widget/c$a;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/c$a;->i(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$a;)V

    return-void
.end method

.method static synthetic c(Landroidx/constraintlayout/widget/c$a;ILandroidx/constraintlayout/widget/Constraints$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/c$a;->h(ILandroidx/constraintlayout/widget/Constraints$a;)V

    return-void
.end method

.method private g(ILandroidx/constraintlayout/widget/ConstraintLayout$b;)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/c$a;->a:I

    iget-object p1, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->leftToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->j:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->leftToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->k:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->rightToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->l:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->rightToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->m:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->topToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->n:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->topToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->o:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->bottomToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->p:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->bottomToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->q:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->baselineToBaseline:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->r:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->baselineToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->s:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->baselineToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->t:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->startToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->u:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->startToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->v:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->endToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->w:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->endToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->x:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->horizontalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->y:F

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->verticalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->z:F

    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/c$b;->A:Ljava/lang/String;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->circleConstraint:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->B:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->circleRadius:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->C:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->circleAngle:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->D:F

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->editorAbsoluteX:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->E:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->editorAbsoluteY:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->F:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->orientation:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->G:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->guidePercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->h:F

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->guideBegin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->f:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->guideEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->g:I

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->d:I

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->e:I

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->H:I

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->I:I

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->J:I

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->K:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->baselineMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->N:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->verticalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->V:F

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->horizontalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->W:F

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->verticalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->Y:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->horizontalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->X:I

    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->constrainedWidth:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/c$b;->n0:Z

    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->constrainedHeight:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/c$b;->o0:Z

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintDefaultWidth:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->Z:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintDefaultHeight:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->a0:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintMaxWidth:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->b0:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintMaxHeight:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->c0:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintMinWidth:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->d0:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintMinHeight:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->e0:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintPercentWidth:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->f0:F

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintPercentHeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->g0:F

    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->constraintTag:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/c$b;->m0:Ljava/lang/String;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneTopMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->P:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneBottomMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->R:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneLeftMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->O:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneRightMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->Q:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneStartMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->T:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneEndMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->S:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneBaselineMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->U:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->wrapBehaviorInParent:I

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->q0:I

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->L:I

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->M:I

    return-void
.end method

.method private h(ILandroidx/constraintlayout/widget/Constraints$a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/c$a;->g(ILandroidx/constraintlayout/widget/ConstraintLayout$b;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget v0, p2, Landroidx/constraintlayout/widget/Constraints$a;->a:F

    iput v0, p1, Landroidx/constraintlayout/widget/c$d;->d:F

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->d:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->b:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->e:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->c:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->f:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->d:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->g:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->e:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->h:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->f:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->i:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->g:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->j:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->h:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->k:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->j:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->l:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->k:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->m:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->l:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->c:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$e;->n:F

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/Constraints$a;->b:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/c$e;->m:Z

    return-void
.end method

.method private i(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$a;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/widget/c$a;->h(ILandroidx/constraintlayout/widget/Constraints$a;)V

    instance-of p2, p1, Landroidx/constraintlayout/widget/Barrier;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    const/4 p3, 0x1

    iput p3, p2, Landroidx/constraintlayout/widget/c$b;->j0:I

    check-cast p1, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result p3

    iput p3, p2, Landroidx/constraintlayout/widget/c$b;->h0:I

    iget-object p2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object p3

    iput-object p3, p2, Landroidx/constraintlayout/widget/c$b;->k0:[I

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->i0:I

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c$a;->f()Landroidx/constraintlayout/widget/c$a;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroidx/constraintlayout/widget/c$a;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c$a$a;->e(Landroidx/constraintlayout/widget/c$a;)V

    :cond_0
    return-void
.end method

.method public e(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->j:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->leftToLeft:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->k:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->leftToRight:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->l:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->rightToLeft:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->rightToRight:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->topToTop:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->topToBottom:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->bottomToTop:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->bottomToBottom:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->baselineToBaseline:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->s:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->baselineToTop:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->t:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->baselineToBottom:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->u:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->startToEnd:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->v:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->startToStart:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->w:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->endToStart:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->x:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->endToEnd:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->H:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->I:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->J:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->K:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->T:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneStartMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->S:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneEndMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->P:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneTopMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->R:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->goneBottomMargin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->y:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->horizontalBias:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->z:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->verticalBias:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->B:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->circleConstraint:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->C:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->circleRadius:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->D:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->circleAngle:F

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$b;->A:Ljava/lang/String;

    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->dimensionRatio:Ljava/lang/String;

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->E:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->editorAbsoluteX:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->F:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->editorAbsoluteY:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->V:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->verticalWeight:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->W:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->horizontalWeight:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->Y:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->verticalChainStyle:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->X:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->horizontalChainStyle:I

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/c$b;->n0:Z

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->constrainedWidth:Z

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/c$b;->o0:Z

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->constrainedHeight:Z

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->Z:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintDefaultWidth:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->a0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintDefaultHeight:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->b0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintMaxWidth:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->c0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintMaxHeight:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->d0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintMinWidth:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->e0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintMinHeight:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->f0:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintPercentWidth:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->g0:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->matchConstraintPercentHeight:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->G:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->orientation:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->h:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->guidePercent:F

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->f:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->guideBegin:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->g:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->guideEnd:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->d:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->e:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$b;->m0:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->constraintTag:Ljava/lang/String;

    :cond_0
    iget v1, v0, Landroidx/constraintlayout/widget/c$b;->q0:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->wrapBehaviorInParent:I

    iget v0, v0, Landroidx/constraintlayout/widget/c$b;->M:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget p0, p0, Landroidx/constraintlayout/widget/c$b;->L:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->validate()V

    return-void
.end method

.method public f()Landroidx/constraintlayout/widget/c$a;
    .locals 3

    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$b;->a(Landroidx/constraintlayout/widget/c$b;)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$c;->a(Landroidx/constraintlayout/widget/c$c;)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$d;->a(Landroidx/constraintlayout/widget/c$d;)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iget-object v2, p0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/c$e;->a(Landroidx/constraintlayout/widget/c$e;)V

    iget v1, p0, Landroidx/constraintlayout/widget/c$a;->a:I

    iput v1, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    iput-object p0, v0, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    return-object v0
.end method
