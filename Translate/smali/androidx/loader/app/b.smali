.class Landroidx/loader/app/b;
.super Landroidx/loader/app/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/s;

.field private final b:Landroidx/loader/app/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/s;Landroidx/lifecycle/w0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/loader/app/a;-><init>()V

    iput-object p1, p0, Landroidx/loader/app/b;->a:Landroidx/lifecycle/s;

    invoke-static {p2}, Landroidx/loader/app/b$a;->f(Landroidx/lifecycle/w0;)Landroidx/loader/app/b$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/loader/app/b;->b:Landroidx/loader/app/b$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/loader/app/b;->b:Landroidx/loader/app/b$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/loader/app/b$a;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Landroidx/loader/app/b;->b:Landroidx/loader/app/b$a;

    invoke-virtual {p0}, Landroidx/loader/app/b$a;->g()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/loader/app/b;->a:Landroidx/lifecycle/s;

    invoke-static {p0, v0}, Lc0/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
