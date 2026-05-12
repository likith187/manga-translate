.class public abstract Lv7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static e:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/ThreadLocal;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field private final d:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lv7/a;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lv7/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lv7/a;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lv7/a;->c:Z

    return-void
.end method
