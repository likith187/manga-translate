.class public final synthetic Lr7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr7/d;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lo7/c;


# direct methods
.method public synthetic constructor <init>(Lr7/d;Landroid/content/Context;Lo7/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/b;->a:Lr7/d;

    iput-object p2, p0, Lr7/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lr7/b;->c:Lo7/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr7/b;->a:Lr7/d;

    iget-object v1, p0, Lr7/b;->b:Landroid/content/Context;

    iget-object p0, p0, Lr7/b;->c:Lo7/c;

    invoke-static {v0, v1, p0}, Lr7/d;->a(Lr7/d;Landroid/content/Context;Lo7/c;)V

    return-void
.end method
