.class Landroidx/appcompat/app/AppCompatActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b;


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

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatActivity$b;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatActivity$b;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->r()V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatActivity$b;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lq0/e;

    move-result-object p0

    const-string v0, "androidx:appcompat"

    invoke-virtual {p0, v0}, Lq0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/f;->w(Landroid/os/Bundle;)V

    return-void
.end method
