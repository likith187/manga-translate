.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ld7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$a;,
        Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;,
        Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b;
    }
.end annotation


# static fields
.field public static final I0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$a;

.field private static final J0:Landroid/view/animation/PathInterpolator;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private A0:Ljava/lang/Object;

.field private B:Landroid/widget/TextView;

.field private B0:Ljava/lang/reflect/Method;

.field private C:Landroid/widget/TextView;

.field private C0:Lcom/oplus/view/ViewRootManager;

.field private D:Z

.field private D0:Lcom/coloros/translate/screen/widget/m;

.field private E:Z

.field private E0:J

.field private final F:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

.field private F0:Landroid/view/View;

.field private final G:Lcom/oplus/os/WaveformEffect;

.field private G0:Z

.field private final H:Ln8/j;

.field private final H0:Ljava/lang/Runnable;

.field private I:Lcom/coloros/translate/screen/widget/e0;

.field private J:Lcom/coloros/translate/screen/widget/i0;

.field private final K:Landroid/view/GestureDetector;

.field private final L:Ln8/j;

.field private final M:Ln8/j;

.field private final N:Landroid/widget/FrameLayout$LayoutParams;

.field private final O:Landroid/graphics/RectF;

.field private final P:Ld7/l;

.field private final Q:Ld7/n;

.field private R:Z

.field private final S:Ld7/c;

.field private final T:Ld7/h;

.field private U:Lcom/coloros/translate/screen/widget/c2;

.field private V:Z

.field private W:Ljava/lang/Runnable;

.field private final a:Landroid/widget/FrameLayout;

.field private a0:Z

.field private final b:Lcom/coloros/translate/screen/widget/h;

.field private b0:Z

.field private c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

.field private c0:Landroid/animation/AnimatorSet;

.field private d0:Landroid/animation/Animator;

.field private e0:Landroid/animation/ValueAnimator;

.field private final f:F

.field private f0:Landroid/animation/AnimatorSet;

.field private g0:Landroid/animation/AnimatorSet;

.field private final h:F

.field private h0:Landroid/animation/AnimatorSet;

.field private final i:F

.field private i0:Landroid/animation/AnimatorSet;

.field private final j:F

.field private j0:Landroid/animation/ValueAnimator;

.field private final k:F

.field private k0:Landroid/animation/ValueAnimator;

.field private final l:F

.field private l0:Landroid/animation/ValueAnimator;

.field private final m:F

.field private m0:Landroid/view/VelocityTracker;

.field private final n:I

.field private final n0:F

.field private final o:I

.field private o0:I

.field private final p:I

.field private p0:I

.field private final q:F

.field private q0:Ljava/util/Locale;

.field private r:Landroid/view/View;

.field private r0:Z

.field private s:Landroid/view/View;

.field private s0:[I

.field private t:Landroid/view/View;

.field private t0:I

.field private u:Landroid/view/View;

.field private u0:F

.field private v:Landroid/view/View;

.field private v0:F

.field private w:Landroid/view/View;

.field private w0:F

.field private x:Landroid/view/View;

.field private x0:F

.field private y:Landroid/widget/ImageView;

.field private y0:Landroid/view/WindowManager$LayoutParams;

.field private z:Landroid/widget/ImageView;

.field private z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J0:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/coloros/translate/screen/widget/h;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "drawRoot"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onEvent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a:Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f:F

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/screen/R$dimen;->dp_3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_shrink_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_shrink_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_fold_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m:F

    const-string v3, "#CC333333"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n:I

    const-string v3, "#99333333"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o:I

    const-string v3, "#EB2B2A2A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/screen/R$dimen;->dp_32:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E:Z

    new-instance v4, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->F:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    new-instance v4, Lcom/oplus/os/WaveformEffect$Builder;

    invoke-direct {v4}, Lcom/oplus/os/WaveformEffect$Builder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/oplus/os/WaveformEffect$Builder;->setEffectLoop(Z)Lcom/oplus/os/WaveformEffect$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/os/WaveformEffect$Builder;->build()Lcom/oplus/os/WaveformEffect;

    move-result-object v4

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->G:Lcom/oplus/os/WaveformEffect;

    new-instance v4, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$f0;

    invoke-direct {v4, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$f0;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v4

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H:Ln8/j;

    new-instance v4, Landroid/view/GestureDetector;

    new-instance v7, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;

    invoke-direct {v7, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$m;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-direct {v4, v1, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->K:Landroid/view/GestureDetector;

    new-instance v4, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$p;

    invoke-direct {v4, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$p;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v4

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->L:Ln8/j;

    sget-object v4, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;->INSTANCE:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;

    invoke-static {v4}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v4

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->M:Ln8/j;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v7, 0x800033

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O:Landroid/graphics/RectF;

    invoke-static/range {p1 .. p1}, Ld7/l;->j(Landroid/content/Context;)Ld7/l;

    move-result-object v8

    const-string v9, "create(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P:Ld7/l;

    new-instance v9, Ld7/n;

    invoke-direct {v9}, Ld7/n;-><init>()V

    iput-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q:Ld7/n;

    new-instance v10, Ld7/c;

    invoke-direct {v10, v6, v3, v4}, Ld7/c;-><init>(IILandroid/graphics/RectF;)V

    new-instance v4, Lcom/coloros/translate/screen/widget/r0;

    invoke-direct {v4, v0}, Lcom/coloros/translate/screen/widget/r0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v10, v4}, Ld7/d;->L(Ljava/lang/Runnable;)Ld7/d;

    move-result-object v4

    check-cast v4, Ld7/c;

    new-instance v10, Lcom/coloros/translate/screen/widget/s0;

    invoke-direct {v10, v0}, Lcom/coloros/translate/screen/widget/s0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v4, v10}, Ld7/d;->M(Ljava/lang/Runnable;)Ld7/d;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ld7/c;

    const/high16 v11, 0x40b00000    # 5.5f

    const v12, 0x3f8ccccd    # 1.1f

    invoke-virtual {v10, v11, v12}, Ld7/g;->B(FF)Ld7/d;

    invoke-virtual {v10, v9}, Ld7/d;->c(Ljava/lang/Object;)Ld7/d;

    const-string v11, "apply(...)"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S:Ld7/c;

    new-instance v4, Ld7/h;

    invoke-direct {v4}, Ld7/h;-><init>()V

    new-instance v11, Lcom/coloros/translate/screen/widget/t0;

    invoke-direct {v11, v0}, Lcom/coloros/translate/screen/widget/t0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v4, v11}, Ld7/d;->L(Ljava/lang/Runnable;)Ld7/d;

    move-result-object v4

    check-cast v4, Ld7/h;

    new-instance v11, Lcom/coloros/translate/screen/widget/v0;

    invoke-direct {v11, v0}, Lcom/coloros/translate/screen/widget/v0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v4, v11}, Ld7/d;->M(Ljava/lang/Runnable;)Ld7/d;

    move-result-object v4

    check-cast v4, Ld7/h;

    const/high16 v11, 0x41800000    # 16.0f

    const v12, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v11, v12}, Ld7/h;->B(FF)Ld7/d;

    move-result-object v4

    check-cast v4, Ld7/h;

    invoke-virtual {v4, v9}, Ld7/d;->c(Ljava/lang/Object;)Ld7/d;

    move-result-object v4

    check-cast v4, Ld7/h;

    iput-object v4, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T:Ld7/h;

    sget-object v9, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    iput-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_width:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    iput v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0:F

    float-to-int v9, v9

    iput v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    if-ne v9, v3, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v6

    :goto_0
    iput-boolean v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object v9

    iput-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    invoke-static/range {p1 .. p1}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result v9

    iput v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0:I

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getHorLimit()F

    move-result v9

    iput v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/coloros/translate/screen/R$dimen;->dp_16:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    iput v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x0:F

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_height:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v15, 0xc040328

    const/16 v16, -0x2

    const/4 v12, -0x2

    const/16 v14, 0x7f6

    move-object v11, v9

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v7, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    float-to-int v7, v7

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v7, v7, v3

    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v7, v11

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_margin_bottom:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v7, "screen_trans_shot_black_name"

    invoke-virtual {v9, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    new-array v5, v5, [Ld7/d;

    aput-object v4, v5, v6

    aput-object v10, v5, v3

    invoke-virtual {v8, v0, v5}, Ld7/l;->b(Ld7/b;[Ld7/d;)V

    invoke-virtual {v8, v10}, Ld7/l;->d(Ld7/d;)Ld7/d;

    invoke-virtual {v8, v4}, Ld7/l;->d(Ld7/d;)Ld7/d;

    iget-object v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    const-string v4, "ScreenTranslationToolCapsule"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v5, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v0, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/coloros/translate/screen/widget/i0;

    invoke-direct {v3, v1, v2}, Lcom/coloros/translate/screen/widget/i0;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J:Lcom/coloros/translate/screen/widget/i0;

    new-instance v2, Lcom/coloros/translate/screen/widget/m;

    invoke-direct {v2, v0}, Lcom/coloros/translate/screen/widget/m;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    iput-object v2, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    invoke-static {v0, v2}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "init"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;

    invoke-direct {v2, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H0:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Z0()V

    return-void
.end method

.method public static final synthetic A0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic B(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f1()V

    return-void
.end method

.method public static final synthetic B0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic C(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coloros/translate/screen/widget/m;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    return-object p0
.end method

.method public static final synthetic C0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lcom/coloros/translate/screen/widget/c2;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    return-void
.end method

.method private static final C1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C0:Lcom/oplus/view/ViewRootManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/view/ViewRootManager;->getBackgroundBlurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    const v1, 0x3dccccd0    # 0.100000024f

    const v2, 0x3f666666    # 0.9f

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    mul-float v3, p1, v1

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    mul-float/2addr p1, v1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    return-void
.end method

.method public static final synthetic D(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic D0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B0:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final synthetic E(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic E0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    return-void
.end method

.method public static final synthetic F(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic F0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f0:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final F1(ZFLw8/a;)V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m:F

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v3

    sub-float/2addr v1, v3

    int-to-float v3, p1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    filled-new-array {v0, p1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUISpringInterpolator;

    const-wide v3, 0x3fd999999999999aL    # 0.4

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/coui/appcompat/animation/COUISpringInterpolator;-><init>(DD)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/l0;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/coloros/translate/screen/widget/l0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZFI)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$s;

    invoke-direct {p1, p3, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$s;-><init>(Lw8/a;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final synthetic G(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic G0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g0:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private static final G1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZFILandroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v3

    sub-float/2addr p1, v3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p3, Lcom/coloros/translate/screen/widget/q0;

    invoke-direct {p3, v1, p0, p1, p2}, Lcom/coloros/translate/screen/widget/q0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/m;->t()Z

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, p2

    :goto_0
    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e2(Z)V

    :cond_3
    return-void
.end method

.method public static final synthetic H(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic H0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E:Z

    return-void
.end method

.method private static final H1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "$real"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic I(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->F0:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic I0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lcom/oplus/view/ViewRootManager;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C0:Lcom/oplus/view/ViewRootManager;

    return-void
.end method

.method private final I1()V
    .locals 8

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    float-to-int v3, v0

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    move v5, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v4

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v6

    :goto_3
    move v4, v1

    goto :goto_4

    :cond_2
    int-to-float v1, v3

    int-to-float v2, v0

    sub-float v2, v6, v2

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    :goto_4
    float-to-int v1, v6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/coloros/translate/screen/widget/a1;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/screen/widget/a1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;IFIF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$u;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$u;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final synthetic J(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    return p0
.end method

.method public static final synthetic J0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setViewStatusWithAlpha(F)V

    return-void
.end method

.method private static final J1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;IFIFLandroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    int-to-float p3, p3

    sub-float/2addr p4, p3

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    mul-float/2addr p4, p5

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p3, Lcom/coloros/translate/screen/widget/h1;

    invoke-direct {p3, v0, p0, p1, p2}, Lcom/coloros/translate/screen/widget/h1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static final synthetic K(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/oplus/os/WaveformEffect;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->G:Lcom/oplus/os/WaveformEffect;

    return-object p0
.end method

.method public static final synthetic K0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S1()V

    return-void
.end method

.method private static final K1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "$real"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic L(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n:I

    return p0
.end method

.method public static final synthetic L0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lw8/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U1(Lw8/a;)V

    return-void
.end method

.method private final L1(Lw8/a;)V
    .locals 6

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/m;->t()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->R:Z

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P:Ld7/l;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ld7/l;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_1
    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0:F

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    filled-new-array {v1, v4}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x1a1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/coloros/translate/screen/widget/c1;

    invoke-direct {v4, p0, v3, v2}, Lcom/coloros/translate/screen/widget/c1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FI)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v2, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$v;

    invoke-direct {v2, p0, v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$v;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZLw8/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic M(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    return p0
.end method

.method public static final synthetic M0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a2()V

    return-void
.end method

.method private static final M1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FILandroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d2(F)V

    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    sub-float/2addr v3, p1

    mul-float/2addr v3, v2

    add-float/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationX(F)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, p2

    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    sub-int/2addr v3, p2

    int-to-float p2, v3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    mul-float/2addr p2, p3

    add-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance p2, Lcom/coloros/translate/screen/widget/k0;

    invoke-direct {p2, v0, p0, p1, v1}, Lcom/coloros/translate/screen/widget/k0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/m;->t()Z

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    move p2, p3

    :cond_1
    invoke-direct {p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e2(Z)V

    return-void
.end method

.method public static final synthetic N(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    return p0
.end method

.method public static final synthetic N0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e2(Z)V

    return-void
.end method

.method private static final N1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "$real"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic O0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h2(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic P(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic P0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l2(Z)V

    return-void
.end method

.method private final P1(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/w;->a(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHideAnim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenTranslationToolCapsule"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/x0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/x0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$w;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$w;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final synthetic Q(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic Q0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p2(Z)V

    return-void
.end method

.method private static final Q1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    new-instance v0, Lcom/coloros/translate/screen/widget/y0;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/screen/widget/y0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic R(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coloros/translate/screen/widget/h;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    return-object p0
.end method

.method private final R0(Z)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "adjustToolbarPanel"

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v3, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    :goto_0
    float-to-int v1, v1

    goto :goto_1

    :cond_0
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m:F

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    goto :goto_0

    :goto_1
    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    if-ne v3, v1, :cond_4

    const-string p0, "adjustToolbarPanel:return"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iput v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    if-eqz p1, :cond_5

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m:F

    :goto_2
    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v0:F

    new-instance v3, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;

    invoke-direct {v3, p0, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;IF)V

    invoke-direct {p0, p1, v2, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->F1(ZFLw8/a;)V

    return-void
.end method

.method private static final R1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C0:Lcom/oplus/view/ViewRootManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/view/ViewRootManager;->getBackgroundBlurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    instance-of v1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0xff

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    const p0, 0x3dccccd0    # 0.100000024f

    mul-float/2addr p1, p0

    const p0, 0x3f666666    # 0.9f

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    return-void
.end method

.method public static final synthetic S(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method private static final S0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->R:Z

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ScreenTranslationToolCapsule"

    const-string v1, "withStartAction"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final S1()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/w;->a(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startShowAnim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenTranslationToolCapsule"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/p0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/p0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$x;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$x;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final synthetic T(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->F:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    return-object p0
.end method

.method private static final T0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "withStopAction"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->R:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f1()V

    return-void
.end method

.method private static final T1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setViewStatusWithAlpha(F)V

    return-void
.end method

.method public static final synthetic U(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q:F

    return p0
.end method

.method private final U0()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    const-string v1, "ScreenTranslationToolCapsule"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "autoShrink:isShrink false"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v3, Lcom/coloros/translate/screen/widget/c2;->ZONE:Lcom/coloros/translate/screen/widget/c2;

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r1()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    iput-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lw8/a;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "autoShrink:isShrinkEnable false"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "shrinkRunnable, realView is detached to Window"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final U1(Lw8/a;)V
    .locals 6

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/m;->t()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    or-int/2addr v0, v2

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P:Ld7/l;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ld7/l;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_1
    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0:F

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    float-to-int v2, v2

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    float-to-int v4, v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/coloros/translate/screen/widget/d1;

    invoke-direct {v4, p0, v1, v2}, Lcom/coloros/translate/screen/widget/d1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FI)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;

    invoke-direct {v1, p0, v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZLw8/a;)V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final synthetic V(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0:F

    return p0
.end method

.method private static final V1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FILandroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    invoke-direct {p0, p3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d2(F)V

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    sub-float/2addr v2, p1

    mul-float/2addr v2, p3

    add-float/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationX(F)V

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    float-to-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, p3

    sub-float/2addr v2, v1

    float-to-int v1, v2

    float-to-int v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float p2, p2

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr p2, v2

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    iget-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float p1, p1

    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x0:F

    mul-float v4, v3, p3

    sub-float/2addr p1, v4

    float-to-int p1, p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, v1

    mul-float/2addr v3, p3

    sub-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p1, Lcom/coloros/translate/screen/widget/o0;

    invoke-direct {p1, v0, p0, p2, v2}, Lcom/coloros/translate/screen/widget/o0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/m;->t()Z

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    move p2, p3

    :cond_2
    invoke-direct {p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e2(Z)V

    return-void
.end method

.method public static final synthetic W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method private final W0(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getFullNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setFromLanguage(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getFullNameResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setToLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/coloros/translate/screen/translate/engine/language/j;->j(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/coloros/translate/screen/R$drawable;->tool_capsule_language_transfer:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/coloros/translate/screen/R$drawable;->tool_capsule_language_right:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A:Landroid/widget/ImageView;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A:Landroid/widget/ImageView;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :goto_1
    return-void
.end method

.method private static final W1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "$real"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic X(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final X0()V
    .locals 4

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Y0()V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const-string v1, "ScreenTranslationToolCapsule"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J:Lcom/coloros/translate/screen/widget/i0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/i0;->d()V

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkShrinkCircleView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v2, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    if-eq v0, v2, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J:Lcom/coloros/translate/screen/widget/i0;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/i0;->d()V

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "checkShrinkCircleView:SelectStatus.FULL"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J:Lcom/coloros/translate/screen/widget/i0;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/i0;->h()V

    :cond_4
    return-void
.end method

.method public static final synthetic Y(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coloros/translate/screen/widget/i0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J:Lcom/coloros/translate/screen/widget/i0;

    return-object p0
.end method

.method private final Y0()V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x1()V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I:Lcom/coloros/translate/screen/widget/e0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/e0;->n()V

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I:Lcom/coloros/translate/screen/widget/e0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/e0;->n()V

    :cond_5
    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private final Y1()Z
    .locals 3

    sget-object p0, Lcom/coloros/translate/screen/translate/business/b;->INSTANCE:Lcom/coloros/translate/screen/translate/business/b;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/business/b;->b()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/coloros/translate/screen/utils/w;->f()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    sget p0, Lcom/coloros/translate/screen/R$string;->screen_error_not_support_full:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return v2
.end method

.method public static final synthetic Z(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coloros/translate/screen/widget/c2;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    return-object p0
.end method

.method private final Z0()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v1, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lw8/a;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {v0}, Lcom/coloros/translate/screen/widget/h;->n()V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A1()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->K1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic a0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B0:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final a2()V
    .locals 4

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X0()V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    sget-object v1, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    invoke-interface {v0, v1, v2}, Lcom/coloros/translate/screen/widget/h;->c(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateDirectly:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g2()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q:Ld7/n;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Ld7/n;->c(FF)Ld7/n;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v2, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {p0, v0}, Lcom/coloros/translate/screen/widget/h;->k(Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {p0, v0}, Lcom/coloros/translate/screen/widget/h;->l(Z)V

    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic b0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o:I

    return p0
.end method

.method public static synthetic c(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->V1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic c0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    return p0
.end method

.method private final c2()V
    .locals 8

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h:F

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    int-to-float v5, v5

    sub-float/2addr v5, v1

    const/4 v6, 0x1

    aget v3, v3, v6

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v7

    sub-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S:Ld7/c;

    invoke-virtual {v1, v0}, Ld7/c;->t0(I)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S:Ld7/c;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ld7/g;->i0(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v2, v1, v4

    aget v1, v1, v6

    invoke-direct {v0, v4, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->R1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V

    return-void
.end method

.method public static final synthetic d0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method private final d2(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n:I

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o:I

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n:I

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getArgbEvaluator()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setBlurEffect(I)V

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;IFIFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;IFIFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic e0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    return p0
.end method

.method private final e2(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0:F

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setEventLayoutX(I)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    new-instance p1, Lcom/coloros/translate/screen/widget/w0;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/w0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEventParams updateViewLayout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTranslationToolCapsule"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic f0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p:I

    return p0
.end method

.method private final f1()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "correctLocation"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0:F

    cmpg-float v1, v1, v0

    const/4 v2, 0x1

    if-gez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationX(F)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    float-to-int v1, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-direct {p0, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v3, v3, v2

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v0, v0, v2

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e2(Z)V

    :cond_4
    return-void
.end method

.method private static final f2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/customview/widget/a;->invalidateRoot()V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic g0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A:Landroid/widget/ImageView;

    return-object p0
.end method

.method private final g1(Z)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/screen/R$layout;->layout_trans_tool_capsule:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.coloros.translate.screen.widget.ScreenTranslationToolCapsule.RealView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget v3, Lcom/coloros/translate/screen/R$id;->backgroundView:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    sget v3, Lcom/coloros/translate/screen/R$id;->mainContainer:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    sget v3, Lcom/coloros/translate/screen/R$id;->fullScreenContainer:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    sget v3, Lcom/coloros/translate/screen/R$id;->zoneAreaScreenContainer:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    sget v3, Lcom/coloros/translate/screen/R$id;->languageContainer:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    sget v3, Lcom/coloros/translate/screen/R$id;->closeLt:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    sget v3, Lcom/coloros/translate/screen/R$id;->backLt:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x:Landroid/view/View;

    sget v3, Lcom/coloros/translate/screen/R$id;->backIv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    sget v3, Lcom/coloros/translate/screen/R$id;->shrinkIv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    sget v3, Lcom/coloros/translate/screen/R$id;->switchLanguageIv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A:Landroid/widget/ImageView;

    sget v3, Lcom/coloros/translate/screen/R$id;->originLanguageTv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B:Landroid/widget/TextView;

    sget v3, Lcom/coloros/translate/screen/R$id;->targetLanguageTv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z1()V

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v4, Lcom/coloros/translate/screen/widget/e1;

    invoke-direct {v4, p0, v3}, Lcom/coloros/translate/screen/widget/e1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->setToolCapsule(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    :goto_1
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationX(F)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x0:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v5, Lcom/coloros/translate/screen/widget/f1;

    invoke-direct {v5, v0, v4}, Lcom/coloros/translate/screen/widget/f1;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    sub-float/2addr v0, v4

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    sub-float/2addr v0, v4

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    :goto_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-boolean v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->V:Z

    if-eqz v4, :cond_8

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l2(Z)V

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$h;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$h;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W:Ljava/lang/Runnable;

    goto/16 :goto_7

    :cond_8
    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    const-string v0, "ScreenTranslationToolCapsule"

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->o()Z

    move-result p1

    if-ne p1, v3, :cond_a

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "createRealView:realView is ready"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/coloros/translate/screen/widget/g1;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/g1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_a
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "createRealView:realView is not ready"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$i;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$i;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W:Ljava/lang/Runnable;

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->o()Z

    move-result p1

    if-ne p1, v3, :cond_11

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C0:Lcom/oplus/view/ViewRootManager;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/oplus/view/ViewRootManager;->getBackgroundBlurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    move-object v2, p1

    goto :goto_6

    :cond_e
    :goto_5
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    :cond_f
    :goto_6
    if-nez v2, :cond_10

    goto :goto_7

    :cond_10
    const/16 p0, 0xff

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_7

    :cond_11
    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$j;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$j;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W:Ljava/lang/Runnable;

    :goto_7
    return-void
.end method

.method private final g2()V
    .locals 6

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    int-to-float v1, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    int-to-float v2, v2

    :goto_1
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhysicalSize width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " ,height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",isShrink:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ScreenTranslationToolCapsule"

    invoke-virtual {v3, v4, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q:Ld7/n;

    invoke-virtual {v0, v1, v2}, Ld7/n;->b(FF)Ld7/n;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T:Ld7/h;

    invoke-virtual {v0, v1, v2}, Ld7/h;->b(FF)Ld7/d;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S:Ld7/c;

    invoke-virtual {p0, v1, v2}, Ld7/g;->b(FF)Ld7/d;

    return-void
.end method

.method private final getArgbEvaluator()Landroid/animation/ArgbEvaluator;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->M:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method private final getAttachBodySide()I
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0:F

    invoke-static {v0}, Ly8/a;->b(F)I

    move-result v0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    invoke-static {p0}, Ly8/a;->b(F)I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 v1, 0x2

    :cond_0
    return v1
.end method

.method private final getBottomLimit()F
    .locals 1

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f:F

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public static synthetic getEventLayoutParams$annotations()V
    .locals 0

    return-void
.end method

.method private final getHorLimit()F
    .locals 2

    invoke-static {}, Lcom/coloros/translate/screen/utils/g;->c()Lt2/b$b;

    move-result-object v0

    sget-object v1, Lt2/b$b;->LARGE:Lt2/b$b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_margin_hor_large_window:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_margin_hor:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method private final getMaxVelocity()F
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->L:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getWindowManager()Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static synthetic h(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method public static final synthetic h0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method private static final h1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private final h2(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    sget p0, Lcom/coloros/translate/screen/R$drawable;->tool_capsule_full_press_bg:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance p0, Lcom/coloros/translate/screen/widget/z0;

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/z0;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic i0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/oplus/view/ViewRootManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C0:Lcom/oplus/view/ViewRootManager;

    return-object p0
.end method

.method private static final i1(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final i2(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/coloros/translate/screen/R$drawable;->tool_capsule_full_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic j(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V

    return-void
.end method

.method public static final synthetic j0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/WindowManager;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method private static final j1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S1()V

    return-void
.end method

.method private final j2(Lw8/a;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-boolean v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const-string v7, "scaleY"

    const-string v8, "scaleX"

    const-wide/16 v9, 0x11b

    const-string v13, "alpha"

    const/4 v14, 0x0

    if-eqz v6, :cond_1

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v9}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v10, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    if-ne v9, v10, :cond_0

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x:Landroid/view/View;

    new-array v10, v5, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    new-array v14, v5, [F

    fill-array-data v14, :array_1

    invoke-static {v10, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v14, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    new-array v15, v5, [F

    fill-array-data v15, :array_2

    invoke-static {v14, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iget-object v15, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    new-array v11, v5, [F

    fill-array-data v11, :array_3

    invoke-static {v15, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v9, v1, v4

    aput-object v10, v1, v3

    aput-object v14, v1, v5

    aput-object v11, v1, v2

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x:Landroid/view/View;

    new-array v9, v5, [F

    fill-array-data v9, :array_4

    invoke-static {v1, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    new-array v10, v5, [F

    fill-array-data v10, :array_5

    invoke-static {v9, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    new-array v11, v5, [F

    fill-array-data v11, :array_6

    invoke-static {v10, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v11, v2, [Landroid/animation/Animator;

    aput-object v1, v11, v4

    aput-object v9, v11, v3

    aput-object v10, v11, v5

    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$z;

    move-object/from16 v11, p1

    invoke-direct {v1, v0, v0, v11}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$z;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lw8/a;)V

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iput-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f0:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v9, 0xfa

    invoke-virtual {v1, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    new-array v9, v5, [F

    fill-array-data v9, :array_7

    invoke-static {v6, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    new-array v10, v5, [F

    fill-array-data v10, :array_8

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    new-array v10, v5, [F

    fill-array-data v10, :array_9

    invoke-static {v9, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v6, v2, v4

    aput-object v8, v2, v3

    aput-object v7, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$a0;

    invoke-direct {v2, v0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$a0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g0:Landroid/animation/AnimatorSet;

    goto/16 :goto_3

    :cond_1
    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X0()V

    iget-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v12, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    const/high16 v15, 0x43340000    # 180.0f

    if-ne v6, v12, :cond_5

    iget-boolean v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v15}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v14}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_5
    iget-boolean v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v14}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_7
    iget-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v6, v15}, Landroid/view/View;->setRotation(F)V

    :goto_1
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v9}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    if-ne v9, v12, :cond_9

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x:Landroid/view/View;

    new-array v10, v5, [F

    fill-array-data v10, :array_a

    invoke-static {v9, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    new-array v12, v5, [F

    fill-array-data v12, :array_b

    invoke-static {v10, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    new-array v14, v5, [F

    fill-array-data v14, :array_c

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v14, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    new-array v15, v5, [F

    fill-array-data v15, :array_d

    invoke-static {v14, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v9, v1, v4

    aput-object v10, v1, v3

    aput-object v12, v1, v5

    aput-object v14, v1, v2

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_9
    iget-object v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x:Landroid/view/View;

    new-array v9, v5, [F

    fill-array-data v9, :array_e

    invoke-static {v1, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    new-array v10, v5, [F

    fill-array-data v10, :array_f

    invoke-static {v9, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    new-array v12, v5, [F

    fill-array-data v12, :array_10

    invoke-static {v10, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v1, v12, v4

    aput-object v9, v12, v3

    aput-object v10, v12, v5

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;

    invoke-direct {v1, v0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0x86

    invoke-virtual {v6, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iput-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h0:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v9, 0xfa

    invoke-virtual {v1, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    new-array v9, v5, [F

    fill-array-data v9, :array_11

    invoke-static {v6, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v9, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v9}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v6, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v9, Ln8/h0;->INSTANCE:Ln8/h0;

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    new-array v10, v5, [F

    fill-array-data v10, :array_12

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v9, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v9}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    new-array v10, v5, [F

    fill-array-data v10, :array_13

    invoke-static {v9, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v9, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v9}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v6, v2, v4

    aput-object v8, v2, v3

    aput-object v7, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c0;

    invoke-direct {v2, v0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i0:Landroid/animation/AnimatorSet;

    invoke-direct/range {p0 .. p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->L1(Lw8/a;)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I1()V

    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_11
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public static synthetic k(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method public static final synthetic k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    return-object p0
.end method

.method private final k1()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyRealView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "destroyRealView:remove realView"

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->setToolCapsule(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    :goto_1
    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I:Lcom/coloros/translate/screen/widget/e0;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/e0;->i()V

    :cond_3
    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I:Lcom/coloros/translate/screen/widget/e0;

    return-void
.end method

.method static synthetic k2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lw8/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j2(Lw8/a;)V

    return-void
.end method

.method public static synthetic l(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic l0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p1(I)V

    return-void
.end method

.method private static final l1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S:Ld7/c;

    invoke-virtual {p0}, Ld7/c;->v0()V

    return-void
.end method

.method private final l2(Z)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_d

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v0, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_6
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_8
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_9
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p0, :cond_c

    goto/16 :goto_18

    :cond_c
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_18

    :cond_d
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I:Lcom/coloros/translate/screen/widget/e0;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/coloros/translate/screen/widget/e0;->n()V

    :cond_e
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    if-nez v2, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    if-nez v2, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w:Landroid/view/View;

    if-nez v2, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    new-instance v2, Lkotlin/jvm/internal/z;

    invoke-direct {v2}, Lkotlin/jvm/internal/z;-><init>()V

    iget-object v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v7, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    if-eq v6, v7, :cond_12

    iput-boolean v0, v2, Lkotlin/jvm/internal/z;->element:Z

    :cond_12
    const/high16 v6, 0x3f800000    # 1.0f

    if-nez p1, :cond_20

    iget-boolean p1, v2, Lkotlin/jvm/internal/z;->element:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_14

    goto :goto_e

    :cond_14
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_15

    goto :goto_11

    :cond_15
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_16
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_19

    goto :goto_11

    :cond_19
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_12
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_1b

    goto :goto_13

    :cond_1b
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_13
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_14
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_15
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_1e

    goto :goto_16

    :cond_1e
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_16
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p0, :cond_1f

    goto :goto_17

    :cond_1f
    invoke-virtual {p0, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_17
    return-void

    :cond_20
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c0:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_21

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/w;->a(Landroid/animation/Animator;)V

    :cond_21
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c0:Landroid/animation/AnimatorSet;

    new-array p1, v1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v3, 0x14d

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v6, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;

    invoke-direct {v6, v2, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;-><init>(Lkotlin/jvm/internal/z;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {p1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v6, Lcom/coloros/translate/screen/widget/m0;

    invoke-direct {v6, p0, v2}, Lcom/coloros/translate/screen/widget/m0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;)V

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v7}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lcom/coloros/translate/screen/widget/n0;

    invoke-direct {v3, p0, v2}, Lcom/coloros/translate/screen/widget/n0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;)V

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v3, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;

    invoke-direct {v3, v2, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;-><init>(Lkotlin/jvm/internal/z;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v6, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c0:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_22

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v5

    aput-object v6, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_22
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c0:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_23
    :goto_18
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic m(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method public static final synthetic m0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r1()Z

    move-result p0

    return p0
.end method

.method private static final m1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S:Ld7/c;

    invoke-virtual {p0}, Ld7/c;->u0()V

    return-void
.end method

.method static synthetic m2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l2(Z)V

    return-void
.end method

.method public static synthetic n(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method public static final synthetic n0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t1(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final n2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$showLanguageContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-boolean p1, p1, Lkotlin/jvm/internal/z;->element:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i:F

    neg-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i:F

    neg-float p0, p0

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i:F

    neg-float p0, p0

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_5
    return-void
.end method

.method public static synthetic o(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static final synthetic o0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    return p0
.end method

.method private static final o2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$showLanguageContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-boolean p1, p1, Lkotlin/jvm/internal/z;->element:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i:F

    int-to-float v0, v1

    sub-float/2addr v0, p2

    mul-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t:Landroid/view/View;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i:F

    int-to-float v2, v1

    sub-float/2addr v2, p2

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u:Landroid/view/View;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i:F

    int-to-float v0, v1

    sub-float/2addr v0, p2

    mul-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_5
    return-void
.end method

.method public static synthetic p(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method public static final synthetic p0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    return p0
.end method

.method private final p1(I)V
    .locals 10

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "initBlurEffect"

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C0:Lcom/oplus/view/ViewRootManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v4

    new-instance v7, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;

    invoke-direct {v7, v0, p0, p1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$n;-><init>(Lcom/oplus/view/ViewRootManager;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ILkotlin/coroutines/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setBlurRadius"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const/4 v3, 0x1

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    const/16 v5, 0xdc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "setCornerRadius"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_4
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "setColor"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_5

    :cond_7
    move-object v0, v1

    :goto_5
    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_6
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_a
    if-eqz v1, :cond_c

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-nez p0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :goto_8
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-static {p0}, Ln8/e;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initBlurEffect exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_9
    return-void
.end method

.method private final p2(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e0:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l2(Z)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e2(Z)V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewWhenAnimationEnd oldFingerRaise: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenTranslationToolCapsule"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g2()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q:Ld7/n;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Ld7/n;->c(FF)Ld7/n;

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P:Ld7/l;

    invoke-virtual {p1}, Ld7/l;->D()V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S:Ld7/c;

    invoke-virtual {p0}, Ld7/c;->u0()V

    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic q0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E:Z

    return p0
.end method

.method private final q1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 p2, 0x0

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {p0, p2}, Lcom/coloros/translate/screen/widget/h;->k(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {p0, p2}, Lcom/coloros/translate/screen/widget/h;->l(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {p0, v1}, Lcom/coloros/translate/screen/widget/h;->k(Z)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {p0, v1}, Lcom/coloros/translate/screen/widget/h;->l(Z)V

    :goto_0
    return-void
.end method

.method private final q2(Ld7/m;)V
    .locals 4

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/m;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Ld7/m;->a:F

    float-to-int v3, v2

    if-ne v1, v3, :cond_2

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p1, Ld7/m;->b:F

    float-to-int v3, v3

    if-ne v1, v3, :cond_2

    goto :goto_5

    :cond_2
    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    :goto_1
    sub-float/2addr v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    int-to-float v2, v2

    goto :goto_1

    :goto_2
    float-to-int v1, v1

    goto :goto_3

    :cond_4
    float-to-int v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setEventLayoutX(I)V

    iget p1, p1, Ld7/m;->b:F

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    new-instance p1, Lcom/coloros/translate/screen/widget/b1;

    invoke-direct {p1, p0, v0}, Lcom/coloros/translate/screen/widget/b1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateViewWhenFingerRaise updateViewLayout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTranslationToolCapsule"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    return-void
.end method

.method public static synthetic r(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method public static final synthetic r0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    return-void
.end method

.method private final r1()Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c0:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s1()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final r2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/customview/widget/a;->invalidateRoot()V

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->M1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic s0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    return-void
.end method

.method private final s1()Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final setBlurEffect(I)V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/a0;

    invoke-direct {v0}, Lkotlin/jvm/internal/a0;-><init>()V

    iput p1, v0, Lkotlin/jvm/internal/a0;->element:I

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p:I

    :goto_0
    iput p1, v0, Lkotlin/jvm/internal/a0;->element:I

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v1

    new-instance v4, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$q;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/a0;Lkotlin/coroutines/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method private final setEventLayoutX(I)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v1, v1, v2

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v1, v1, v2

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z0:I

    return-void
.end method

.method private final setRealTranslationX(F)V
    .locals 2

    invoke-static {p1}, Ly8/a;->b(F)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v1, :cond_1

    neg-float v1, p1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0:F

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J:Lcom/coloros/translate/screen/widget/i0;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz p0, :cond_2

    neg-float p1, p1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/coloros/translate/screen/widget/i0;->f(F)V

    :cond_3
    return-void
.end method

.method private final setRealTranslationY(F)V
    .locals 2

    invoke-static {p1}, Ly8/a;->b(F)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v0:F

    goto :goto_3

    :cond_1
    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v0:F

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v0:F

    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J:Lcom/coloros/translate/screen/widget/i0;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/i0;->g(F)V

    :cond_5
    return-void
.end method

.method private final setViewStatusWithAlpha(F)V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/widget/j0;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/screen/widget/j0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic t(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i1(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic t0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->F0:Landroid/view/View;

    return-void
.end method

.method private final t1(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n1(Landroid/view/View;)Ln8/q;

    move-result-object p0

    invoke-virtual {p0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, p0

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p0, v3

    cmpg-float p0, v2, p0

    if-gez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    cmpg-float p0, p0, v1

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic u(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic u0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    return-void
.end method

.method private static final u1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "onAttachedToWindow1"

    const-string v4, "ScreenTranslationToolCapsule"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g1(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttachedToWindow:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i2(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic v0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setEventLayoutX(I)V

    return-void
.end method

.method public static synthetic w(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic w0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final w1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectStatusChange:oldValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",newValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X0()V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/w;->a(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {v0, p1, p2}, Lcom/coloros/translate/screen/widget/h;->c(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->R0(Z)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V

    return-void
.end method

.method public static synthetic x(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method public static final synthetic x0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h0:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final x1()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I:Lcom/coloros/translate/screen/widget/e0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/translate/screen/widget/e0;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/translate/screen/widget/e0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Landroid/widget/ImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I:Lcom/coloros/translate/screen/widget/e0;

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I:Lcom/coloros/translate/screen/widget/e0;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/e0;->l()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ScreenTranslationToolCapsule"

    const-string v1, "playLoadingAnimation  realView  or shrinkIv is null"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic y(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZFILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->G1(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZFILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic y0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j0:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final y1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V
    .locals 5

    sget-object v0, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E0:J

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E0:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x3b9aca00

    div-long/2addr v1, v3

    if-eq p2, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E0:J

    :cond_1
    sget-object p2, Lcom/coloros/translate/screen/widget/c2;->ZONE:Lcom/coloros/translate/screen/widget/c2;

    if-ne p1, p2, :cond_2

    const-string p1, "event_screen_free_duration"

    goto :goto_0

    :cond_2
    const-string p1, "event_screen_full_duration"

    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "source_duration"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic z(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X0()V

    return-void
.end method

.method public static final synthetic z0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i0:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final z1()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n0:F

    goto :goto_0

    :goto_1
    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    return-void
.end method


# virtual methods
.method public final A1()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "restoreNoneStatus"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D1(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v1, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X1()V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v1, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V

    return-void
.end method

.method public final B1()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "setToolLanguage:start"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W0(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)V

    return-void
.end method

.method public final D1(ZZ)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show isShow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " withAnim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " visibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/w;->a(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0:Landroid/animation/Animator;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C0:Lcom/oplus/view/ViewRootManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oplus/view/ViewRootManager;->getBackgroundBlurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    instance-of p2, p1, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S1()V

    goto :goto_9

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    :goto_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_6
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C0:Lcom/oplus/view/ViewRootManager;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/oplus/view/ViewRootManager;->getBackgroundBlurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    move-object v0, p1

    goto :goto_8

    :cond_a
    :goto_7
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A0:Ljava/lang/Object;

    instance-of p2, p1, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_b
    :goto_8
    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    const/16 p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_9
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_12

    if-eqz p2, :cond_f

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$r;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$r;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P1(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_c

    :cond_f
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_10

    goto :goto_b

    :cond_10
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_b
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_d
    return-void
.end method

.method public final E1(IZ)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDirectly : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->V:Z

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    sget-object p1, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    goto :goto_1

    :cond_2
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    sget-object p1, Lcom/coloros/translate/screen/widget/c2;->ZONE:Lcom/coloros/translate/screen/widget/c2;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    :goto_1
    return-void
.end method

.method public final O1()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFullTranslation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Y0()V

    return-void
.end method

.method public final V0(I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D1(ZZ)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r1()Z

    move-result v0

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoTranslateWhenLaunchAgain:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScreenTranslationToolCapsule"

    invoke-virtual {v3, v5, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz p1, :cond_6

    iput-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k2(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lw8/a;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$f;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$f;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j2(Lw8/a;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l2(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a2()V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz p1, :cond_5

    iput-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j2(Lw8/a;)V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/coloros/translate/screen/widget/c2;->ZONE:Lcom/coloros/translate/screen/widget/c2;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l2(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a2()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final X1()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFullTranslation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Y0()V

    return-void
.end method

.method public final Z1(FF)Z
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v2

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v4, p0

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final a1()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {v0}, Lcom/coloros/translate/screen/widget/h;->n()V

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$g;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P1(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public final b1()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget p0, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    invoke-static {p0, v3, v2, v1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v4, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    if-eq v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->G0:Z

    if-eqz v0, :cond_1

    sget p0, Lcom/coloros/translate/screen/R$string;->screenshot_reject_on_secure_window:I

    invoke-static {p0, v3, v2, v1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ScreenTranslationToolCapsule"

    const-string v1, "clickFull :isSecurityLayer"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Y1()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    iput-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    invoke-direct {p0, v0, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V

    return-void
.end method

.method public final b2()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "unselectFullTranslation"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v1, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    invoke-direct {p0, v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X1()V

    :cond_0
    return-void
.end method

.method public final c1(Z)V
    .locals 2

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {p0, p1}, Lcom/coloros/translate/screen/widget/h;->j(Z)V

    return-void
.end method

.method public final d1()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget p0, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    invoke-static {p0, v3, v2, v1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v4, Lcom/coloros/translate/screen/widget/c2;->ZONE:Lcom/coloros/translate/screen/widget/c2;

    if-eq v0, v4, :cond_1

    iget-boolean v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->G0:Z

    if-eqz v5, :cond_1

    sget p0, Lcom/coloros/translate/screen/R$string;->screenshot_reject_on_secure_window:I

    invoke-static {p0, v3, v2, v1}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ScreenTranslationToolCapsule"

    const-string v1, "onClickFree :isSecurityLayer"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    invoke-direct {p0, v0, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w1(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/customview/widget/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e1(Landroid/content/res/Configuration;)V
    .locals 6

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e0:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->R:Z

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P:Ld7/l;

    invoke-virtual {v2, v0}, Ld7/l;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0:I

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getHorLimit()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z1()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q0:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "ScreenTranslationToolCapsule"

    if-nez v0, :cond_6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "configurationChanged:recreate"

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v4, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {v2, v1}, Lcom/coloros/translate/screen/widget/h;->k(Z)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/coloros/translate/screen/widget/c2;->ZONE:Lcom/coloros/translate/screen/widget/c2;

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {v2, v1}, Lcom/coloros/translate/screen/widget/h;->l(Z)V

    :cond_4
    :goto_1
    sget-object v2, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q0:Ljava/util/Locale;

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_5

    const-string p0, "configurationChanged:realView is inflating, return"

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k1()V

    invoke-direct {p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g1(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B1()V

    :goto_2
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c2()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s:Landroid/view/View;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_3
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0:F

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationX(F)V

    invoke-direct {p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l2(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X0()V

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    float-to-int v4, v0

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x0:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o:I

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setBlurEffect(I)V

    goto :goto_4

    :cond_a
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l:F

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v0, v0, v2

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getBottomLimit()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r:Landroid/view/View;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->n:I

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setBlurEffect(I)V

    :goto_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ready to updateEventParams"

    invoke-virtual {p1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e2(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g2()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q:Ld7/n;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Ld7/n;->c(FF)Ld7/n;

    invoke-virtual {p0, v2, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D1(ZZ)V

    return-void
.end method

.method public final getEventLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public final getRealView()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    return-object p0
.end method

.method public final n1(Landroid/view/View;)Ln8/q;
    .locals 2

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v1, :cond_0

    new-instance p1, Ln8/q;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ln8/q;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final o1()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "handleCloseSystemDialogs"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U:Lcom/coloros/translate/screen/widget/c2;

    sget-object v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b2()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D1(ZZ)V

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Ld7/d;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ld7/d;->r()Ld7/m;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p1, Ld7/m;->b:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b:Lcom/coloros/translate/screen/widget/h;

    invoke-interface {v0}, Lcom/coloros/translate/screen/widget/h;->p()V

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r0:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p1, Ld7/m;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j:F

    :goto_0
    sub-float/2addr v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p1, Ld7/m;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0:I

    int-to-float v1, v1

    goto :goto_0

    :cond_2
    iget v0, p1, Ld7/m;->a:F

    :goto_1
    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationX(F)V

    iget v0, p1, Ld7/m;->b:F

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->setRealTranslationY(F)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q2(Ld7/m;)V

    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "onAttachedToWindow"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q0:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c2()V

    new-instance v0, Lcom/coloros/translate/screen/widget/u0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/u0;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "onDetachedFromWindow"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P:Ld7/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld7/l;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P:Ld7/l;

    invoke-virtual {v0}, Ld7/l;->B()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k1()V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0:Lcom/coloros/translate/screen/widget/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/m;->u()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ScreenTranslationToolCapsule"

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onTouchEvent:ACTION_OUTSIDE"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U0()V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T:Ld7/h;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Ld7/h;->Y(FF)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "onTouchEvent:ACTION_CANCEL ACTION_UP"

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    const/16 v1, 0x3e8

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getMaxVelocity()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    :cond_7
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T:Ld7/h;

    invoke-virtual {v2, v0, v1}, Ld7/h;->T(FF)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->r1()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent:animation is running:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_a
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onTouchEvent:ACTION_DOWN"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_b
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->m0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_c
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P:Ld7/l;

    invoke-virtual {v0}, Ld7/l;->D()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g2()V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q:Ld7/n;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Ld7/n;->c(FF)Ld7/n;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T:Ld7/h;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v4, v3}, Ld7/h;->O(FFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->K:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setEventLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y0:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public final setFromLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final setSecurityLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->G0:Z

    return-void
.end method

.method public final setToLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final v1()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D1(ZZ)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J:Lcom/coloros/translate/screen/widget/i0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/i0;->e()V

    :cond_0
    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEventParams updateViewLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
