.class Ln4/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ln4/a;


# direct methods
.method constructor <init>(Ln4/a;)V
    .locals 0

    iput-object p1, p0, Ln4/a$a;->a:Ln4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Ln4/a$a;->a:Ln4/a;

    invoke-static {p0, p1}, Ln4/a;->u(Ln4/a;Landroid/view/View;)V

    return-void
.end method
