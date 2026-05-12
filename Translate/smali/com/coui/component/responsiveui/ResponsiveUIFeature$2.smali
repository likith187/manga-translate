.class public final Lcom/coui/component/responsiveui/ResponsiveUIFeature$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/ResponsiveUIFeature;-><init>(Landroidx/activity/ComponentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;


# direct methods
.method constructor <init>(Lcom/coui/component/responsiveui/ResponsiveUIFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature$2;->a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreate(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/f;->onCreate(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/s;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/f;->onDestroy(Landroidx/lifecycle/s;)V

    iget-object p0, p0, Lcom/coui/component/responsiveui/ResponsiveUIFeature$2;->a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;

    invoke-static {p0}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->access$getActivityReference$p(Lcom/coui/component/responsiveui/ResponsiveUIFeature;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->access$getFeatureMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/f;->onPause(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/f;->onResume(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/f;->onStart(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/s;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/f;->onStop(Landroidx/lifecycle/s;)V

    return-void
.end method
