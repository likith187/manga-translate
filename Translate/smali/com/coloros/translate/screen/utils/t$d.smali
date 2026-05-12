.class final Lcom/coloros/translate/screen/utils/t$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/utils/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/t$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/t$d;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/t$d;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/t$d;->INSTANCE:Lcom/coloros/translate/screen/utils/t$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/HandlerThread;
    .locals 2

    .line 2
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "screen_work_thread"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/utils/t$d;->invoke()Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method
