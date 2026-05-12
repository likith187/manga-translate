.class public final Lt0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls0/c$b;)Ls0/c;
    .locals 2

    new-instance p0, Lt0/b;

    iget-object v0, p1, Ls0/c$b;->a:Landroid/content/Context;

    iget-object v1, p1, Ls0/c$b;->b:Ljava/lang/String;

    iget-object p1, p1, Ls0/c$b;->c:Ls0/c$a;

    invoke-direct {p0, v0, v1, p1}, Lt0/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ls0/c$a;)V

    return-object p0
.end method
