.class public abstract Lcom/coloros/translate/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/base/BaseActivity$a;,
        Lcom/coloros/translate/base/BaseActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coloros/translate/base/q;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;"
    }
.end annotation


# static fields
.field public static final n:Lcom/coloros/translate/base/BaseActivity$a;


# instance fields
.field private a:Lcom/coloros/translate/base/BaseActivity$b;

.field private final b:Ln8/j;

.field private final c:Lcom/coloros/translate/utils/n$a;

.field private final f:Landroid/window/OnBackInvokedCallback;

.field private h:Landroid/window/OnBackInvokedCallback;

.field private final i:Lcom/coloros/translate/observer/e$a;

.field private final j:Ln8/j;

.field private k:Landroid/media/AudioManager$OnModeChangedListener;

.field private final l:Ln8/j;

.field private volatile m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/base/BaseActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/base/BaseActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/base/BaseActivity;->n:Lcom/coloros/translate/base/BaseActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/coloros/translate/base/BaseActivity$e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/BaseActivity$e;-><init>(Lcom/coloros/translate/base/BaseActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->b:Ln8/j;

    new-instance v0, Lcom/coloros/translate/utils/n$a;

    invoke-direct {v0}, Lcom/coloros/translate/utils/n$a;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->c:Lcom/coloros/translate/utils/n$a;

    new-instance v0, Lcom/coloros/translate/base/e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/e;-><init>(Lcom/coloros/translate/base/BaseActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->f:Landroid/window/OnBackInvokedCallback;

    new-instance v0, Lcom/coloros/translate/base/BaseActivity$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/BaseActivity$d;-><init>(Lcom/coloros/translate/base/BaseActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->i:Lcom/coloros/translate/observer/e$a;

    new-instance v0, Lcom/coloros/translate/base/BaseActivity$f;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/BaseActivity$f;-><init>(Lcom/coloros/translate/base/BaseActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->j:Ln8/j;

    new-instance v0, Lcom/coloros/translate/base/BaseActivity$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/BaseActivity$c;-><init>(Lcom/coloros/translate/base/BaseActivity;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->l:Ln8/j;

    return-void
.end method

.method private static final B0(Lcom/coloros/translate/base/BaseActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BaseActivity"

    const-string v2, "registerOnBackInvokedCallback from onBackInvoked"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private final C0()V
    .locals 2

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->k:Landroid/media/AudioManager$OnModeChangedListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;->m0()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseActivity"

    const-string v1, "unRegisterModeChange error"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic e0(Lcom/coloros/translate/base/BaseActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->z0(Lcom/coloros/translate/base/BaseActivity;I)V

    return-void
.end method

.method public static synthetic f0(Lw8/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->t0(Lw8/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g0(Lcom/coloros/translate/base/BaseActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/base/BaseActivity;->B0(Lcom/coloros/translate/base/BaseActivity;)V

    return-void
.end method

.method public static synthetic h0(Lcom/coloros/translate/base/BaseActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/base/BaseActivity;->i0(Lcom/coloros/translate/base/BaseActivity;)V

    return-void
.end method

.method private static final i0(Lcom/coloros/translate/base/BaseActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BaseActivity"

    const-string v2, "backInvokedCallback"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final m0()Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseActivity;->l:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method private final p0()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseActivity;->j:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final t0(Lw8/l;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final y0()V
    .locals 5

    const-string v0, "BaseActivity"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;->m0()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lcom/coloros/translate/base/BaseActivity;->m:I

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget v2, p0, Lcom/coloros/translate/base/BaseActivity;->m:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerModeChange currentMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/coloros/translate/base/d;

    invoke-direct {v1, p0}, Lcom/coloros/translate/base/d;-><init>(Lcom/coloros/translate/base/BaseActivity;)V

    iput-object v1, p0, Lcom/coloros/translate/base/BaseActivity;->k:Landroid/media/AudioManager$OnModeChangedListener;

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;->m0()Landroid/media/AudioManager;

    move-result-object p0

    sget-object v2, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {v2}, Lcom/coloros/translate/utils/w0;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "registerModeChange error"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final z0(Lcom/coloros/translate/base/BaseActivity;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerModeChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/coloros/translate/base/BaseActivity;->m:I

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->v0()V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->r0()Z

    move-result v0

    const-string v1, "BaseActivity"

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "registerOnBackInvokedCallback register backInvokedCallback"

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/base/c;->a(Lcom/coloros/translate/base/BaseActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseActivity;->f:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v2, p0}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/coloros/translate/base/c;->a(Lcom/coloros/translate/base/BaseActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/translate/base/BaseActivity;->f:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v3}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "registerOnBackInvokedCallback register finishAndRemoveTaskCallback"

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/window/SystemOnBackInvokedCallbacks;->finishAndRemoveTaskCallback(Landroid/app/Activity;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->h:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/coloros/translate/base/c;->a(Lcom/coloros/translate/base/BaseActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    invoke-static {p0}, Lcom/coloros/translate/base/c;->a(Lcom/coloros/translate/base/BaseActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/base/f;

    invoke-direct {v1, p0}, Lcom/coloros/translate/base/f;-><init>(Lcom/coloros/translate/base/BaseActivity;)V

    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "getStackTrace(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onBackInvoked"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v4, "BaseActivity"

    const-string v5, "finishAndRemoveTask from onBackInvoked"

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public final getStatusBarView()Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/i1;->a:Lcom/coloros/translate/utils/i1$a;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getBaseContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/i1$a;->c(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p0}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object p0

    sget v2, Lcom/support/appcompat/R$color;->coui_color_background_with_card:I

    invoke-static {p0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public final j0()Z
    .locals 4

    sget-object v0, Lcom/coloros/translate/base/q;->f:Lcom/coloros/translate/base/q$a;

    iget p0, p0, Lcom/coloros/translate/base/BaseActivity;->m:I

    invoke-virtual {v0, p0}, Lcom/coloros/translate/base/q$a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget v0, Lcom/coloros/translate/R$string;->in_call_and_try_later:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInCallMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public abstract k0()Ljava/lang/Class;
.end method

.method protected abstract l0()I
.end method

.method protected final n0()Lcom/coloros/translate/observer/e$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseActivity;->i:Lcom/coloros/translate/observer/e$a;

    return-object p0
.end method

.method protected final o0()Lcom/coloros/translate/base/q;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseActivity;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/base/q;

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/coloros/translate/base/BaseActivity;->c:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/n$a;->d(J)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->l0()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/base/q;->k()V

    const-string p1, "oplus_system_folding_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "getUriFor(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/base/BaseActivity$b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/coloros/translate/base/BaseActivity$b;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->a:Lcom/coloros/translate/base/BaseActivity$b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/base/BaseActivity;->a:Lcom/coloros/translate/base/BaseActivity$b;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "getWindow(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/utils/f0;->b(Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;->p0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;->y0()V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->A0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->c:Lcom/coloros/translate/utils/n$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/n$a;->c(J)V

    iget-object v0, p0, Lcom/coloros/translate/base/BaseActivity;->a:Lcom/coloros/translate/base/BaseActivity$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/base/BaseActivity;->a:Lcom/coloros/translate/base/BaseActivity$b;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;->C0()V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/coloros/translate/base/BaseActivity;->h:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/coloros/translate/base/c;->a(Lcom/coloros/translate/base/BaseActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/base/BaseActivity;->h:Landroid/window/OnBackInvokedCallback;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_2
    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    invoke-static {p0}, Lcom/coloros/translate/base/c;->a(Lcom/coloros/translate/base/BaseActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/base/BaseActivity;->f:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_3
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string p2, "Microphone permission has been denied"

    const-string v0, "Microphone permission is granted"

    const-string v1, "permission_granted"

    const-string v2, "BaseActivity"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    array-length v6, p3

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-nez v6, :cond_2

    aget p3, p3, v4

    if-nez p3, :cond_2

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p3, v2, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {p1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p2, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {p2}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/coloros/translate/permission/a;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    array-length v6, p3

    if-nez v6, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    if-nez v6, :cond_5

    aget p3, p3, v4

    if-nez p3, :cond_5

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    sget-object p3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p3, v2, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_3
    invoke-virtual {p1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p2, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {p2}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/coloros/translate/permission/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method protected final q0()Lcom/coloros/translate/utils/n$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/BaseActivity;->c:Lcom/coloros/translate/utils/n$a;

    return-object p0
.end method

.method public r0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final s0(Landroidx/lifecycle/y;Lw8/l;)V
    .locals 1

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/base/g;

    invoke-direct {v0, p2}, Lcom/coloros/translate/base/g;-><init>(Lw8/l;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public u0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BaseActivity"

    const-string v2, "onAudioFocusLost"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->j()V

    return-void
.end method

.method public v0()V
    .locals 2

    sget-object v0, Lcom/coloros/translate/base/q;->f:Lcom/coloros/translate/base/q$a;

    iget v1, p0, Lcom/coloros/translate/base/BaseActivity;->m:I

    invoke-virtual {v0, v1}, Lcom/coloros/translate/base/q$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->u0()V

    :cond_0
    return-void
.end method

.method public final w0()V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/o0;->b()Lkotlinx/coroutines/y;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v0

    new-instance v3, Lcom/coloros/translate/base/BaseActivity$g;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/coloros/translate/base/BaseActivity$g;-><init>(Lkotlin/coroutines/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method public x0()V
    .locals 3

    sget p0, Lcom/coloros/translate/R$string;->no_network:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    return-void
.end method
