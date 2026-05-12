.class public Ll5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/epona/f;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ll5/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ll5/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lp5/a;
    .locals 0

    iget-object p0, p0, Ll5/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/heytap/epona/b;
    .locals 0

    iget-object p0, p0, Ll5/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
