.class La0/h$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/h$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc0/a;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:La0/h$c;


# direct methods
.method constructor <init>(La0/h$c;Lc0/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La0/h$c$a;->c:La0/h$c;

    iput-object p2, p0, La0/h$c$a;->a:Lc0/a;

    iput-object p3, p0, La0/h$c$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, La0/h$c$a;->a:Lc0/a;

    iget-object p0, p0, La0/h$c$a;->b:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lc0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
