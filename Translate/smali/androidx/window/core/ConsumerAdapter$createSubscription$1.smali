.class public final Landroidx/window/core/ConsumerAdapter$createSubscription$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/core/ConsumerAdapter$Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/core/ConsumerAdapter;->d(Ljava/lang/Object;Lc9/c;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lw8/l;)Landroidx/window/core/ConsumerAdapter$Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->b:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->c:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
