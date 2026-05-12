.class public final Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;
.super Lcom/coloros/translate/base/BaseEarPhoneActivity;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;


# annotations
.annotation runtime Lcom/coloros/translate/ui/earphone/ConfigAudioChange;
.end annotation

.annotation runtime Lcom/coloros/translate/ui/earphone/ConfigEarControl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BaseEarPhoneActivity<",
        "Lcom/coloros/translate/ui/simultaneous/main/m;",
        ">;",
        "Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;"
    }
.end annotation


# static fields
.field public static final N:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$a;


# instance fields
.field private final A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

.field private final B:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;

.field private C:Landroidx/activity/result/b;

.field private final D:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;

.field private final E:Landroidx/lifecycle/b0;

.field private final F:Landroidx/lifecycle/b0;

.field private final G:Landroidx/lifecycle/b0;

.field private final H:Landroidx/lifecycle/b0;

.field private final I:Landroidx/lifecycle/b0;

.field private final J:Landroidx/lifecycle/b0;

.field private final K:Landroidx/lifecycle/b0;

.field private final L:Landroidx/lifecycle/b0;

.field private final M:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->N:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;-><init>()V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->B:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->D:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/c;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->E:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/d;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->F:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/e;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->G:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/f;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/f;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->H:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/g;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->I:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/h;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/h;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->J:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/i;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/i;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->K:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/j;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/j;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->L:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/k;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/k;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->M:Landroidx/lifecycle/b0;

    return-void
.end method

.method private final A1(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/a;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/a;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->C:Landroidx/activity/result/b;

    return-void
.end method

.method private static final B1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallBack permission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M0()V

    :cond_0
    return-void
.end method

.method private final C1()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainActivity"

    const-string v2, "registerDataUpdate"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->V()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->d0(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->I1()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->Q()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->J:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->S()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->K:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->T()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->M:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->X()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->E:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->a0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->F:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->G:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->N()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->L:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->e0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->H:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->o0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->I:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/base/q;->i(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method private final D1()V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->V()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->Y0()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->x(Z)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->I0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->a0()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->v0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private static final E1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observe isSaveEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SimultaneousMainActivity"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->R()V

    return-void
.end method

.method private final F1(Z)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEarPhoneStatus EarPhoneStatusUtils earConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimultaneousMainActivity"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/utils/t;->b(Z)V

    return-void
.end method

.method private final G1(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "coloros.intent.action.SIMULTANEOUS_TRANS"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "4"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->B(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "coloros.intent.action.SIMULTANEOUS_TRANS_SHORTCUT"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "3"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->B(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "oplus.translate.action.intent.realtime_translation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "2"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->B(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "extra_from"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "from_cube"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "5"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->B(Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->B(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static final H1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observe istoClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->V()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/widget/LanguageChooseView;->p()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->W()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->p()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->V()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/widget/LanguageChooseView;->q()V

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->W()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->q()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final I1()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainActivity"

    const-string v2, "unRegisterDataUpdate"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->Q()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->J:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->S()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->K:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->T()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->M:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->X()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->E:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->a0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->F:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->G:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->N()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->L:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->e0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->H:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->o0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->I:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/base/q;->m(Landroidx/lifecycle/a0;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public static synthetic c1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->y1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    return-void
.end method

.method public static synthetic d1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->B1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    return-void
.end method

.method public static synthetic e1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->r1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    return-void
.end method

.method public static synthetic f1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->w1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;J)V

    return-void
.end method

.method public static synthetic g1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->u1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V

    return-void
.end method

.method public static synthetic h1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->E1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    return-void
.end method

.method public static synthetic i1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->x1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    return-void
.end method

.method public static synthetic j1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->t1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V

    return-void
.end method

.method public static synthetic k1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->H1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    return-void
.end method

.method public static synthetic l1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->v1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    return-void
.end method

.method public static synthetic m1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->z1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V

    return-void
.end method

.method public static final synthetic n1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/m;
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    return-object p0
.end method

.method public static final synthetic o1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    return-object p0
.end method

.method public static final synthetic p1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->D1()V

    return-void
.end method

.method private final q1()V
    .locals 4

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method private static final r1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observe isfromClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->V()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/widget/LanguageChooseView;->i()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->W()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->i()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->V()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/widget/LanguageChooseView;->j()V

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->W()Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/widget/LanguageChooseView;->j()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final t1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainActivity"

    const-string v2, "observe mAddItem"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->V()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->V()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/collections/o;->d0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo2/a;->d()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->b1(J)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->v0(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final u1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainActivity"

    const-string v2, "observe mBottomRefreshIndex"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->V()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->c1(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final v1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "observe mCancelWhenNoNet"

    const-string v2, "SimultaneousMainActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->D0(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->h0()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p0()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "observe mCancelWhenNoNet auto save"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->u(ZZ)V

    :cond_1
    return-void
.end method

.method private static final w1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;J)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainActivity"

    const-string v2, "observe mCurrentHighLightObserver"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->a1(J)V

    return-void
.end method

.method private static final x1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->u(ZZ)V

    return-void
.end method

.method private static final y1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observe mPlayButtonStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->F(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->h0()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->p0()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "observe mPlayButtonStatus isBackground"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->u(ZZ)V

    :cond_1
    return-void
.end method

.method private static final z1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->g1(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 3

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Lr/e;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->C:Landroidx/activity/result/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public F0(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BasePrivateActivity;->F0(Landroid/content/Intent;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/e;->l(Lcom/coloros/translate/observer/e$a;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->Q0()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {p0}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->E0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->F1(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M()V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->G1(Landroid/content/Intent;)V

    return-void
.end method

.method public S0()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->S0()V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {p0}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->E0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->F1(Z)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEarConnect error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SimultaneousMainActivity"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public T0()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->T0()V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->E0(Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->F1(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->M0()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEarConnectDisconnect error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SimultaneousMainActivity"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b1()V
    .locals 1

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->b1()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->c0()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->O(Z)V

    return-void
.end method

.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->H0(Z)V

    invoke-super {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->finish()V

    return-void
.end method

.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    return-object p0
.end method

.method public l(Lcom/coloros/translate/b;Lcom/coloros/translate/b;)V
    .locals 1

    const-string v0, "mCurrentLeftLanguage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCurrentRightLanguage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/m;->O0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_simultaneous_main:I

    return p0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->V0(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->U0()V

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "#00000000"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    and-int/lit16 p1, p1, -0x2001

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousMainActivity"

    const-string v1, "onCreate"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->O0(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->P0(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->N0(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$b;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->t0()V

    sget-object p1, Lcom/coloros/translate/ui/simultaneous/main/m;->W:Lcom/coloros/translate/ui/simultaneous/main/m$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/m$a;->a(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->C1()V

    invoke-direct {p0, p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A1(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {p0}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->E0(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->D:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.coloros.translate.ACTIVE_SIMULTANEOUS_FINISH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/coloros/translate/utils/q;->b(Z)V

    invoke-static {}, Lg2/a;->c()V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->B:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;

    invoke-static {p0}, Lg2/a;->e(Lg2/a$a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onDestroy()V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->q0()Lcom/coloros/translate/utils/n$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/n;->d0(Lcom/coloros/translate/utils/n$a;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainActivity"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/main/m;->W:Lcom/coloros/translate/ui/simultaneous/main/m$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m$a;->a(Z)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->I1()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->H()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->B0()V

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/utils/c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/c;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->n0()Lcom/coloros/translate/observer/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/observer/e;->n(Lcom/coloros/translate/observer/e$a;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->B:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;

    invoke-static {v0}, Lg2/a;->f(Lg2/a$a;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->D:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$notifyFinishReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousMainActivity"

    const-string v1, "onPause true"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/permission/a;->c:Lcom/coloros/translate/permission/a$b;

    invoke-virtual {p0}, Lcom/coloros/translate/permission/a$b;->a()Lcom/coloros/translate/permission/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/permission/a;->h()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/coloros/translate/base/BasePrivateActivity;->onRestart()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->q1()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->y0(Z)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousMainActivity"

    const-string v1, "onRestart false"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isRecording"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreInstanceState isRecording:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimultaneousMainActivity"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->L0(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->y0(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->C0()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->M0()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->d0()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SimultaneousMainActivity"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->c0()Z

    move-result v0

    const-string v1, "isRecording"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->B0(Z)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->c0()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState isRecording:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimultaneousMainActivity"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->onStop()V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->y0(Z)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousMainActivity"

    const-string v1, "onStop true"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->e0()Landroidx/lifecycle/a0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->o0()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final s1()I
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->a0()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public u(ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->M0()V

    if-eqz p1, :cond_1

    sget-object p1, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/c;->F()V

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickSaveBth delayTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimultaneousMainActivity"

    invoke-virtual {p1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    invoke-static {v0, v1, p1}, Lcom/coloros/translate/utils/z0;->c(JLw8/a;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->finish()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->b0()V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    new-instance p2, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$d;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$d;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->J0(Lw8/a;)V

    sget-object p1, Lcom/coloros/translate/ui/simultaneous/utils/c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "getApplicationContext(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/simultaneous/utils/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public w()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public x(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->K0(Lcom/coloros/translate/ui/simultaneous/main/m;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->F1(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->A:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->b1(J)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->L0()V

    :goto_0
    return-void
.end method

.method public x0()V
    .locals 4

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->o0()Lcom/coloros/translate/base/q;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/coloros/translate/base/BaseActivity;->x0()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainActivity"

    const-string v2, "NetStatusCallBack onLost"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/b;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
