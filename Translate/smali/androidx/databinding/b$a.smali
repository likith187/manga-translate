.class Landroidx/databinding/b$a;
.super Landroidx/databinding/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/databinding/b;


# direct methods
.method constructor <init>(Landroidx/databinding/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/databinding/b$a;->a:Landroidx/databinding/b;

    invoke-direct {p0}, Landroidx/databinding/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/databinding/e;I)V
    .locals 0

    iget-object p0, p0, Landroidx/databinding/b$a;->a:Landroidx/databinding/b;

    invoke-virtual {p0}, Landroidx/databinding/a;->notifyChange()V

    return-void
.end method
