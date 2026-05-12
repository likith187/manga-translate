.class final Lx2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lx2/b$b;

.field private static final b:Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx2/b$b;

    invoke-direct {v0}, Lx2/b$b;-><init>()V

    sput-object v0, Lx2/b$b;->a:Lx2/b$b;

    const-string v0, "logRequest"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$b;->b:Lq4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lx2/j;

    check-cast p2, Lq4/e;

    invoke-virtual {p0, p1, p2}, Lx2/b$b;->b(Lx2/j;Lq4/e;)V

    return-void
.end method

.method public b(Lx2/j;Lq4/e;)V
    .locals 0

    sget-object p0, Lx2/b$b;->b:Lq4/c;

    invoke-virtual {p1}, Lx2/j;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    return-void
.end method
