.class La0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/a;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La0/g$c;

.field final synthetic b:Landroid/graphics/Typeface;

.field final synthetic c:La0/a;


# direct methods
.method constructor <init>(La0/a;La0/g$c;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, La0/a$a;->c:La0/a;

    iput-object p2, p0, La0/a$a;->a:La0/g$c;

    iput-object p3, p0, La0/a$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, La0/a$a;->a:La0/g$c;

    iget-object p0, p0, La0/a$a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, La0/g$c;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
