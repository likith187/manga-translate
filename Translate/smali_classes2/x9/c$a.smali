.class Lx9/c$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lx9/c;


# direct methods
.method constructor <init>(Lx9/c;)V
    .locals 0

    iput-object p1, p0, Lx9/c$a;->a:Lx9/c;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lx9/c$c;
    .locals 0

    new-instance p0, Lx9/c$c;

    invoke-direct {p0}, Lx9/c$c;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lx9/c$a;->a()Lx9/c$c;

    move-result-object p0

    return-object p0
.end method
