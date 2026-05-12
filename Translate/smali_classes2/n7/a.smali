.class public final synthetic Ln7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/g;


# instance fields
.field public final synthetic a:Lo7/f;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lo7/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/a;->a:Lo7/f;

    iput-object p2, p0, Ln7/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln7/a;->a:Lo7/f;

    iget-object p0, p0, Ln7/a;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Ln7/b;->a(Lo7/f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
