.class Landroidx/loader/app/b$a;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final d:Landroidx/lifecycle/u0$c;


# instance fields
.field private b:Landroidx/collection/j;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/loader/app/b$a$a;

    invoke-direct {v0}, Landroidx/loader/app/b$a$a;-><init>()V

    sput-object v0, Landroidx/loader/app/b$a;->d:Landroidx/lifecycle/u0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v0, Landroidx/collection/j;

    invoke-direct {v0}, Landroidx/collection/j;-><init>()V

    iput-object v0, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/app/b$a;->c:Z

    return-void
.end method

.method static f(Landroidx/lifecycle/w0;)Landroidx/loader/app/b$a;
    .locals 2

    new-instance v0, Landroidx/lifecycle/u0;

    sget-object v1, Landroidx/loader/app/b$a;->d:Landroidx/lifecycle/u0$c;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/w0;Landroidx/lifecycle/u0$c;)V

    const-class p0, Landroidx/loader/app/b$a;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/u0;->b(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Landroidx/loader/app/b$a;

    return-object p0
.end method


# virtual methods
.method protected d()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/s0;->d()V

    iget-object v0, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    invoke-virtual {v0}, Landroidx/collection/j;->i()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    invoke-virtual {p0}, Landroidx/collection/j;->b()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/collection/j;->j(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    invoke-virtual {p2}, Landroidx/collection/j;->i()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Loaders:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "    "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    invoke-virtual {p2}, Landroidx/collection/j;->i()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroidx/collection/j;->j(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    invoke-virtual {p0, p4}, Landroidx/collection/j;->g(I)I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    invoke-virtual {v0}, Landroidx/collection/j;->i()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/loader/app/b$a;->b:Landroidx/collection/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/collection/j;->j(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
