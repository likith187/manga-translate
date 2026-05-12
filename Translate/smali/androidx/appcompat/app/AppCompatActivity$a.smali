.class Landroidx/appcompat/app/AppCompatActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatActivity$a;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveState()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatActivity$a;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->A(Landroid/os/Bundle;)V

    return-object v0
.end method
