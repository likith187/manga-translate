.class public final Landroidx/activity/ComponentActivity$g;
.super Landroidx/activity/result/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic i:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$g;->i:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Landroidx/activity/result/d;-><init>()V

    return-void
.end method

.method public static synthetic q(Landroidx/activity/ComponentActivity$g;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentActivity$g;->t(Landroidx/activity/ComponentActivity$g;ILandroid/content/IntentSender$SendIntentException;)V

    return-void
.end method

.method public static synthetic r(Landroidx/activity/ComponentActivity$g;ILd/a$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentActivity$g;->s(Landroidx/activity/ComponentActivity$g;ILd/a$a;)V

    return-void
.end method

.method private static final s(Landroidx/activity/ComponentActivity$g;ILd/a$a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ld/a$a;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/d;->f(ILjava/lang/Object;)Z

    return-void
.end method

.method private static final t(Landroidx/activity/ComponentActivity$g;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/activity/result/d;->e(IILandroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public i(ILd/a;Ljava/lang/Object;Landroidx/core/app/b;)V
    .locals 9

    const-string v0, "contract"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/ComponentActivity$g;->i:Landroidx/activity/ComponentActivity;

    invoke-virtual {p2, v1, p3}, Ld/a;->b(Landroid/content/Context;Ljava/lang/Object;)Ld/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Landroidx/activity/k;

    invoke-direct {p3, p0, p1, v0}, Landroidx/activity/k;-><init>(Landroidx/activity/ComponentActivity$g;ILd/a$a;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p2, v1, p3}, Ld/a;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object v8, p4

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroidx/core/app/b;->b()Landroid/os/Bundle;

    move-result-object p3

    :goto_0
    move-object v8, p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p0, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    :cond_4
    invoke-static {v1, p0, p1}, Landroidx/core/app/a;->o(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->d()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->a()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->b()I

    move-result v5

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest;->c()I

    move-result v6

    const/4 v7, 0x0

    move v3, p1

    invoke-static/range {v1 .. v8}, Landroidx/core/app/a;->t(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Landroidx/activity/l;

    invoke-direct {p4, p0, p1, p2}, Landroidx/activity/l;-><init>(Landroidx/activity/ComponentActivity$g;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    invoke-static {v1, p2, p1, v8}, Landroidx/core/app/a;->s(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_2
    return-void
.end method
