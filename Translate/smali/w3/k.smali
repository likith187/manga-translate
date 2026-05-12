.class public abstract Lw3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw3/y;

    invoke-direct {v0}, Lw3/y;-><init>()V

    sput-object v0, Lw3/k;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lw3/x;

    invoke-direct {v0}, Lw3/x;-><init>()V

    sput-object v0, Lw3/k;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
