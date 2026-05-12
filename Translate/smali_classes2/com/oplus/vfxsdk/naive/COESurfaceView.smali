.class public Lcom/oplus/vfxsdk/naive/COESurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/COESurfaceView$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/oplus/vfxsdk/naive/COESurfaceView$a;


# instance fields
.field private a:Lcom/oplus/vfxsdk/naive/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/naive/COESurfaceView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/naive/COESurfaceView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/COESurfaceView;->b:Lcom/oplus/vfxsdk/naive/COESurfaceView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COESurfaceView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COESurfaceView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COESurfaceView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/oplus/vfxsdk/naive/COESurfaceView$b;

    invoke-direct {v1, p0}, Lcom/oplus/vfxsdk/naive/COESurfaceView$b;-><init>(Lcom/oplus/vfxsdk/naive/COESurfaceView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public final getEngine()Lcom/oplus/vfxsdk/naive/a;
    .locals 4

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/COESurfaceView;->a:Lcom/oplus/vfxsdk/naive/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/oplus/vfxsdk/naive/a;-><init>(Landroid/content/Context;Li8/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/COESurfaceView;->a:Lcom/oplus/vfxsdk/naive/a;

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COESurfaceView;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COESurfaceView;->a:Lcom/oplus/vfxsdk/naive/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->u()V

    :cond_0
    return-void
.end method
