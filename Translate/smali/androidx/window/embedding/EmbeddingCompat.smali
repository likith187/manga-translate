.class public final Landroidx/window/embedding/EmbeddingCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/embedding/EmbeddingInterfaceCompat;


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/EmbeddingCompat$Companion;
    }
.end annotation


# static fields
.field public static final d:Landroidx/window/embedding/EmbeddingCompat$Companion;


# instance fields
.field private final a:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

.field private final b:Landroidx/window/embedding/EmbeddingAdapter;

.field private final c:Landroidx/window/core/ConsumerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/EmbeddingCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingCompat;->d:Landroidx/window/embedding/EmbeddingCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;Landroidx/window/embedding/EmbeddingAdapter;Landroidx/window/core/ConsumerAdapter;)V
    .locals 1

    const-string v0, "embeddingExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumerAdapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingCompat;->a:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    iput-object p2, p0, Landroidx/window/embedding/EmbeddingCompat;->b:Landroidx/window/embedding/EmbeddingAdapter;

    iput-object p3, p0, Landroidx/window/embedding/EmbeddingCompat;->c:Landroidx/window/core/ConsumerAdapter;

    return-void
.end method

.method public static final synthetic b(Landroidx/window/embedding/EmbeddingCompat;)Landroidx/window/embedding/EmbeddingAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/EmbeddingCompat;->b:Landroidx/window/embedding/EmbeddingAdapter;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V
    .locals 4

    const-string v0, "embeddingCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/embedding/EmbeddingCompat;->c:Landroidx/window/core/ConsumerAdapter;

    iget-object v1, p0, Landroidx/window/embedding/EmbeddingCompat;->a:Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    const-class v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v2

    new-instance v3, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;

    invoke-direct {v3, p1, p0}, Landroidx/window/embedding/EmbeddingCompat$setEmbeddingCallback$1;-><init>(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;Landroidx/window/embedding/EmbeddingCompat;)V

    const-string p0, "setSplitInfoCallback"

    invoke-virtual {v0, v1, v2, p0, v3}, Landroidx/window/core/ConsumerAdapter;->a(Ljava/lang/Object;Lc9/c;Ljava/lang/String;Lw8/l;)V

    return-void
.end method
