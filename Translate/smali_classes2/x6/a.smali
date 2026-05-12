.class public final synthetic Lx6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lx6/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lx6/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6/a;->a:Lx6/b;

    iput-object p2, p0, Lx6/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lx6/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lx6/a;->a:Lx6/b;

    iget-object v1, p0, Lx6/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lx6/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lx6/b;->c(Lx6/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
