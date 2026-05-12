.class public final synthetic Lo5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lo5/b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lo5/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/a;->a:Lo5/b;

    iput-object p2, p0, Lo5/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lo5/a;->a:Lo5/b;

    iget-object p0, p0, Lo5/a;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lo5/b;->a(Lo5/b;Ljava/lang/String;)V

    return-void
.end method
