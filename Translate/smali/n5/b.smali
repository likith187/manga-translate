.class public final synthetic Ln5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Ln5/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ln5/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/b;->a:Ln5/c;

    iput-object p2, p0, Ln5/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Ln5/b;->a:Ln5/c;

    iget-object p0, p0, Ln5/b;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Ln5/c;->a(Ln5/c;Ljava/lang/String;)V

    return-void
.end method
