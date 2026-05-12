.class public Lcom/coloros/translate/base/q;
.super Landroidx/lifecycle/a;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/base/q$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/coloros/translate/base/q$a;


# instance fields
.field private final c:Ln8/j;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/base/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/base/q$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/base/q;->f:Lcom/coloros/translate/base/q$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    sget-object p1, Lcom/coloros/translate/base/q$b;->INSTANCE:Lcom/coloros/translate/base/q$b;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/base/q;->c:Ln8/j;

    return-void
.end method

.method private final f()Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/base/q;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method


# virtual methods
.method protected d()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/s0;->d()V

    return-void
.end method

.method protected final g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/base/q;->d:Z

    return p0
.end method

.method public final h(Z)Z
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteMusic\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/base/q;->f()Landroid/media/AudioManager;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    iput-boolean v0, p0, Lcom/coloros/translate/base/q;->d:Z

    if-ne p1, v1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/base/q;->f()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    iput-boolean v1, p0, Lcom/coloros/translate/base/q;->d:Z

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public final i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V
    .locals 2

    const-string p0, "liveData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "observer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseViewModel"

    const-string v1, "removeObserver"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/y;->h(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public j()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseViewModel"

    const-string v1, "onAudioFocusLost"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/base/q;->e:Z

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "BaseViewModel"

    const-string v3, "registerAudioFocusChangeListener"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    return-void
.end method

.method public final m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V
    .locals 2

    const-string p0, "liveData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "observer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseViewModel"

    const-string v1, "removeObserver"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/y;->l(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public final n()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/base/q;->e:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BaseViewModel"

    const-string v2, "unregisterAudioFocusChangeListener"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/base/q;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lost focus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/base/q;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->j()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/base/q;->d:Z

    :goto_0
    return-void
.end method
