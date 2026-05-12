.class public final synthetic Ld2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ld2/c;


# direct methods
.method public synthetic constructor <init>(Ld2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/a;->a:Ld2/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Ld2/a;->a:Ld2/c;

    invoke-static {p0, p1, p2}, Ld2/c;->a(Ld2/c;Landroid/content/DialogInterface;I)V

    return-void
.end method
