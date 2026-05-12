.class final Landroidx/core/app/JobIntentService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/JobIntentService$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/content/Intent;

.field final b:I

.field final synthetic c:Landroidx/core/app/JobIntentService;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/JobIntentService$c;->c:Landroidx/core/app/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/core/app/JobIntentService$c;->a:Landroid/content/Intent;

    iput p3, p0, Landroidx/core/app/JobIntentService$c;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/core/app/JobIntentService$c;->c:Landroidx/core/app/JobIntentService;

    iget p0, p0, Landroidx/core/app/JobIntentService$c;->b:I

    invoke-virtual {v0, p0}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroidx/core/app/JobIntentService$c;->a:Landroid/content/Intent;

    return-object p0
.end method
