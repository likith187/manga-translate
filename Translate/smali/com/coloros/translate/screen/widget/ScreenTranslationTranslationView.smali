.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/business/f;
.implements Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;
.implements Lcom/coloros/translate/screen/widget/h;
.implements Lcom/coloros/translate/screen/translate/engine/picker/e$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$a;,
        Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;,
        Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$b;,
        Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$c;
    }
.end annotation


# static fields
.field private static final J:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$a;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:[I

.field private E:I

.field private F:Lcom/coloros/translate/screen/utils/m;

.field private G:Z

.field private H:Lcom/coloros/translate/screen/translate/engine/panel/e;

.field private final I:Ljava/lang/Runnable;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/ContextThemeWrapper;

.field private final c:Landroid/view/WindowManager;

.field private final d:Lcom/coloros/translate/screen/translate/engine/language/j;

.field private final e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

.field private final f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

.field private final g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

.field private h:Lcom/coloros/translate/screen/widget/v;

.field private final i:Ln8/j;

.field private volatile j:Lcom/coloros/translate/screen/translate/engine/picker/e;

.field private k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

.field private final l:Lcom/coloros/translate/screen/translate/business/k;

.field private m:I

.field private n:Lcom/coloros/translate/screen/translate/business/m;

.field private volatile o:Lcom/coloros/translate/screen/translate/business/l;

.field private volatile p:Landroid/os/IOplusExInputCallBack;

.field private q:Landroid/os/IOplusExInputCallBack;

.field private r:Landroid/os/IOplusExInputCallBack;

.field private volatile s:Z

.field private t:Z

.field private final u:Ln8/j;

.field private final v:Ln8/j;

.field private final w:Landroid/content/BroadcastReceiver;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->J:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/coloros/translate/screen/R$style;->ThemeCOUIMainDark:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->b:Landroid/view/ContextThemeWrapper;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->c:Landroid/view/WindowManager;

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->d:Lcom/coloros/translate/screen/translate/engine/language/j;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    invoke-direct {v0, p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;-><init>(Landroid/content/Context;Lcom/coloros/translate/screen/widget/h;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-direct {v1, p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$k;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$k;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->i:Ln8/j;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-direct {v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    new-instance v0, Lcom/coloros/translate/screen/translate/business/k;

    invoke-direct {v0, p1, p0}, Lcom/coloros/translate/screen/translate/business/k;-><init>(Landroid/content/Context;Lcom/coloros/translate/screen/translate/business/f;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m:I

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->NONE:Lcom/coloros/translate/screen/translate/business/l;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->t:Z

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$h;->INSTANCE:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$h;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->u:Ln8/j;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$d;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->v:Ln8/j;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->w:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->D:[I

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->E:I

    new-instance p1, Lcom/coloros/translate/screen/widget/s1;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/s1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->I:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->B0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V

    return-void
.end method

.method private static final A0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onNotSupportApp invoke"

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q0(Lcom/coloros/translate/screen/translate/business/m;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onNotSupportApp response not valid"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b2()V

    sget p0, Lcom/coloros/translate/screen/R$string;->screen_error_not_support_full:I

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic B(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->D0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

.method private static final B0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotSupportScene:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q0(Lcom/coloros/translate/screen/translate/business/m;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onNotSupportScene response not valid"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b2()V

    sget p1, Lcom/coloros/translate/screen/R$string;->screen_error_not_support:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic C(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

.method private static final C0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onResponseSuccess zone"

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q0(Lcom/coloros/translate/screen/translate/business/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResponseSuccess response not valid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    if-eqz p0, :cond_4

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/coloros/translate/screen/translate/engine/panel/e;->H(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget p1, Lcom/coloros/translate/screen/R$string;->screen_error_not_recognize:I

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    new-instance p1, Lcom/coloros/translate/screen/widget/q1;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/q1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lcom/coloros/translate/screen/utils/t;->h(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static final synthetic D(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h0(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    return-void
.end method

.method private static final D0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->q()V

    :cond_0
    return-void
.end method

.method public static final synthetic E(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Landroid/view/ContextThemeWrapper;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->b:Landroid/view/ContextThemeWrapper;

    return-object p0
.end method

.method private static final E0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;)V
    .locals 8

    const-string v0, "ScreenTranslationTranslationView"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$viewRequest"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$bitmap"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "onResponseSuccess full"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->B:Z

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/m;->b()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.coloros.translate.screen.widget.ScreenTranslationFullParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/coloros/translate/screen/widget/w;

    sget-object v4, Lcom/coloros/translate/screen/widget/w;->g:Lcom/coloros/translate/screen/widget/w$a;

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6, v7}, Lcom/coloros/translate/screen/widget/w$a;->f(Lcom/coloros/translate/screen/widget/w$a;Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;ILjava/lang/Object;)Lcom/coloros/translate/screen/widget/w;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->p0(Lcom/coloros/translate/screen/widget/w;Lcom/coloros/translate/screen/widget/w;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current focused window has changed:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_0

    const-wide/16 p1, 0x1f4

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T0(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 v5, 0x1

    invoke-static {v4, v2, v5, v7}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q0(Lcom/coloros/translate/screen/translate/business/m;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onResponseSuccess response not valid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->m()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v1, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, v1, :cond_4

    sget-object p1, Lcom/coloros/translate/screen/translate/business/b;->INSTANCE:Lcom/coloros/translate/screen/translate/business/b;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/b;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {p1, p2, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->e(Landroid/graphics/Bitmap;Lcom/coloros/translate/screen/widget/w;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X1()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_5

    sget p1, Lcom/coloros/translate/screen/R$string;->screen_error_not_support_full:I

    invoke-static {p1, v2, v6, v7}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    :cond_5
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b2()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponseSuccess:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static final synthetic F(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object p0

    return-object p0
.end method

.method private static final F0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;I)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onServerError"

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q0(Lcom/coloros/translate/screen/translate/business/m;)Z

    move-result p1

    if-nez p1, :cond_7

    const p1, 0xc3505

    if-ne p2, p1, :cond_0

    goto :goto_2

    :cond_0
    const p1, 0x30d4b

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq p2, p1, :cond_2

    const p1, 0xc3502

    if-eq p2, p1, :cond_1

    sget p1, Lcom/coloros/translate/screen/R$string;->screen_error_service_error:I

    invoke-static {p1, v5, v3, v4}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/coloros/translate/base/R$string;->network_error:I

    invoke-static {p1, v5, v3, v4}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_3

    sget p1, Lcom/coloros/translate/screen/R$string;->screen_error_not_recognize:I

    invoke-static {p1, v5, v3, v4}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->B:Z

    if-nez p1, :cond_4

    sget-object p1, Lcom/coloros/translate/screen/widget/w;->g:Lcom/coloros/translate/screen/widget/w$a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/w$a;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "onServerError: image text is null, retry"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->B:Z

    const-wide/16 p1, 0x4b0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T0(J)V

    return-void

    :cond_4
    iput-boolean v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->B:Z

    sget p1, Lcom/coloros/translate/screen/R$string;->screen_error_not_recognize_full:I

    invoke-static {p1, v5, v3, v4}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    const-string p1, "onServerError: image text is null"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h0(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1, v5, v1, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b2()V

    return-void

    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onServerError response not valid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic G(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    return-object p0
.end method

.method private final G0()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b2()V

    return-void
.end method

.method public static final synthetic H(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/v;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h:Lcom/coloros/translate/screen/widget/v;

    return-object p0
.end method

.method private final H0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->y:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->r:Landroid/os/IOplusExInputCallBack;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->r:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->s0()Landroid/os/IOplusExInputCallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->r:Landroid/os/IOplusExInputCallBack;

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->r:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->a(Landroid/os/IOplusExInputCallBack;)V

    return-void
.end method

.method public static final synthetic I(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Landroid/os/IOplusExInputCallBack;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->r:Landroid/os/IOplusExInputCallBack;

    return-object p0
.end method

.method private final I0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->y:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->t0()Landroid/os/IOplusExInputCallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->a(Landroid/os/IOplusExInputCallBack;)V

    return-void
.end method

.method public static final synthetic J(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    return-object p0
.end method

.method private final J0(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->d:Lcom/coloros/translate/screen/translate/engine/language/j;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getSimpleNameResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->d:Lcom/coloros/translate/screen/translate/engine/language/j;

    invoke-virtual {v3}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/screen/translate/engine/language/a;->getSimpleNameResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    invoke-static {}, Lcom/coloros/translate/screen/utils/w;->e()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/coloros/translate/screen/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static final synthetic K(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->E:I

    return p0
.end method

.method private final K0()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->I0()V

    return-void
.end method

.method public static final synthetic L(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Landroid/os/IOplusExService;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l0()Landroid/os/IOplusExService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic M(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/k;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    return-object p0
.end method

.method private final M0(IZ)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->C:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E1(IZ)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D1(ZZ)V

    :goto_1
    return-void
.end method

.method public static final synthetic N(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    return-object p0
.end method

.method private final N0()V
    .locals 3

    new-instance v0, Lcom/coloros/translate/screen/widget/v;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->b:Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/screen/widget/v;-><init>(Landroid/widget/FrameLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h:Lcom/coloros/translate/screen/widget/v;

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->r0()Landroid/os/IOplusExInputCallBack;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->a(Landroid/os/IOplusExInputCallBack;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->p:Landroid/os/IOplusExInputCallBack;

    return-void
.end method

.method public static final synthetic O(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    return-object p0
.end method

.method private final O0(Z)V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    sget-object v2, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/screen/translate/engine/language/j;->A()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showLanguagePicker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->A()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/coloros/translate/screen/translate/engine/picker/e;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/coloros/translate/screen/translate/engine/picker/e;-><init>(Landroid/content/Context;)V

    sget-object v2, Ll2/b;->SCREEN_TRANSLATE:Ll2/b;

    invoke-virtual {v1, v2}, Lcom/coloros/translate/screen/translate/engine/picker/e;->G(Ll2/b;)V

    invoke-virtual {v1, p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->F(Lcom/coloros/translate/screen/translate/engine/picker/e$c;)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v4, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2}, Lcom/coloros/translate/screen/translate/engine/picker/e;->H(ZZ)V

    const-string p1, "LanguagePicker show"

    invoke-virtual {v0, v3, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic P(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    return-object p0
.end method

.method private final P0()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/widget/u1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/u1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic Q(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/engine/panel/e;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    return-object p0
.end method

.method private static final Q0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    const-string v1, "ScreenTranslationTranslationView"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->s:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->A()Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "showResultPanel isSupportUnitTranslate"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->q()V

    :cond_1
    new-instance v0, Lcom/coloros/translate/screen/translate/engine/panel/e;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    new-instance v2, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;

    invoke-direct {v2, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$i;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    new-instance v3, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$j;

    invoke-direct {v3, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$j;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/translate/screen/translate/engine/panel/e;-><init>(Landroid/content/Context;Lw8/a;Lw8/a;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->F()V

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->s:Z

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->A()Z

    move-result p0

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showResultPanel: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic R(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/l;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    return-object p0
.end method

.method private final R0(Lcom/coloros/translate/screen/widget/w;)V
    .locals 3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFullScreenTranslation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenTranslationTranslationView"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/coloros/translate/screen/widget/t1;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/t1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic S(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)[I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->D:[I

    return-object p0
.end method

.method private static final S0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFullScreenTranslation: isPendingDestroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/translate/screen/utils/v;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    const-string p0, "startFullScreenTranslation, landscape , return"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v3, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-eq v1, v3, :cond_2

    const-string p0, "startFullScreenTranslation, not TRANSLATION_MODEL_FULL_SCREEN , return"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->getAllVisibleWindowInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/app/OplusWindowInfo;

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v5, v3, Lcom/oplus/app/OplusWindowInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/oplus/app/OplusWindowInfo;->componentName:Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VisibleWindowInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/oplus/app/OplusWindowInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.oplus.screenshot"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->n()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->s()V

    return-void

    :cond_6
    :goto_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "screenshot is running"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic T(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->n0()V

    return-void
.end method

.method private final T0(J)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationTranslationView"

    const-string v2, "startFullTranslateRunnable"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->U0()V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->I:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/utils/t;->h(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic U(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->B:Z

    return p0
.end method

.method private final U0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationTranslationView"

    const-string v2, "stopFullTranslateRunnable"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->I:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/t;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic V(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->t:Z

    return p0
.end method

.method private final V0(Landroid/content/res/Configuration;)V
    .locals 8

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->D:[I

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->E:I

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->D:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, 0x1

    aget v1, v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWhenConfigurationChanged:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenTranslationTranslationView"

    invoke-virtual {v5, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->c:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    invoke-interface {v1, v5, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWhenConfigurationChanged updateViewLayout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->s()V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->x()V

    :cond_3
    new-instance v0, Lcom/coloros/translate/screen/widget/r1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/r1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    const-wide/16 v5, 0x96

    invoke-static {v0, v5, v6}, Lcom/coloros/translate/screen/utils/t;->h(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e1(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->F(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/k;->g()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 v0, 0x0

    invoke-static {p1, v2, v4, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->b()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h:Lcom/coloros/translate/screen/widget/v;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/v;->d()V

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->p:Landroid/os/IOplusExInputCallBack;

    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Landroid/os/IOplusExInputCallBack;->onInputEvent(Landroid/view/InputEvent;)V

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "startFullScreenRequest updateWhenConfigurationChanged"

    invoke-virtual {p1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->t:Z

    if-eqz p1, :cond_6

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T0(J)V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A1()V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A1()V

    :cond_8
    :goto_3
    return-void
.end method

.method public static final synthetic W(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->G0()V

    return-void
.end method

.method private static final W0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h0(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    :cond_0
    return-void
.end method

.method public static final synthetic X(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H0()V

    return-void
.end method

.method public static final synthetic Y(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->K0()V

    return-void
.end method

.method public static final synthetic Z(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->y:Z

    return-void
.end method

.method public static final synthetic a0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Landroid/os/IOplusExInputCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->p:Landroid/os/IOplusExInputCallBack;

    return-void
.end method

.method public static final synthetic b0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->t:Z

    return-void
.end method

.method public static final synthetic c0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->G:Z

    return-void
.end method

.method public static final synthetic d0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->P0()V

    return-void
.end method

.method public static final synthetic e0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/widget/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->R0(Lcom/coloros/translate/screen/widget/w;)V

    return-void
.end method

.method public static final synthetic f0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T0(J)V

    return-void
.end method

.method private final h0(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/panel/e;->q()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    return-void
.end method

.method private static final i0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 8

    const-string v0, "ScreenTranslationTranslationView"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/screen/widget/w;->g:Lcom/coloros/translate/screen/widget/w$a;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/coloros/translate/screen/widget/w$a;->f(Lcom/coloros/translate/screen/widget/w$a;Landroid/content/Context;Lcom/coloros/translate/screen/widget/w$b;ILjava/lang/Object;)Lcom/coloros/translate/screen/widget/w;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$e;

    invoke-direct {v6, p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$e;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/widget/w;)V

    invoke-direct {p0, v2, v5, v1, v6}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->u0(Lcom/coloros/translate/screen/translate/business/l;Landroid/graphics/Rect;Ljava/lang/Object;Lw8/a;)Lcom/coloros/translate/screen/translate/business/m;

    move-result-object v1

    iget-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->y:Z

    if-eqz v2, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "startFullScreenTranslation hasFingerInScreen"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->G:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startFullScreenTranslation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/coloros/translate/screen/R$string;->screenshot_reject_on_secure_window:I

    invoke-static {v1, v5, v3, v4}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b2()V

    return-void

    :cond_1
    iput-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->n:Lcom/coloros/translate/screen/translate/business/m;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    invoke-static {v2, v1, v5, v3, v4}, Lcom/coloros/translate/screen/translate/business/e$a;->a(Lcom/coloros/translate/screen/translate/business/e;Lcom/coloros/translate/screen/translate/business/m;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O1()V

    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFullScreenRequest:onFailure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->v:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    return-object p0
.end method

.method private final k0()J
    .locals 2

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->C:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private final l0()Landroid/os/IOplusExService;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->u:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IOplusExService;

    return-object p0
.end method

.method private final m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->i:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    return-object p0
.end method

.method private final n0()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/coloros/translate/utils/j$a;->c(Lcom/coloros/translate/utils/j$a;JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationTranslationView"

    const-string v2, "handleCloseSystemDialogs"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/o1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/o1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k0()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coloros/translate/screen/utils/t;->h(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final o0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseSystemDialogs invoke:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v1, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    sget v0, Lcom/coloros/translate/screen/R$string;->screen_error_not_support_full:I

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o1()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v1, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->D(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A1()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h0(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->s()V

    :cond_3
    return-void
.end method

.method private final p0(Lcom/coloros/translate/screen/widget/w;Lcom/coloros/translate/screen/widget/w;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/w;->a()Lcom/coloros/translate/screen/widget/w$b;

    move-result-object p0

    invoke-virtual {p2}, Lcom/coloros/translate/screen/widget/w;->a()Lcom/coloros/translate/screen/widget/w$b;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final q0(Lcom/coloros/translate/screen/translate/business/m;)Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->n:Lcom/coloros/translate/screen/translate/business/m;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result p1

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m:I

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic r(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->C0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final r0()Landroid/os/IOplusExInputCallBack;
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-object v0
.end method

.method public static synthetic s(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->E0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final s0()Landroid/os/IOplusExInputCallBack;
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFreeExInputCallback$1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-object v0
.end method

.method public static synthetic t(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->S0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

.method private final t0()Landroid/os/IOplusExInputCallBack;
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFullExInputCallback$1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-object v0
.end method

.method public static synthetic u(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->y0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V

    return-void
.end method

.method private final u0(Lcom/coloros/translate/screen/translate/business/l;Landroid/graphics/Rect;Ljava/lang/Object;Lw8/a;)Lcom/coloros/translate/screen/translate/business/m;
    .locals 7

    new-instance v6, Lcom/coloros/translate/screen/translate/business/m;

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m:I

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/screen/translate/business/m;-><init>(ILcom/coloros/translate/screen/translate/business/l;Landroid/graphics/Rect;Ljava/lang/Object;Lw8/a;)V

    return-object v6
.end method

.method public static synthetic v(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V

    return-void
.end method

.method public static synthetic w(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->W0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

.method public static synthetic x(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->i0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

.method public static synthetic y(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->Q0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

.method private static final y0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onIntercepted"

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q0(Lcom/coloros/translate/screen/translate/business/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "onIntercepted response not valid"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h0(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b2()V

    return-void
.end method

.method public static synthetic z(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->F0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;I)V

    return-void
.end method


# virtual methods
.method public final L0()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B1()V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->M()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLanguagePickerDismiss hasChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B1()V

    :cond_0
    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v4, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->I0()V

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/k;->g()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 v3, 0x0

    invoke-static {p1, v3, v5, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->b()V

    const-string p1, "startFullScreenRequest onLanguagePickerDismiss"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x14d

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T0(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v2, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v5, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->K(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;JILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/RectF;)V
    .locals 6

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResizeSteady tagRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenTranslationTranslationView"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->s:Z

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$g;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$g;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->u0(Lcom/coloros/translate/screen/translate/business/l;Landroid/graphics/Rect;Ljava/lang/Object;Lw8/a;)Lcom/coloros/translate/screen/translate/business/m;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->n:Lcom/coloros/translate/screen/translate/business/m;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    const/4 v0, 0x2

    invoke-static {p0, p1, v1, v0, v3}, Lcom/coloros/translate/screen/translate/business/e$a;->a(Lcom/coloros/translate/screen/translate/business/e;Lcom/coloros/translate/screen/translate/business/m;IILjava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/coloros/translate/screen/widget/c2;Lcom/coloros/translate/screen/widget/c2;)V
    .locals 3

    const-string v0, "oldStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->NONE:Lcom/coloros/translate/screen/translate/business/l;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H0()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v2, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->z:Z

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->I0()V

    :goto_1
    sget-object v0, Lcom/coloros/translate/screen/widget/c2;->FULL:Lcom/coloros/translate/screen/widget/c2;

    if-ne p1, v0, :cond_3

    if-eq p2, v0, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->r()V

    :cond_3
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A1()V

    return-void
.end method

.method public e(Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 1

    const-string v0, "viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/w1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/screen/widget/w1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 3

    const-string v0, "viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationTranslationView"

    const-string v2, "onNotSupportApp"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/x1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/screen/widget/x1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k0()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/screen/utils/t;->h(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public g()V
    .locals 4

    const-string v0, "ScreenTranslationTranslationView"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    instance-of v2, v1, Lcom/coloros/translate/screen/ScreenTranslationService;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/coloros/translate/screen/ScreenTranslationService;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/ScreenTranslationService;->j()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    const-string v1, "event_screen_exit"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2, v3}, Lcom/coloros/translate/screen/utils/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "exit screen translation"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "exit screen translation onFailure"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final g0(I)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->V0(I)V

    return-void
.end method

.method public h(Lcom/coloros/translate/screen/translate/business/m;I)V
    .locals 1

    const-string v0, "viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/y1;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/translate/screen/widget/y1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;I)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/p1;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/translate/screen/widget/p1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Z)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickLanguageChoose "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->U0()V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {v0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->C(Z)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/business/k;->g()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->O0(Z)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    const-string p1, "event_screen_language"

    const/4 v0, 0x4

    invoke-static {p0, p1, v3, v0, v3}, Lcom/coloros/translate/screen/utils/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public k(Z)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickFull "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string p1, "startFullScreenRequest onClickFull"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->z:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {p1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->setGoingHideFloatView(Z)V

    const-wide/16 v0, 0x15e

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T0(J)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T0(J)V

    :goto_0
    const-string p1, "event_screen_full"

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->J0(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->U0()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/k;->g()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->b()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    sget-object p1, Lcom/coloros/translate/screen/translate/business/l;->NONE:Lcom/coloros/translate/screen/translate/business/l;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    :goto_1
    return-void
.end method

.method public l(Z)V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickFree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->U0()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/k;->g()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1, v4, v1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->b()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->q:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {p1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->G:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->A1()V

    sget p0, Lcom/coloros/translate/screen/R$string;->screenshot_reject_on_secure_window:I

    const/4 p1, 0x2

    invoke-static {p0, v4, p1, v3}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    const-string p0, "onClickFree :isSecurityLayer"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->N()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->N0()V

    const-string p1, "event_screen_free"

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->J0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1, v4, v1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->D(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;ZILjava/lang/Object;)V

    sget-object p1, Lcom/coloros/translate/screen/translate/business/l;->NONE:Lcom/coloros/translate/screen/translate/business/l;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->o:Lcom/coloros/translate/screen/translate/business/l;

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->r:Landroid/os/IOplusExInputCallBack;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    :goto_0
    return-void
.end method

.method public m(Lcom/coloros/translate/screen/translate/business/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/z1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/coloros/translate/screen/widget/z1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->setGoingHideFloatView(Z)V

    return-void
.end method

.method public o(Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 1

    const-string v0, "viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/v1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/screen/widget/v1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const-string v1, "ScreenTranslationTranslationView"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "onConfigurationChanged:toolbar is not AttachedToWindow"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->V0(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationTranslationView"

    const-string v2, "maybeCancelResizeSteady"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/business/k;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->s:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h0(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    return-void
.end method

.method public final v0(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->V0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final w0(IZ)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationTranslationView"

    const-string v2, "onCreate"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->w:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->x:Z

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/coloros/translate/screen/utils/b;->a(Landroid/content/Context;I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->M0(IZ)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->setCallback(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;)V

    new-instance p1, Lcom/coloros/translate/screen/utils/m;

    iget-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$f;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$f;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-direct {p1, p2, v0}, Lcom/coloros/translate/screen/utils/m;-><init>(Landroid/content/Context;Lw8/l;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->F:Lcom/coloros/translate/screen/utils/m;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/utils/m;->a()V

    return-void
.end method

.method public final x0()V
    .locals 4

    const-string v0, "ScreenTranslationTranslationView"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "onDestroy"

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->U0()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->A:Z

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->x:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->x:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j0()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->c()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->g:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->L()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v1()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->l:Lcom/coloros/translate/screen/translate/business/k;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/business/k;->k()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->f:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->q()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->k:Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFullImageHolder;->d()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->j:Lcom/coloros/translate/screen/translate/engine/picker/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->s()V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-direct {p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->h0(Lcom/coloros/translate/screen/translate/engine/panel/e;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->e:Lcom/coloros/translate/screen/widget/ScreenTranslationRootView;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->F:Lcom/coloros/translate/screen/utils/m;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/screen/utils/m;->b()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFailure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final z0()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->m0()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B1()V

    return-void
.end method
