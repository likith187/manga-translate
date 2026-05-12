.class final Lcom/coloros/translate/screen/utils/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/utils/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/utils/u$a$a;,
        Lcom/coloros/translate/screen/utils/u$a$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/coloros/translate/screen/utils/u$a$a;


# instance fields
.field private final a:Landroid/view/WindowManager;

.field private final b:Landroid/view/ContextThemeWrapper;

.field private c:Lkotlinx/coroutines/f1;

.field private d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/utils/u$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/utils/u$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/utils/u$a;->e:Lcom/coloros/translate/screen/utils/u$a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coloros/translate/screen/utils/u$a;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/coloros/translate/screen/R$style;->AppTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/utils/u$a;->k()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/screen/utils/u$a;)Lkotlinx/coroutines/f1;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a;->c:Lkotlinx/coroutines/f1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/coloros/translate/screen/utils/u$a;[I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/utils/u$a;->l([I)I

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/ContextThemeWrapper;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    return-object p0
.end method

.method public static final synthetic e(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/utils/u$a;->m()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a;->d:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a;->a:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/screen/utils/u$a;I)Lkotlinx/coroutines/f1;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/utils/u$a;->n(I)Lkotlinx/coroutines/f1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/screen/utils/u$a;Lkotlinx/coroutines/f1;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/utils/u$a;->c:Lkotlinx/coroutines/f1;

    return-void
.end method

.method public static final synthetic j(Lcom/coloros/translate/screen/utils/u$a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/utils/u$a;->d:Landroid/view/View;

    return-void
.end method

.method private final k()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/translate/screen/R$dimen;->dp_89:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result p0

    add-int v4, v0, p0

    const v6, 0xc000018

    const/4 v7, -0x3

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/16 v5, 0x7f6

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const-string p0, "ToastHelper"

    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p0, 0x51

    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const p0, 0x1030004

    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v8
.end method

.method private final l([I)I
    .locals 5

    invoke-static {}, Lcom/coloros/translate/screen/utils/g;->c()Lt2/b$b;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/screen/utils/u$a$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    aget v1, p1, v1

    aget p1, p1, v2

    invoke-direct {v0, v3, v1, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coloros/translate/screen/R$dimen;->dp_24:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {v0, v4, p0, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ)F

    move-result p0

    invoke-static {p0}, Ly8/a;->b(F)I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_1
    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    aget v1, p1, v1

    aget p1, p1, v2

    invoke-direct {v0, v3, v1, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coloros/translate/screen/R$dimen;->dp_24:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {v0, v4, p0, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ)F

    move-result p0

    invoke-static {p0}, Ly8/a;->b(F)I

    move-result p0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    aget v1, p1, v1

    aget p1, p1, v2

    invoke-direct {v0, v3, v1, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coloros/translate/screen/R$dimen;->dp_16:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    const/4 p1, 0x4

    invoke-static {v0, p1, p0, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ)F

    move-result p0

    invoke-static {p0}, Ly8/a;->b(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final m()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/screen/R$layout;->layout_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/utils/u$a;->b:Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/coloros/translate/screen/R$drawable;->custom_toast_background:I

    invoke-static {v1, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    sget v1, Lcom/coloros/translate/screen/R$id;->imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v2, Lcom/coloros/translate/screen/utils/u$a$c;

    invoke-direct {v2, p0}, Lcom/coloros/translate/screen/utils/u$a$c;-><init>(Lcom/coloros/translate/screen/utils/u$a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final n(I)Lkotlinx/coroutines/f1;
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v1

    new-instance v4, Lcom/coloros/translate/screen/utils/u$a$d;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/coloros/translate/screen/utils/u$a$d;-><init>(ILcom/coloros/translate/screen/utils/u$a;Lkotlin/coroutines/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final o(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/p1;->F0()Lkotlinx/coroutines/p1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v1

    new-instance v4, Lcom/coloros/translate/screen/utils/u$a$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/coloros/translate/screen/utils/u$a$e;-><init>(Lcom/coloros/translate/screen/utils/u$a;Ljava/lang/String;ILkotlin/coroutines/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method
