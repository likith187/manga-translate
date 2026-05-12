.class public final synthetic Lp7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/g;


# instance fields
.field public final synthetic a:Landroid/os/DeadObjectException;


# direct methods
.method public synthetic constructor <init>(Landroid/os/DeadObjectException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp7/d;->a:Landroid/os/DeadObjectException;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp7/d;->a:Landroid/os/DeadObjectException;

    invoke-static {p0}, Lp7/l;->i(Landroid/os/DeadObjectException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
