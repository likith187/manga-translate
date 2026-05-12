.class public final Lz5/c$a$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz5/c$a;->invoke()Lz5/c$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static final a()V
    .locals 0

    invoke-static {}, Lz5/c;->m()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lz5/b;

    invoke-direct {p1}, Lz5/b;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
