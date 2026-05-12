.class public final synthetic Lu6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lu6/d;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lu6/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/c;->a:Lu6/d;

    iput-object p2, p0, Lu6/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lu6/c;->a:Lu6/d;

    iget-object p0, p0, Lu6/c;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lu6/d;->a(Lu6/d;Ljava/lang/String;)V

    return-void
.end method
