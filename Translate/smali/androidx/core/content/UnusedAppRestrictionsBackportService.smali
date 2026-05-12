.class public abstract Landroidx/core/content/UnusedAppRestrictionsBackportService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportService$a;

    invoke-direct {v0, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportService$a;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportService;)V

    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService;->a:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;

    return-void
.end method


# virtual methods
.method protected abstract a(Lr/f;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService;->a:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;

    return-object p0
.end method
