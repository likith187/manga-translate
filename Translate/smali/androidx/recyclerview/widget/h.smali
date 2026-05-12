.class public final synthetic Landroidx/recyclerview/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/COUIRecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->H(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    return-void
.end method
