.class final Lcom/coloros/translate/screen/utils/t$c;
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
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/t$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/t$c;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/t$c;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/t$c;->INSTANCE:Lcom/coloros/translate/screen/utils/t$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Looper;
    .locals 0

    .line 1
    sget-object p0, Lcom/coloros/translate/screen/utils/t;->INSTANCE:Lcom/coloros/translate/screen/utils/t;

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/t;->a(Lcom/coloros/translate/screen/utils/t;)Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/screen/utils/t$c;->invoke()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
