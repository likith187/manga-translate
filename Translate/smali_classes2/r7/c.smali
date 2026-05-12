.class public final synthetic Lr7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr7/d;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lr7/d;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/c;->a:Lr7/d;

    iput-object p2, p0, Lr7/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr7/c;->a:Lr7/d;

    iget-object p0, p0, Lr7/c;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lr7/d;->b(Lr7/d;Landroid/content/Context;)V

    return-void
.end method
