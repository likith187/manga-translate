.class public abstract Lcom/coloros/translate/utils/h1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/utils/h1$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/coloros/translate/utils/h1$a;

.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/utils/h1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/h1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/utils/h1;->b:Lcom/coloros/translate/utils/h1$a;

    const-string v0, "WeakHandler"

    sput-object v0, Lcom/coloros/translate/utils/h1;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/utils/h1;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 1

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coloros/translate/utils/h1;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Message;Ljava/lang/Object;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/utils/h1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sget-object p1, Lcom/coloros/translate/utils/h1;->c:Ljava/lang/String;

    const-string v0, "ref.get is null."

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/h1;->a(Landroid/os/Message;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
