.class public final synthetic Ls7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/g;


# instance fields
.field public final synthetic a:Landroid/content/pm/PackageInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls7/c;->a:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls7/c;->a:Landroid/content/pm/PackageInfo;

    invoke-static {p0}, Ls7/d;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
