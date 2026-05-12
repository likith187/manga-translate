.class final Landroidx/core/app/JobIntentService$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/JobIntentService$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/job/JobWorkItem;

.field final synthetic b:Landroidx/core/app/JobIntentService$e;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService$e;Landroid/app/job/JobWorkItem;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    iget-object v0, v0, Landroidx/core/app/JobIntentService$e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    iget-object v1, v1, Landroidx/core/app/JobIntentService$e;->c:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, p0}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
